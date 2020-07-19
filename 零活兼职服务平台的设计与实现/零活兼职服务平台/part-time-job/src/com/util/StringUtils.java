package com.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * �ַ���������
 * @author Administrator
 *
 */
public class StringUtils {
	/**
	   * ǰ����ʶ
	  */
	  public static final int BEFORE = 1;

	  /**
	   * ��̱�ʶ
	  */
	  public static final int AFTER = 2;

	  public static final String DEFAULT_PATH_SEPARATOR = ",";
	  
	  
//	  public static final String CHARSET = "UTF-8";


	  /**
	   * ��һ���м�����ŷָ������ַ���ת��ΪArrayList����
	   * @param str ��ת���ķ�������
	   * @return ArrayList����
	   */
	  public static ArrayList strToArrayList(String str) {
	    return strToArrayListManager(str, DEFAULT_PATH_SEPARATOR);
	  }

	  /**
	   * ���ַ������󰴸����ķָ���separatorת��ΪArrayList����
	   * @param str ��ת�����ַ�������
	   * @param separator �ַ��ͷָ���
	   * @return ArrayList����
	   */
	  public static ArrayList<String> strToArrayList(String str, String separator) {
	    return strToArrayListManager(str, separator);
	  }

	  private static ArrayList<String> strToArrayListManager(String str,String separator) {

	    StringTokenizer strTokens = new StringTokenizer(str, separator);
	    ArrayList<String> list = new ArrayList<String>();

	    while (strTokens.hasMoreTokens()) {
	      list.add(strTokens.nextToken().trim());
	    }

	    return list;
	  }

	  /**
	   * ��һ���м�����ŷָ������ַ���ת��Ϊ�ַ����������
	   * @param str ��ת���ķ�������
	   * @return �ַ�������
	   */
	  public static String[] strToStrArray(String str) {
	    return strToStrArrayManager(str, DEFAULT_PATH_SEPARATOR);
	  }

	  /**
	   * ���ַ������󰴸����ķָ���separatorת��Ϊ�ַ����������
	   * @param str ��ת���ķ�������
	   * @param separator �ַ��ͷָ���
	   * @return �ַ�������
	   */
	  public static String[] strToStrArray(String str, String separator) {
	    return strToStrArrayManager(str, separator);
	  }

	  private static String[] strToStrArrayManager(
	      String str,
	      String separator) {

	    StringTokenizer strTokens = new StringTokenizer(str, separator);
	    String[] strArray = new String[strTokens.countTokens()];
	    int i = 0;

	    while (strTokens.hasMoreTokens()) {
	      strArray[i] = strTokens.nextToken().trim();
	      i++;
	    }

	    return strArray;
	  }

	  public static Set<String> strToSet(String str){
		  return strToSet(str, DEFAULT_PATH_SEPARATOR);
	  }
	  
	  public static Set<String> strToSet(String str, String separator){
		  String[] values = strToStrArray(str, separator);
		  Set<String> result = new LinkedHashSet<String>();
		  for (int i = 0; i < values.length; i++) {
			  result.add(values[i]);
		}
		  return result;
	  }
	  
	  /**
	   * ��һ�����飬�ö��ŷָ���Ϊһ���ַ���
	 * @param array
	 * @return
	 */
	public static String ArrayToStr(Object[] array){
	      if(array == null || array.length <0) return null;
	      String str = "";
	      int _step = 0;
	      for(int i = 0; i<array.length; i++){
	         if(_step>0)
	             str += ",";
	         str += (String)array[i];
	          _step++;
	      }
	      return str;
	  }
	  
	public static String CollectionToStr(Collection<String> coll){
		StringBuffer sb = new StringBuffer();
		int i = 0;
		for (String string : coll) {
			if(i > 0)
				sb.append(",");
			i++;
			sb.append(string);
		}
		return sb.toString();
	}
	  
