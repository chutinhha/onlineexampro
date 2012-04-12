using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using System.Security.Cryptography;
using System.IO;

public class EncryptionHelper
{
    # region Function to encrypt QueryString
    public static string EncryptText(string pass)
    {
        return Encrypt(pass, "&%#@?,:*");
    }
    #endregion

    #region EncryptQuery string
    /// <summary>
    ///   Encrypts  a particular string with a specific Key
    /// </summary>
    /// <param name="stringToEncrypt"></param>
    /// <param name="encryptionKey"></param>
    /// <returns></returns>

    public static string Encrypt(string stringToEncrypt, string encryptionKey)
    {
        byte[] key = { };
        byte[] IV = { 10, 20, 30, 40, 50, 60, 70, 80 };
        byte[] inputByteArray; //Convert.ToByte(stringToEncrypt.Length) 

        try
        {
            key = Encoding.UTF8.GetBytes(encryptionKey.Substring(0, 8));
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();
            inputByteArray = Encoding.UTF8.GetBytes(stringToEncrypt);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(key, IV), CryptoStreamMode.Write);
            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();
            return Convert.ToBase64String(ms.ToArray());
        }
        catch (System.Exception ex)
        {
            return (string.Empty);
        }
    }
    #endregion

    #region Function decrypt Querystring
    public static string DecryptText(String pass)
    {
        return Decrypt(pass, "&%#@?,:*");
    }
    #endregion

    #region Decrypt QueryString
    /// <summary>
    /// Decrypts  a particular string with a specific Key
    /// </summary>
    public static string Decrypt(string stringToDecrypt, string sEncryptionKey)
    {
        byte[] key = { };
        byte[] IV = { 10, 20, 30, 40, 50, 60, 70, 80 };
        byte[] inputByteArray = new byte[stringToDecrypt.Length];
        try
        {
            key = Encoding.UTF8.GetBytes(sEncryptionKey.Substring(0, 8));
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();
            inputByteArray = Convert.FromBase64String(stringToDecrypt);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(key, IV), CryptoStreamMode.Write);
            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();
            Encoding encoding = Encoding.UTF8;
            return encoding.GetString(ms.ToArray());
        }
        catch (System.Exception ex)
        {
            return (string.Empty);
        }
    }
    #endregion
}