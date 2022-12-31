package ch12;

public class InnerExam2 {
	static class Cal {
		//내부 static class
		int value = 0;
		public void plus() {
			value++;
		}
	}
	public static void main(String[] args) {
	//내부 static 클래스 접근시
	//외부 클래스, 내부 클래스 참조변수 = new 외부클래스.내부생성자
		InnerExam2.Cal cal = new InnerExam2.Cal();
		cal.plus();
		System.out.println(cal.value);
	}
}
