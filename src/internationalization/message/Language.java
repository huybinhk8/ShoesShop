package internationalization.message;

import java.util.Locale;
import java.util.ResourceBundle;

public class Language {
	public static ResourceBundle bundle;
	
	public static String getBundles(String key, Locale locale){
		if(locale == null){
			bundle = ResourceBundle.getBundle("internationalization.message.MessageBundle", new Locale("vi", "VN"));
		}else{
			bundle = ResourceBundle.getBundle("internationalization.message.MessageBundle", locale);
		}
		return bundle.getString(key);
	}
	public static void main(String[] args) {
		System.out.println("eng");
		System.out.println(getBundles("title.home", new Locale("en", "US")));
		System.out.println("vi");
		System.out.println(getBundles("title.home", new Locale("vi", "VN")));
	}
}