	  /**
	   * ת�������ַ����ı����ʽ
	   * @param inputString ��ת���ַ�������
	   * @param inencoding ��ת���ַ����ı����ʽ
	   * @param outencoding ׼��ת��Ϊ�ı����ʽ
	   * @return ָ���������ַ������ַ�������
	   */
	  public static String encodingTransfer(String inputString,String inencoding,String outencoding)
	  {
	    if (inputString==null || inputString.length() ==0) return inputString;
	    try
	    {
	      return new String( inputString.getBytes( outencoding), inencoding);
	    }
	    catch (Exception e)
	    {
	      return inputString;
	    }
	  }


	  /**
	   * ɾ���ַ�����ָ�����ַ�
	   * ֻҪ��delStrs�����г��ֵ��ַ���������inputString��Ҳ���ֶ��Ὣ����ɾ��
	   * @param inputString ����ɾ��������ַ���
	   * @param delStrs ��Ϊɾ���ַ��Ĳ������ݣ��ö��ŷָ������Ҫɾ�����ſ���������ַ����ټ�һ������
	   * @return ����һ����inputStringΪ��������delStrs�������ַ���
	   */
	  public static String delString(String inputString,String delStrs)
	  {
	    if (inputString==null || inputString.length() ==0)  return inputString;

	    String[] strs = strToStrArray(delStrs);
	    for(int i = 0 ;i <strs.length ; i++){
	      if(strs[i].equals(""))
	        inputString = inputString.replaceAll(" ","");
	      else
	      {
	        if(strs[i].compareTo("a")>=0)
	          inputString = replace(inputString,strs[i],"");
	        else
	          inputString = inputString.replaceAll("\\"+strs[i],"");
	      }
	    }
	    if(subCount(delStrs,",")>strs.length)
	      inputString = inputString.replaceAll("\\,","");

	    return inputString;
	  }

	  /**
	   * ȥ����߶���Ŀո�
	   * @param value ��ȥ��߿ո���ַ���
	   * @return ȥ����߿ո����ַ���
	   */
	  public static String trimLeft(String value) {
	    String result = value;
	    if(result == null) return result;
	    char ch[] = result.toCharArray();
	    int index = -1;
	    for(int i=0; i < ch.length ; i++) {
	      if(Character.isWhitespace(ch[i])) {
	        index = i;
	      }
	      else {
	        break;
	      }
	    }
	    if(index != -1) {
	      result = result.substring(index+1);
	    }
	    return result;
	  }

	  /**
	   * ȥ���ұ߶���Ŀո�
	   * @param value ��ȥ�ұ߿ո���ַ���
	   * @return ȥ���ұ߿ո����ַ���
	   */
	  public static String trimRight(String value) {
	    String result = value;
	    if(result == null) return result;
	    char ch[] = result.toCharArray();
	    int endIndex = -1;
	    for(int i=ch.length-1; i > -1; i--) {
	      if(Character.isWhitespace(ch[i])) {
	        endIndex = i;
	      }
	      else {
	        break;
	      }
	    }
	    if(endIndex != -1) {
	      result = result.substring(0, endIndex);
	    }
	    return result;
	  }


	  /**
	   * �ж�һ���ַ������Ƿ������һ���ַ���
	   * @param parentStr	����
	   * @param subStr	�Ӵ�
	   * @return ������������Ӵ������ݷ����棬���򷵻ؼ�
	   */
	  public static boolean isInclude(String parentStr, String subStr) {
		  return parentStr.indexOf(subStr) >= 0;
	  }


	  /**
	   * �ж�һ���ַ������Ƿ������һ���ַ���������κ�һ��
	   * @param parentStr	����
	   * @param subStrs	�Ӵ�����(�Զ��ŷָ����ַ���)
	   * @return ������������Ӵ������ݷ����棬���򷵻ؼ�
	   */
	  public static boolean isIncludes(String parentStr, String subStrs) {
	    String[] subStrArray = strToStrArray(subStrs);
	    for(int j = 0 ; j<subStrArray.length ; j++){
	      String subStr = subStrArray[j];
	      if(isInclude(parentStr,subStr))
	        return true;
	      else
	        continue;
	    }
	    return false;
	  }

