﻿namespace WebApp.Infrastructure.CustomMiddleware
{
    using System;

    //public static class ApplicationBuilderExtensions
    //{
    //    public static IApplicationBuilder UseAntiforgeryTokens(this IApplicationBuilder app)
    //    {
    //        return app.UseMiddleware<ValidateAntiForgeryTokenMiddleware>();
    //    }
    //}

    //public class ValidateAntiForgeryTokenMiddleware
    //{
    //    private readonly RequestDelegate _next;
    //    private readonly IAntiforgery _antiforgery;

    //    public ValidateAntiForgeryTokenMiddleware(RequestDelegate next, IAntiforgery antiforgery)
    //    {
    //        _next = next;
    //        _antiforgery = antiforgery;
    //    }

    //    public async Task Invoke(HttpContext context)
    //    {
    //        if (HttpMethods.IsPost(context.Request.Method))
    //        {
    //            await _antiforgery.ValidateRequestAsync(context);
    //        }

    //        await _next(context);
    //    }
    //}
}