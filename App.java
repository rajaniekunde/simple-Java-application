import javax.swing.*;
import java.awt.*;

public class App {
    public static void main(String[] args) {
        // Create a JFrame (window)
        JFrame frame = new JFrame("Welcome App");

        // Set the size of the window
        frame.setSize(800, 600);

        // Set default close operation
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Create a JPanel for custom background and message
        JPanel panel = new JPanel() {
            @Override
            protected void paintComponent(Graphics g) {
                super.paintComponent(g);
                // Set background color
                g.setColor(new Color(135, 206, 250)); // Sky blue
                g.fillRect(0, 0, getWidth(), getHeight());

                // Set text properties
                g.setColor(Color.WHITE);
                g.setFont(new Font("Arial", Font.BOLD, 36));
                g.drawString("Welcome to GlobalLogic", 200, 300); // Centered message
            }
        };

        // Add the panel to the frame
        frame.add(panel);

        // Make the window visible
        frame.setVisible(true);
    }
}
