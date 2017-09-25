package com.mp3.cvt.Print;

import org.springframework.aop.framework.ProxyFactory;

public class HM {

	public static void main(String[] args){
		IPrintMsg target = new PrintMsg();
		
		ProxyFactory pf = new ProxyFactory();
		pf.addAdvice(new MyAroundAdvice());
		pf.setTarget(target);
		IPrintMsg proxy = (IPrintMsg) pf.getProxy();
		
		proxy.hello();
		proxy.hello1();
		proxy.hello2();
	}
}
