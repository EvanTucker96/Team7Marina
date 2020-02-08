using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.SessionState;

namespace MarinaRemake.Utility
{
    public static class Util
    {
        // Hash
        private static byte[] HashPassword(string password)
        {
            var provider = new SHA1CryptoServiceProvider();
            var encoding = new UnicodeEncoding();
            return provider.ComputeHash(encoding.GetBytes(password));
        }
        // Encode hash to string
        private static string EncodeHash(byte[] hash) 
            => Encoding.UTF8.GetString(hash, 0, hash.Length);

        // Encrypt
        public static string EncryptPassword(string password)
        {
            var hash = HashPassword(password);
            return EncodeHash(hash);
        }
        public static string Encrypt(string password) 
            => EncryptPassword(password);

        // Authentication
        public static bool IsAuthenticated(HttpSessionState session) 
            => session["IsAuthenticated"] != null && (bool)session["IsAuthenticated"];
    }
}