import org.jointheleague.graphical.robot.Robot;

public class MethodsCheckpoint0 {
	
public static void main(String[] args) {
 
	jump("piggy");
}
static void food(String fruit) {
    System.out.println("I like " + fruit);
}
static void truth(int x) {
    if(x > 5)
          System.out.println("Geeks rule");
    else
           System.out.println("Nerds rule");

}
static void drawLine() {
 Robot robot = new Robot();
    robot.move(100);
     robot.turn(90);
}
static void jump(int height) {
    if (height > 100)
          System.out.println("The mouse jumped over the moon.");
    if (height > 50)
           System.out.println("The mouse jumped over the broom.");
    if (height > 5)
           System.out.println("The mouse jumped over the candlestick.");
}
static void jump(String obstacle) {

    System.out.println("The mouse jumped over the " + obstacle);
}
}
