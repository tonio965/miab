package zad2package.zad2;

import java.util.logging.Level;
import java.util.logging.Logger;

public aspect PublicLoggerAspect {

	pointcut zad2(): 
		execution(public * zad2package.zad2.*.*(..))  && within(@PublicsLogger *);
	before() : zad2(){
		Object [] args = thisJoinPoint.getArgs();
		final Logger log = Logger.getLogger(thisJoinPoint.getSignature().getDeclaringTypeName());
		int index = 0;
		boolean containsNull = false;
		for(int i=0; i<args.length; i++) {
			if(args[i]==null) {
				containsNull=true;
				index=i;
				break;
			}
		}
		
		if(containsNull) {
			log.log(Level.WARNING, log.getName()+" argument:"+ index+ " is null");
			log.log(Level.WARNING, log.getName()+"argument was null so it finished with an exception");
			throw new IllegalArgumentException(":<");
		}
		
	}	
}