	  /**
	   * �ж�һ�����ַ����ڸ������ظ����ֵĴ���
	   * @param parentStr	����
	   * @param subStr	�Ӵ�
	   * @return ���ַ����ڸ��ַ������صó��ֵĴ���
	   */
	  public static int subCount(String parentStr, String subStr) {
	    int count = 0;

	    for (int i = 0; i < (parentStr.length() - subStr.length());i++) {
	      String tempString = parentStr.substring(i, i + subStr.length());
	      if (subStr.equals(tempString)) {
	        count++;
	      }
	    }

	    return count;
	  }
	  
	  /**
	 * �õ����ַ����дӿ�ʼ�ַ�������ֹ�ַ����м���Ӵ� 
	 * @param parentStr ����
	 * @param startStr ��ʼ��
	 * @param endStr ��ֹ��
	 * @return ���ؿ�ʼ�����ֹ��֮����Ӵ�
	 */
	public static String subString(String parentStr, String startStr, String endStr){
	  		return parentStr.substring(parentStr.indexOf(startStr)+startStr.length(),parentStr.indexOf(endStr));
	  }
	
	/** �õ����ַ����дӿ�ʼ�ַ�������ֹ�ַ����м���Ӵ��ļ���
	 * @param parentStr ����
	 * @param startStr ��ʼ��
	 * @param endStr ��ֹ��
	 * @return ���ؿ�ʼ�����ֹ��֮����Ӵ��ļ���
	 */
	public static List<String> subStringList(String parentStr, String startStr, String endStr){
		List<String> result = new ArrayList<String>();
		List<String> elements = dividToList(parentStr, startStr, endStr);
		for (String element : elements) {
			if (!isIncludes(element, startStr) || !isIncludes(element, endStr)) 
				continue;
			result.add(subString(element,startStr,endStr));
		}
		return result;
		
	}

	  /**
	   * ��ָ����Stringת��ΪUnicode�ĵȼ�ֵ
	   *
	   * ����֪ʶ��
	   *   ���е�ת���ַ������� '\' ��ͷ�ĵڶ����ַ�
	   *   0-9  :�˽���
	   *   u    :��Unicodeת�⣬���ȹ̶�Ϊ6λ
	   *   Other:��Ϊ������ĸ�е�һ�� b,t,n,f,r,",\  �������㣬�����һ���������
	   *  �ṩ�˽���Ҳ��Ϊ�˺�C���Լ���.
	   * b,t,n,f,r ����Ϊ�����ַ�.���ϵ���˼Ϊ:�����������ķ�����ϣ����Щ��Ϣ��α���ʽ�����߱���ʾ.
	   * ������д�ڴ��������λ�ã�ֻҪת����ǺϷ���.
	   * ����:
	   * int c=0\u003b
	   * ����Ĵ�����Ա���ͨ������ͬ��int c=0; \u003bҲ����';'��Unicode����
	   *
	   * @param str ��ת��ΪUnicode�ĵȼ��ַ���
	   * @return Unicode���ַ���
	   */
	  public static String getUnicodeStr(String inStr){
	   char[] myBuffer = inStr.toCharArray();
	    StringBuffer sb = new StringBuffer();

	   for (int i = 0; i < inStr.length(); i++) {
		   //byte b = (byte) myBuffer[i];
		   short s = (short) myBuffer[i];
		   //String hexB = Integer.toHexString(b);
		   String hexS = Integer.toHexString(s);
		   /*
	    	//���Ϊ��д
	    	String hexB = Integer.toHexString(b).toUpperCase();
	    	String hexS = Integer.toHexString(s).toUpperCase();
	    	//print char
		    sb.append("char[");
		    sb.append(i);
		    sb.append("]='");
		    sb.append(myBuffer[i]);
		    sb.append("'\t");
	
		    //byte value
		    sb.append("byte=");
		    sb.append(b);
		    sb.append(" \\u");
		    sb.append(hexB);
		    sb.append('\t');
		    */

		    //short value
		    sb.append(" \\u");
		    sb.append(fillStr(hexS,"0",4,AFTER));
		    //sb.append('\t');
		    //Unicode Block
		    //sb.append(Character.UnicodeBlock.of(myBuffer[i]));
	   }

	    return sb.toString();

	  }


