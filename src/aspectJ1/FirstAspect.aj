package aspectJ1;

public aspect FirstAspect {
	
	
	pointcut firstPointcut() : 
		call(float *.*.*(..));
	after() : firstPointcut(){
		System.out.println("first pointcut: method returns float type");
	}
	
	
	pointcut secondPointcut() : 
		call(* *.*.*(String));
	after() : secondPointcut(){
		System.out.println("second pointcut: method takes 1 string parameter");
	}
	
	pointcut thirdPointcut() : 
		call(* *.*.*(*,*));
	after() : thirdPointcut(){
		System.out.println("third pointcut: method takes 2 parameters");
	}
	
	pointcut fourthPointcut() : 
		call(public * services.*Service.*(..));
	after() : fourthPointcut(){
		System.out.println("fourth pointcut: public method from service package");
	}
	
	pointcut fifthPointcut() : 
		call(* model.*.set*(..));
	after() : fifthPointcut(){
		System.out.println("fifth pointcut: set method from model package");
	}
	
	pointcut sixthPointcut() :
		call(@Deprecated * *.*.*(..));
	after() : sixthPointcut(){
		System.out.println("sixth pointcut: deprecated method");
	}
	
	pointcut seventhPointcut() :
		call(* *.*.*(String)) && !call(* model.*.*(String));
	after() : seventhPointcut(){
		System.out.println("seventh pointcut: any method from any package with string parameter except from model package");
	}
	
	///zad 2 ----------
	
	pointcut eighthPointcut():
		execution(* model.*.*(..)) && !execution(* model.*.set*(..))  && !execution(* model.*.get*(..));
	Object around() : eighthPointcut(){
		long time = System.currentTimeMillis();
		Object ret = proceed();
		System.out.println("execution :"+ (System.currentTimeMillis()-time) + "ms");
		return ret;
	}
	
	//zad 4 -------

	
	

}
