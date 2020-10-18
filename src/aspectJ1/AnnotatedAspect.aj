package aspectJ1;

public aspect AnnotatedAspect {
    pointcut callAnnotatedAspect() : execution(* services.*.set*(..))  && within(@MyAnnotation *);

    declare error : callAnnotatedAspect()  : "Using immutable methods is not allowed !";

}