	  /**
	   *�ж�һ���ַ����Ƿ��ǺϷ���Java��ʶ��
	   * @param s	���жϵ��ַ���
	   * @return	�������s��һ���Ϸ���Java��ʶ�������棬���򷵻ؼ�
	   */
	  public static boolean isJavaIdentifier(String s){
	    if(s.length()==0 || Character.isJavaIdentifierStart(s.charAt(0)))
	      return false;
	    for(int i = 0;i<s.length();i++)
	      if(!Character.isJavaIdentifierPart(s.charAt(i)))
	        return false;
	    return true;
	  }



	  /**
	   *�滻�ַ����������������ַ�
	   * ����:  replaceAll("\com\hi\platform\base\\util",'\\','/');
	   * ���صĽ��Ϊ: /com/hi/platform/base/util
	   * @param str	���滻���ַ���
	   * @param oldchar ���滻���ַ�
	   * @param newchar �滻Ϊ���ַ�
	   * @return ��str�е�����oldchar�ַ�ȫ���滻Ϊnewchar,����������滻����ַ���
	   */
	  public static String replaceAll(String str,char oldchar,char newchar){
	    char[] chars = str.toCharArray();
	    for(int i = 0 ; i<chars.length;i++){
	      if(chars[i]==oldchar)
	        chars[i] = newchar;
	    }
	    return new String(chars);
	  }

	  /**
	   * ���inStr�ַ�����û�и���length�ĳ��ȣ�����fill��䣬��ָ��direction�ķ���
	   * ���inStr�ַ������ȴ���length��ֱ�ط���inStr����������
	   * @param inStr ��������ַ���
	   * @param fill �Ը��ַ�����Ϊ����ַ���
	   * @param length ����Ҫ��ĳ���
	   * @param direction ��䷽�������AFTER����ں��棬���������ǰ��
	   * @return ����һ��ָ������������ַ���
	   */
	  public static String fillStr(String inStr,String fill,int length,int direction){
	    if(inStr==null || inStr.length() > length || inStr.length()==0) return inStr;

	    StringBuffer tempStr = new StringBuffer("");
	    for (int i = 0 ; i<length-inStr.length() ; i++ ){
	      tempStr.append(fill);
	    }

	    if(direction == AFTER)
	      return new String(tempStr.toString()+inStr);
	    else
	      return new String(inStr+tempStr.toString());
	  }

	/**
	 * �ַ����滻
	 * @param str Դ�ַ���
	 * @param pattern ���滻���ַ���
	 * @param replace �滻Ϊ���ַ���
	 * @return
	 */
	public static String replace(String str, String pattern, String replace){
	    int s = 0;
	    int e = 0;
	    StringBuffer result = new StringBuffer();
	    while((e = str.indexOf(pattern,s)) >= 0){
	        result.append(str.substring(s,e));
	        result.append(replace);
	        s = e + pattern.length();
	    }
	    result.append(str.substring(s));
	        
	    return result.toString();
	}

/**
 * �ָ��ַ�����һ������
 * @param str
 * @param start
 * @param end
 * @return
 */
public static List<String> dividToList(String str, String start, String end) {
    if (str == null || str.length() == 0)
        return null;

    int s = 0;
    int e = 0;
    List<String> result = new ArrayList<String>();
    if (isInclude(str, start) && isInclude(str, end)) {
        while ((e = str.indexOf(start, s)) >= 0) {
            result.add(str.substring(s, e));
            s = str.indexOf(end, e) + end.length();
            result.add(str.substring(e, s));
        }
        if (s < str.length())
            result.add(str.substring(s));

        if (s == 0)
            result.add(str);
    } else
        result.add(str);

    return result;
}
	    

