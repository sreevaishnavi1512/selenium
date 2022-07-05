package tests;

import com.intuit.karate.junit5.Karate;

public class sampleTest {
	@Karate.Test
	Karate testSample() {
		return Karate.run("sample").relativeTo(getClass());
	}
	 @Karate.Test
	    Karate testTags() {
	        return Karate.run("sample").tags("@second").relativeTo(getClass());
	    }
}
