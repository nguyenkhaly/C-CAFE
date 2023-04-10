using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using static System.Net.Mime.MediaTypeNames;
using System.Data;
using System.Runtime.InteropServices;
using Microsoft.IdentityModel.Protocols;

namespace DAL
{
    public class DBConnect
    {
        static string connstr = ConfigurationManager.ConnectionStrings["QLBH"].ToString();
        protected SqlConnection _conn = new SqlConnection(connstr);
        
        


    }
}