	/**
	 * ����ĸ��д
	 * @param string
	 * @return
	 */
	public static String upperFrist(String string){
		if(string == null)
			return null;
		String upper = string.toUpperCase();
		return upper.substring(0,1) + string.substring(1);
	}
	
	/**
	 * ����ĸСд
	 * @param string
	 * @return
	 */
	public static String lowerFrist(String string){
		if(string == null)
			return null;
		String lower = string.toLowerCase();
		return lower.substring(0,1) + string.substring(1);
	}
	
	public static String URLEncode(String string, String encode){
		try {
			return URLEncoder.encode(string, encode);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	  public static String DateToStr( Date date , String format){
	    SimpleDateFormat formatter = new SimpleDateFormat (format);
	    return formatter.format(date);
	  }
	
	  /**
	   * �Ը������ַ�����htmlת��
	 * @param string
	 * @return
	 */
	public static String escapeHtml(String string) {
	        if (string == null || string.length() == 0) {
	            return "";
	        }

	        char         b;
	        char         c = 0;
	        int          i;
	        int          len = string.length();
	        StringBuffer sb = new StringBuffer(len + 4);
	        String       t;

	        for (i = 0; i < len; i += 1) {
	            b = c;
	            c = string.charAt(i);
	            switch (c) {
	            case '\\':
	            case '"':
	                sb.append('\\');
	                sb.append(c);
	                break;
	            case '/':
	                if (b == '<') {
	                    sb.append('\\');
	                }
	                sb.append(c);
	                break;
	            case '\b':
	                sb.append("\\b");
	                break;
	            case '\t':
	                sb.append("\\t");
	                break;
	            case '\n':
	                sb.append("\\n");
	                break;
	            case '\f':
	                sb.append("\\f");
	                break;
	            case '\r':
	                sb.append("\\r");
	                break;
	            default:
	                if (c < ' ' || (c >= '\u0080' && c < '\u00a0') ||
	                               (c >= '\u2000' && c < '\u2100')) {
	                    t = "000" + Integer.toHexString(c);
	                    sb.append("\\u" + t.substring(t.length() - 4));
	                } else {
	                    sb.append(c);
	                }
	            }
	        }

	        return sb.toString();
	    }
	
	/**
	 * ����һ��ָ�����ȵ�����ַ���
	 * @param length ���ص��ַ�������
	 * @return ����һ�����
	 */
	public static String randomString(int length) {
    if (length < 1) {
        return null;
    }
    Random randGen = new Random();
    char[] numbersAndLetters  = ("abcdefghijklmnopqrstuvwxyz" +
              "ABCDEFGHIJKLMNOPQRSTUVWXYZ").toCharArray();
    char [] randBuffer = new char[length];
    for (int i=0; i<randBuffer.length; i++) {
        randBuffer[i] = numbersAndLetters[randGen.nextInt(51)];
    }
    return new String(randBuffer);
}

	/**
	 * ���ַ��������ַ���ɴ�д�ַ�
	 * 
	 * @param s
	 * @return
	 */
	public static String firstCharUpper(String s) {
		String result = s.substring(0, 1).toUpperCase() + s.substring(1);
		return result;
	}

	/**
	 * ���ַ��������ַ����Сд�ַ�
	 * 
	 * @param s
	 * @return
	 */
	public static String firstCharLower(String s) {
		String result = s.substring(0, 1).toLowerCase() + s.substring(1);
		return result;
	}

	/**
	 * ����ָ�����ȵ�����ַ�����0--9,A--Z,a--Z��
	 * 
	 * 
	 * 
	 * 
	 * @param length
	 * @return
	 */
	public static String genRandom(int length) {
		StringBuffer buffer = new StringBuffer();
		Random r = new Random();
		int i = 0;
		int c;
		while (i < length) {
			c = r.nextInt(122);
			if ((48 <= c && c <= 57) || (65 <= c && c <= 90)
					|| (97 <= c && c <= 122)) {
				buffer.append((char) c);
				i++;
			}
		}
		return buffer.toString();
	}

	

	/**
	 * �ַ�����߲���
	 * 
	 * 
	 * 
	 * 
	 * �������ַ���"ABC"��"0"����8λ�����Ϊ"00000ABC"
	 * 
	 * @param orgStr
	 *            ԭʼ�ַ���
	 * 
	 * 
	 * 
	 * 
	 * @param fillWith
	 *            ���������ַ�
	 * 
	 * 
	 * 
	 * 
	 * @param fixLen
	 *            �̶�����
	 * @return
	 */
	public static String fillLeft(String orgStr, char fillWith, int fixLen) {

		return fillStr(orgStr, fillWith, fixLen, true);

	}

	/**
	 * �ַ����ұ߲���
	 * 
	 * 
	 * 
	 * 
	 * 
	 * @param orgStr
	 * @param fillWith
	 * @param fixLen
	 * @return
	 */
	public static String fillRight(String orgStr, char fillWith, int fixLen) {

		return fillStr(orgStr, fillWith, fixLen, false);

	}

	private static String fillStr(String orgStr, char fillWith, int fixLen,
			boolean isLeft) {
		// �ж�NULL��ֱ�ӷ���
		if (null == orgStr) {
			return orgStr;
		}
		
		int toFill = fixLen - orgStr.length();

		if (toFill <= 0)
			return orgStr;

		StringBuilder sb = new StringBuilder(orgStr);
		for (; toFill > 0; toFill--) {
			if (isLeft)
				sb.insert(0, fillWith);
			else
				sb.append(fillWith);
		}

		return sb.toString();

	}

	/**
	 * toTrim
	 * 
	 * @param str
	 * @return
	 */
	public static String toTrim(String str) {
		if (str == null) {
			return "";
		}
		return str.trim();
	}

	public static String convertToString(int length, int value) {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < length - ("" + value).length(); i++) {
			buffer.append("0");
		}
		buffer.append(value);
		return buffer.toString();
	}

	public static String arrayToString(Object[] array, String split) {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < array.length; i++) {
			buffer.append(array[i].toString()).append(split);
		}
		if (buffer.length() != 0) {
			return buffer.substring(0, buffer.length() - split.length());
		} else {
			return "";
		}
	}

