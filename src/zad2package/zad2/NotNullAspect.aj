package zad2package.zad2;

public aspect NotNullAspect {
		before():
	        set(@NotNull private * *) {
			if(thisJoinPoint.getArgs()[0]==null) {
				throw new NullPointerException("przekazano nullowy parametr");
			}
			else {
				System.out.println("przekazano parametr: "+thisJoinPoint.getArgs()[0].toString());
			}
				
			
		}

}
