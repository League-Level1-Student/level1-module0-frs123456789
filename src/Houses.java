import java.util.Random;

import org.jointheleague.graphical.robot.Robot;

public class Houses {
	static Robot c3po = new Robot();
public static void main(String[] args) {
	
Random gen = new Random();

c3po.setX(60);
c3po.setY(500);
c3po.penDown();
c3po.setSpeed(100);
for(int i = 0; i<10; i++) {
int randy = gen.nextInt(3);


if(randy == 0) {
	house("small");
}
else if(randy == 1) {
	house("medium");
}
else {
	house("large");
}

}
}
static void house(String size){
	int height = 0;
	if(size .equals("small")){
		height = 60;
		c3po.setPenColor(255,0,0);
	}
	else if(size.equals("medium")) {
		height=120;
		c3po.setPenColor(0,255,0);
	}
	else {
		height=250;
		c3po.setPenColor(0,0,255);
	}
	c3po.move(height);
	c3po.turn(90);
	c3po.move(40);
	c3po.turn(90);
	c3po.move(height);
	c3po.turn(-90);
	c3po.setPenColor(0,255,0);
	c3po.move(35);
	c3po.turn(-90);
	c3po.setPenColor(0,0,0);	
}



}
