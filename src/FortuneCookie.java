import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class FortuneCookie implements ActionListener {
public static void main(String[] args) {
	FortuneCookie fc = new FortuneCookie();
	fc.showButton();
	int rand = new Random().nextInt(5);
	
	if(rand == 0) {
		JOptionPane.showMessageDialog(null,"You will be very rich");
	}
	else if(rand == 1) {
		JOptionPane.showMessageDialog(null,"You will be very wise");
	}
else if(rand == 2) {
	JOptionPane.showMessageDialog(null,"You will be very smart");
	}
else if(rand == 3) {
	JOptionPane.showMessageDialog(null,"You will be very kind");
}
else if(rand == 4) {
	JOptionPane.showMessageDialog(null,"You will be very happy");
}


	
	
	
	
	
	
	
	
	

}
public void showButton() {
	JFrame jf = new JFrame();
	jf.setVisible(true);
	JButton jb = new JButton();
	jf.add(jb);
	jb.addActionListener(this);
    System.out.println("Button clicked");
}
@Override
public void actionPerformed(ActionEvent e) {
	JOptionPane.showMessageDialog(null, "WAHOO");
	// TODO Auto-generated method stub
	
}}