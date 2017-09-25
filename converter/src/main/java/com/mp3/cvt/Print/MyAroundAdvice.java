package com.mp3.cvt.Print;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class MyAroundAdvice implements MethodInterceptor {
	public Object invoke(MethodInvocation invocation) throws Throwable{
		System.out.println("ㅁㅁㅁㅁ");
		Object ret = invocation.proceed();
		System.out.println("ㅂㅂㅂㅂ");
		return ret;
	}

}