	public static String arrayToString(Set set, String split) {
		StringBuffer buffer = new StringBuffer();
		for (Iterator i = set.iterator(); i.hasNext();) {
			buffer.append(i.next().toString()).append(split);
		}
		if (buffer.length() != 0) {
			return buffer.substring(0, buffer.length() - split.length());
		} else {
			return "";
		}
	}
	
	public static String toHexString(String src){
		byte[] b = src.getBytes();
		StringBuffer sb = new StringBuffer();
		for(int i = 0 ; i < b.length;i++){
			sb.append(Integer.toHexString(0xFF&b[i]));
		}
		return sb.toString();
	}
	public static String hexStringToString(String hex)
	{
		return new String(hexStringToByte(hex));
	}
	
	/**
	 * ��16�����ַ���ת�����ֽ�����
	 * 
	 * @param hex
	 * @return
	 */
	public static byte[] hexStringToByte(String hex) {
		if (hex.length() == 1)
			hex = "0" + hex;
		hex = hex.toUpperCase();

		int len = (hex.length() / 2);
		byte[] result = new byte[len];
		char[] achar = hex.toCharArray();
		for (int i = 0; i < len; i++) {
			int pos = i * 2;
			result[i] = (byte) (toByte(achar[pos]) << 4 | toByte(achar[pos + 1]));
		}
		return result;
	}
	
	private static byte toByte(char c) {
		byte b = (byte) "0123456789ABCDEF".indexOf(c);
		return b;
	}	


	public static String repNull(Object o) {
		if (o == null) {
			return "";
		} else {
			return o.toString().trim();
		}
	}

	public static String generateInitPwd() {
		return generateRandomString(6);
	}

