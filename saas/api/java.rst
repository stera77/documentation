Java Examples
-------------

List Cloud Accounts
~~~~~~~~~~~~~~~~~~~

.. code-block:: java

  import java.io.BufferedReader;
  import java.io.InputStreamReader;
  import javax.crypto.Mac; 
  import javax.crypto.spec.SecretKeySpec;
  import org.apache.commons.codec.binary.Base64;
  import org.apache.commons.httpclient.*;
  import org.apache.commons.httpclient.methods.GetMethod;

  public class APIHelper {
    private static final String ACCESS_KEY="<your Access Key>";
    private static final String SECRET_KEY="<your Secret Key>";
    private static final String API_ENDPOINT="http://api.enstratus.com";

    private static final String DEFAULT_USER_AGENT="testJava"; 
    
    public static void main(String[] args) {
      if (args.length<1) {
        System.out.println("Usage:   APIHelper <URI to sign> [<method>]");
        System.out.println("Example: APIHelper /api/enstratus/2011-02-24/geography/Cloud");
        System.exit(1);
      }
      String toSign = args[0];
      String methodType="GET";
      long timestamp = System.currentTimeMillis();


      if (args.length>1) {
        methodType=args[1].toUpperCase();
      }
      
      try {
        String fullUrl = API_ENDPOINT+toSign;
        toSign = ACCESS_KEY+":"+methodType+":"+toSign+":"+timestamp+":"+DEFAULT_USER_AGENT;
        String signature = sign(SECRET_KEY.getBytes(), toSign);
        
        System.out.print("\nconnecting to "+fullUrl+"...");
        HttpClient client = new HttpClient();
        GetMethod method = new GetMethod(fullUrl);
        method.addRequestHeader("User-Agent", DEFAULT_USER_AGENT);  
        method.addRequestHeader("x-es-details", "basic");
        method.addRequestHeader("x-es-with-perms", "false");
        method.addRequestHeader("x-esauth-access", ACCESS_KEY);
        method.addRequestHeader("x-esauth-signature", signature);
        method.addRequestHeader("x-esauth-timestamp", ""+timestamp);
        //method.setQueryString("regionId=25");
        int statusCode = client.executeMethod(method);
        System.out.println("Done.  (status code: "+statusCode +")\n");
        
        BufferedReader in = new BufferedReader(new InputStreamReader(method.getResponseBodyAsStream()));
        String inputLine;
        while ((inputLine = in.readLine()) != null) 
          System.out.println(inputLine);
        in.close();

      } catch (Exception e) {
        System.out.println("Exception: "+e);
      }

    }
    
    static private String sign(byte[] key, String stringToSign) throws Exception { 
      Mac mac = Mac.getInstance("HmacSHA256");
      mac.init(new SecretKeySpec(key, "HmacSHA256")); 
      return new String(Base64.encodeBase64(mac.doFinal(stringToSign.getBytes("utf-8"))));
    }
  }
