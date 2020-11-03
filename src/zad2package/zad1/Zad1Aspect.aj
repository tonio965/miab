package zad2package.zad1;


public aspect Zad1Aspect {
	
	pointcut zad1() : 
		execution(@NotNullArgs * ps2execute.Zad2Main.execute1(*,*));
	before() : zad1(){
		Object [] arguments = thisJoinPoint.getArgs();
		Object first = arguments[0];
		Object second = arguments[1];
		if(first==null) {
			throw new IllegalArgumentException("first argument is null");
		}
		if(second==null) {
			throw new IllegalArgumentException("second argument is null");
		}
	}	

}