	public static String generateRandomString(int len) {
		final char[] mm = new char[] { '0', '1', '2', '3', '4', '5', '6', '7',
				'8', '9' };

		StringBuffer sb = new StringBuffer();
		Random random = new Random();

		for (int i = 0; i < len; i++) {
			sb.append(mm[random.nextInt(mm.length)]);
		}
		return sb.toString();

	}
	public static String dateFormat(String source){
		String[] lst = source.split("-");
		StringBuffer sb = new StringBuffer();
		if(lst.length > 1){	
			for(String item:lst){
				sb.append(item);
			}
			return sb.toString();
		}else return source;
	}	
	/**
	 * @param orderdate
	 * @return
	 */
	public static String formatDate(String orderdate) {
		if(orderdate == null)
			return "";
		if(orderdate.length() == 8)	{
			return orderdate.substring(0,4)+"-"+orderdate.substring(4,6)+"-"+orderdate.substring(6);
		}else if(orderdate.length() == 6){
			return orderdate.substring(0,4)+"-"+orderdate.substring(4,6);
		}
		return orderdate;
	}
	/**
	 * ����������32λUUID
	 * @return
	 */
	public static String getUUID(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("-", "").toUpperCase();
	}
	
	public static boolean isEmpty(String str){
		return str == null || str.trim().length() == 0;
	}
	
	/**
	 * ����oracle��nvl
	 * @param str
	 * @param defValue
	 * @return
	 */
	public static String nvl(String str, String defValue){
		if(isEmpty(str)){
			return defValue;
		}else{
			return str;
		}
	}
	
	/**
	 * ���ַ�����һ����0���ֵ�ǰ���0ȥ��
	 * ����:0000250 ����> 250
	 * @param str
	 * @return
	 */
	public static String getSubZero(String str) {
		int len = str.length();// ȡ���ַ����ĳ���
		int index = 0;// Ԥ�����һ�������ַ�����λ��
		int sum =0;//��ȡ�ַ�����Ϊ0�ĸ���
		char strs[] = str.toCharArray();// ���ַ���ת�����ַ�����
			for (int i = 0; i < len; i++) {
				if ('0' != strs[i]) {
					index = i;// �ҵ������ַ���������
					break;
				}
				sum=sum+1;
		}
		if (sum!=len) {
			String strLast = str.substring(index, len);// ��ȡ�ַ���
			return strLast;
			
		}
		str="0";
		return str;
	}
	
	/**
	 * ��str�н�ȡָ����ʼ������λ�õ����ַ�
	 * @param args
	 */
	public static String getSubstring(String str,int startPos,int endPos){
		String ret = null;
		if (str!=null&&str.length()>=endPos){
			ret = str.substring(startPos-1,endPos-startPos+1);
		}
		return ret; 
	}
	
	/**
	 * ����������ȡ�ַ���
	 * example:.*?(?=\\()
	 */
	public static String regMatch(String str, String reg, String def){
		Pattern regex = Pattern.compile(reg);
		Matcher regexMatcher = regex.matcher(str);
		if (regexMatcher.find()) {
			String resultString = regexMatcher.group();
			return resultString;
		}
		return def;
	}
	
