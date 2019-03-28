using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApp.Infrastructure
{
   
    public sealed class GoodWorkVerbs
    {
        // A private constructor to restrict the object creation from outside
        private GoodWorkVerbs()
        {
        }

        private static Dictionary<int, string> goodJobQuotesData = new Dictionary<int, string>();


        public static void RegisterGoodJobVerbs()
        {
            List<string> verbs = new List<string>();
            verbs.Add("That’s good! Excellent! Wonderful!");
            verbs.Add("Good work! Superb!");
          
            verbs.Add("Great! Nice going.");
            verbs.Add("Fantastic! ");
            verbs.Add("Congratulations! ");
            verbs.Add("Tremendous! Good going.");
            verbs.Add("Marvelous! I like that.");
          
            verbs.Add("Beautiful Job! ");
          
            verbs.Add("Good job! ");
           
            verbs.Add("Terrific Work! ");
          
            verbs.Add("Superior work!");
            verbs.Add("First class work!");
            verbs.Add("Unbelievable Work!");
            verbs.Add("You always amaze me!");
            verbs.Add("Keep up the great work!");
          
            verbs.Add("Brilliant job!");
            verbs.Add("Good work, as always!");

            int i = 0;

            foreach (var item in verbs)
            {
                GoodWorkVerbs.goodJobQuotesData[i] = item;
                i = i + 1;
            }
        }


        public static string GetGoodJobVerb()
        {
            int verbCount = GoodWorkVerbs.goodJobQuotesData.Count;

            Random rnd = new Random();
            int verbIndex = rnd.Next(0, verbCount);  // creates a number between 1 and 12

            // Omitted: Check if key exists
            return GoodWorkVerbs.goodJobQuotesData[verbIndex];
        }

        // A private static instance of the same class
        private static GoodWorkVerbs instance = null;
        private static readonly object _lock = new object();
        public static GoodWorkVerbs GetInstance()
        {
            lock (_lock)
            {
                // create the instance only if the instance is null
                if (instance == null)
                {
                    instance = new GoodWorkVerbs();
                }
                // Otherwise return the already existing instance
                return instance;
            }

        }
    }
}
