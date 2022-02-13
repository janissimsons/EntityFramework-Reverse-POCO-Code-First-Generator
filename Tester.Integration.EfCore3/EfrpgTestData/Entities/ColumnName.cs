// <auto-generated>
// ReSharper disable All

using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Tester.Integration.EfCore3
{
    // ColumnNames
    /// <summary>
    /// This is to document the
    /// table with poor column name choices
    /// </summary>
    public class ColumnName
    {
        public int C36 { get; set; } // $ (Primary key)
        public int? C37 { get; set; } // %
        public int? C163 { get; set; } // £

        /// <summary>
        /// Multi
            ///        Line
            ///    Comment
        /// </summary>
        public int? C38Test36 { get; set; } // &test$
        public int? Abc4792 { get; set; } // abc/\
        public int? Joe46Bloggs { get; set; } // joe.bloggs
        public int? SnakeCase { get; set; } // snake-case
        public string DefaultTest { get; set; } // default_test (length: 20)
        public DateTime SomeDate { get; set; } // someDate
        public string Obs { get; set; } // Obs (length: 20)
        public string Slash1 { get; set; } // Slash1 (length: 20)
        public string Slash2 { get; set; } // Slash2 (length: 20)
        public string Slash3 { get; set; } // Slash3 (length: 20)
        public int? @Static { get; set; } // static
        public int? @Readonly { get; set; } // readonly
        public int? C123Hi { get; set; } // 123Hi
        public float? Afloat { get; set; } // afloat
        public double? Adouble { get; set; } // adouble
        public decimal? Adecimal { get; set; } // adecimal

        public ColumnName()
        {
            DefaultTest = "";
            SomeDate = DateTime.Now;
            Obs = "[{\"k\":\"en\",\"v\":\"\"},{\"k\":\"pt\",\"v\":\"\"}]";
            Slash1 = @"\";
            Slash2 = @"\\";
            Slash3 = @"\\\";
            Afloat = 1.23f;
            Adouble = 999.0;
        }
    }

}
// </auto-generated>