	/**
	 * �ж��ַ��Ƿ�����������ʽ ���㷵��true �����㷵��false
	 */
	public static boolean matchReg(String str,String reg) {
		Pattern regex = Pattern.compile(reg);
		Matcher regexMatcher = regex.matcher(str);
		if (regexMatcher.matches()) {
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * ��ȡ�쳣�Ķ�ջ��Ϣ
	 * 
	 * @param t
	 * @return
	 */
	public static String getStackTrace(Throwable t) {
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		try {
			t.printStackTrace(pw);
			return sw.toString();
		} finally {
			pw.close();
		}
	}
	
	
	
	/**
	 * ת��nullΪ���ַ���
	 * @param source  Դ�ַ���
	 * @return
	 */
	public static final String convertNullToEmpty(String source){
		try {
			return source==null?"":source.trim();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "";
	}
	
	/**
	 * ǰ��������ʾ���п���
	 * @param bankCard
	 * @return
	 */
	public static String bankCardNoMask(String bankCard) {
		if (isEmpty(bankCard)) {
			return bankCard;
		}
		StringBuilder retS = new StringBuilder();
		for (int i = 0; i < bankCard.length(); i++) {
			if (i <= 5 || i >= bankCard.length() - 4) {
				retS.append(bankCard.charAt(i));
			} else {
				retS.append("*");
			}
		}
		return retS.toString();
	}
	/**
	 * 
	 * @param str
	 * @param len
	 * @param isLeft true��߲��ַ���false�ұ߲��ַ�
	 * @param content
	 * @return
	 */
	public static String full(String str,int len,boolean isLeft,String content){
		
		if(StringUtils.isEmpty(str)) return null;
		str = str.trim();
		int strLen = str.length();
		if(strLen>len) return null;
		String retStr =  str;
		for(int i=strLen+1;i<=len;i++){
			if(isLeft){
				retStr =content+retStr;
			}else{
				retStr =retStr+content;
			}
		}
		return retStr;
	}
	
	/**
	 * ��Ԫ��λת��Ϊ�ֵ�λ
	 * @param money
	 * @return
	 */
	public static String moneyToString(double money ){
		String tmp = money<1000?formatToStr(money,"#0.00#"):formatToStr(money,"#,000.00#");
		tmp= tmp.replaceAll(",", "");
		tmp=tmp.replace(".", "");
		return tmp;
	}
	
	public static String formatToStr(Double d,String style){
		DecimalFormat df = new DecimalFormat();
		df.applyPattern(style);
		return df.format(d);
	}
	
	
	/**
	 * ����ת�� 
	 * "��"ת��Ϊ"Ԫ" (��λ)
	 * 100��->��1.00
	 * 00000��->���ַ���
	 * @param decimal
	 * @return
	 */
	public static String converBigDecimalDivide(String decimal){
		if(decimal!=null){
			try {
				BigDecimal bigDecimal = new BigDecimal(decimal);
				if(bigDecimal.compareTo(new BigDecimal(0)) == 0) {
					return "";
				}
				BigDecimal bigDecimal1 = new BigDecimal(100);
				BigDecimal deciaml = bigDecimal.divide(bigDecimal1);//��������
				return converStringToBigDecimal(deciaml);
			} catch (Exception e) {
				return "";
			}
		}
		return "";
	}
	
	/**
	 * ����ת��
	 * 100->��100.00
	 * @param decimal
	 * @return
	 */
	public static String converStringToBigDecimal(BigDecimal decimal){
		if (decimal!=null) {
			NumberFormat currency = NumberFormat.getCurrencyInstance();
			return currency.format(decimal);
		}
		return "";
	}
	
	
	
	/**
	 * ����λ����ת��Ϊ�ٷְٷ���<br>
	 * ���磺00380 --> 0.38<br>
	 * �յ�����·���00000<br>
	 * @param rate
	 * @return
	 */
	public static String convertStringToRate(String amont) {
		if("00000".equals(amont)) {
			return "0";
		}
		double bd1 = Double.valueOf(amont)/1000;
		return String.valueOf(bd1);
	}
	
	/**
	 * 
	 * @Title URLDecode
	 * @Description URL����
	 * @param string �������ַ���
	 * @param encode �����ʽ
	 * @return
	 */
	public static String URLDecode(String string, String encode){
		String returnVal = null;
		try {
			if (null != string && !"".equals(string)) {
				returnVal = URLDecoder.decode(string, encode);
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return returnVal;
	}
	
	/**
	 * 
	 * @Title URLDecode
	 * @Description URL����
	 * @param string �������ַ���
	 * @return
	 */
	public static String URLDecode(String string){
		return URLDecode(string, Constants.CHARSET);
	}
	
	
	/**
	 * 
	 * @Title trimRight
	 * @Description ȥ���ַ����Ҳ����ͬ�ַ�
	 * @param sourceStr ԭ�ַ���
	 * @param rmStr ȥ�����ַ�
	 * @return
	 */
	public static String trimRight(String sourceStr, String rmStr) {
		return sourceStr.replaceAll("((" + Matcher.quoteReplacement(rmStr) + ")+)$", "");
	}
	
}
