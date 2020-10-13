package aspectJ1;

import model.TimeObjectDTO;

public aspect LastTimeUsedAspect {
	
	declare parents: *DTO implements Mutable;
	
	private long Mutable.time;
	
	private void Mutable.testTime() {
		time=System.currentTimeMillis();
	}
	
	before(Mutable mutable):
		execution( * Mutable+.set*(..)) && this(mutable){
		mutable.testTime();
	}
	
	public static long showTime(Object o) {
		Mutable m = (Mutable) o;
		return m.time;
	}


	
	
}

interface Mutable {}
