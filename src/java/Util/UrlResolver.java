package Util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;

public class UrlResolver {
    static Properties pp = new Properties();
public  void load(String x) throws IOException {
    File ff=new File(x);
    pp.load(new FileReader(ff));

}
public String getUrl(String token)
{

    
    return pp.getProperty(token);
}


}
