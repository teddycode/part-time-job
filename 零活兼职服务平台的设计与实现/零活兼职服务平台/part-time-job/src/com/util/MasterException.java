package com.util;

/**
 * �쳣��Ϣ��
 * @author Administrator
 *
 */
public class MasterException extends Exception{
	
	private static final long serialVersionUID = 1L;

	public MasterException(String message,Throwable e){
		super(message,e);
	}
}
