import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class SensitiveKeyboard implements KeyListener {
	
public static void main(String[] args) {
	SensitiveKeyboard sk = new SensitiveKeyboard();
	sk.ui();
	
	
}
public void ui() {
	JFrame jf = new JFrame();
	
	
	

	jf.setVisible(true);
	jf.pack();
	
jf.addKeyListener(this);
}
static void speak(String words) {
    try {
         Runtime.getRuntime().exec("say " + words).waitFor();
    } catch (Exception e) {
         e.printStackTrace();
         }
    }
@Override
public void keyTyped(KeyEvent e) {
	// TODO Auto-generated method stub
	
}
@Override
public void keyPressed(KeyEvent e) {
	// TODO Auto-generated method stub
	speak("Ouch");
}
@Override
public void keyReleased(KeyEvent e) {
	// TODO Auto-generated method stub
	
}
}

