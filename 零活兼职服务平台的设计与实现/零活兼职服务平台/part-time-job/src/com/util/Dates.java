package com.util;


	import java.text.DateFormat;
	import java.text.SimpleDateFormat;
	import org.springframework.beans.propertyeditors.CustomDateEditor;
	import org.springframework.web.bind.WebDataBinder;
	import org.springframework.web.bind.support.WebBindingInitializer;
	import org.springframework.web.context.request.WebRequest;

	public class Dates  implements WebBindingInitializer{
	    @Override
	    public void initBinder(WebDataBinder binder, WebRequest request) {
	        // TODO Auto-generated method stub
	        //转换日期
	        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        binder.registerCustomEditor(Dates.class, new CustomDateEditor(dateFormat, true));
	    }
	}
