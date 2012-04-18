C# Examples
-----------

.. code-block:: c

  using System;
  using System.Collections.Generic;
  using System.Linq;
  using System.Text;
  using System.Net;
  using System.IO;
  using System.Security.Cryptography;

  namespace APIExamples
  {
      class APIExample
      {
          static void Main(string[] args)
          {
              String accessKey = "<your access key>";
              String secretKey = "<your secret key>";
              String userAgent = "dotnet-example";
              TimeSpan ts = (DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0));
              String timestamp = ""+ Math.Round(ts.TotalSeconds*1000);


              String command = "geography/Cloud";


              String urlStub = "/api/enstratus/2011-07-15/";
              String url = "http://api.enstratus.com"+urlStub+command;

              String toSign = accessKey + ":GET:" + urlStub + command + ":" + timestamp + ":" + userAgent;
              //Console.WriteLine(toSign);
              String signature = sign(secretKey, toSign);
              //Console.WriteLine(signature);

              HttpWebRequest req = WebRequest.Create(url)
                                   as HttpWebRequest;
              
              req.UserAgent = userAgent;
              req.Headers.Add("x-es-details", "basic");
              req.Headers.Add("x-es-with-perms", "false");
              req.Headers.Add("x-esauth-access", accessKey);
              req.Headers.Add("x-esauth-signature", signature);
              req.Headers.Add("x-esauth-timestamp", timestamp);
              try
              {
                  WebResponse response = req.GetResponse();

                  // Display the status.
                  Console.WriteLine(((HttpWebResponse)response).StatusDescription);
                  // Get the stream containing content returned by the server.
                  Stream dataStream = response.GetResponseStream();
                  // Open the stream using a StreamReader for easy access.
                  StreamReader reader = new StreamReader(dataStream);
                  // Read the content.
                  string responseFromServer = reader.ReadToEnd();
                  // Display the content.
                  Console.WriteLine(responseFromServer);
                  // Clean up the streams.
                  reader.Close();
                  dataStream.Close();
                  response.Close();
              }
              catch (WebException we)
              {
                  Console.WriteLine(we);
              }

              Console.WriteLine("\nPress any key to quit...");
              Console.ReadKey();
          }

          static  String sign(String key, String stringToSign) {
              System.Text.ASCIIEncoding encoding = new System.Text.ASCIIEncoding();

              byte[] keyByte = encoding.GetBytes(key);
              HMACSHA256 hmacsha256 = new HMACSHA256(keyByte);

              return Convert.ToBase64String(hmacsha256.ComputeHash(encoding.GetBytes(stringToSign)));
        }
      }
  }
