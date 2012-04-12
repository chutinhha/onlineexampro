using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Learning
{
    public class ElearningHelper
    {
        private static object key = new object();
        public static ELearningDataContext Context
        {
            get
            {
                if (HttpContext.Current.Items.Contains(key) == false)
                {
                    var obj = new ELearningDataContext();
                    return obj;
                }
                else
                {
                    return (ELearningDataContext)HttpContext.Current.Items[key];
                }
            }
        }
    }
}