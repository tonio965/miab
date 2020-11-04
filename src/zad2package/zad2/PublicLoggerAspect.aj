package zad2package.zad2;

import java.util.logging.Level;
import java.util.logging.Logger;

public aspect PublicLoggerAspect {

	pointcut zad2(): 
		execution(public * zad2package.zad2.*.*(..))  && within(@PublicsLogger *);
	before() : zad2(){
		Object [] args = thisJoinPoint.getArgs();
		final Logger log = Logger.getLogger(thisJoinPoint.getSignature().getDeclaringTypeName());
		StringBuilder sb = new StringBuilder();
		for(int i=0; i<args.length; i++) {
			sb.append("argument: ").append(i).append(" value: ").append(args[i].toString());
		}
		log.log(Level.WARNING, log.getName()+" "+thisJoinPoint.getSignature()+" arguments: "+sb.toString());

		
	}

	pointcut zad2handler(): handler(*Exception);
	before(): zad2handler(){
		final Logger log = Logger.getLogger(thisJoinPoint.getSignature().getDeclaringTypeName());
		log.log(Level.WARNING, log.getName()+" "+thisJoinPoint.getSignature()+" wyrzucam exception");
	}
}
