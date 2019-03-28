using Castle.DynamicProxy;
using NLog;
using NLog.Config;
using NLog.Targets;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace CrossCutting.Logging
{
    public class ServiceClassLoggingInterceptor : IInterceptor
    {
        private readonly ILogger _logger;

        public ServiceClassLoggingInterceptor(ILogger logger)
        {
            this._logger = logger;
        }

        public void Intercept(IInvocation invocation)
        {
            var codeBase = invocation.TargetType.Module.Assembly.CodeBase;
            var invocationTarget = invocation.InvocationTarget.ToString();
            var methodName = invocation.Method.Name;

            try
            {

                var logMethodStartEvent = LogEventInfo.Create(LogLevel.Info, invocationTarget,
                                            "Executing method " + methodName);

                logMethodStartEvent.SetCallerInfo(invocationTarget, methodName + " - "
                                                                        , codeBase, 0);
                _logger.Log(logMethodStartEvent);

                invocation.Proceed();

                var method = invocation.MethodInvocationTarget;

                var isAsync = method.GetCustomAttribute(typeof(AsyncStateMachineAttribute)) != null;

                if (isAsync && typeof(Task).IsAssignableFrom(method.ReturnType))
                {
                    invocation.ReturnValue = InterceptAsync((dynamic)invocation.ReturnValue, _logger, invocationTarget, methodName, codeBase);
                }

                if (!isAsync)
                {
                    var logMethodEndEvent = LogEventInfo.Create(LogLevel.Info, invocationTarget,

                                                          "Method Excuted Successfuly " + methodName);

                    logMethodEndEvent.SetCallerInfo(invocationTarget, methodName + " - "
                                                                            , codeBase, 0);

                    _logger.Log(logMethodEndEvent);
                }
            }

            catch (Exception ex)
            {
                var logMethodEndEvent = LogEventInfo.Create(LogLevel.Error, invocationTarget,

                                ex, null, "Error Occured on " + methodName +

                                " | Trace : " + ex.InnerException + ex.Message + ex.StackTrace
                                );

                logMethodEndEvent.SetCallerInfo(invocationTarget, methodName + " - "
                                                                        , codeBase, 0);

                _logger.Log(logMethodEndEvent);
                throw ;
            }
        }

        private static async Task InterceptAsync(Task task, ILogger _logger, string invocationTarget, string methodName, string codeBase)
        {
            try
            {
                await task.ConfigureAwait(false);

                var logMethodEndEvent = LogEventInfo.Create(LogLevel.Info, invocationTarget,
                                                        "Method Excuted Successfuly " + methodName);

                logMethodEndEvent.SetCallerInfo(invocationTarget, methodName + " - "
                                                                        , codeBase, 0);
                _logger.Log(logMethodEndEvent);
            }

            catch (Exception ex)
            {
                var logMethodEndEvent = LogEventInfo.Create(LogLevel.Error, invocationTarget,

                               ex, null, "Error Occured on " + methodName +

                               " | Trace : " + ex.InnerException + ex.Message + ex.StackTrace

                               );
                logMethodEndEvent.SetCallerInfo(invocationTarget, methodName + " - "
                                                                        , codeBase, 0);
                _logger.Log(logMethodEndEvent);
                throw ;
            }
        }

        private static async Task<T> InterceptAsync<T>(Task<T> task, ILogger _logger, string invocationTarget, string methodName, string codeBase)
        {
            try
            {

                T result = await task.ConfigureAwait(false);

                var logMethodEndEvent = LogEventInfo.Create(LogLevel.Info, invocationTarget,

                                                        "Method Excuted Successfuly " + methodName);

                logMethodEndEvent.SetCallerInfo(invocationTarget, methodName + " - "

                                                                        , codeBase, 0);

                _logger.Log(logMethodEndEvent);

                return result;
            }

            catch (Exception ex)
            {
                var logMethodEndEvent = LogEventInfo.Create(LogLevel.Error, invocationTarget,

                              ex, null, "Error Occured on " + methodName +

                              " | Trace : " + ex.InnerException + ex.Message + ex.StackTrace

                              );
                logMethodEndEvent.SetCallerInfo(invocationTarget, methodName + " - "

                                                                        , codeBase, 0);

                _logger.Log(logMethodEndEvent);

                throw ;
            }

        }
    }
}

