/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package add;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;



/**
 *
 * @author CPU
 */
public class Add extends Application {
    
    @Override
    public void start(Stage primaryStage) {
        try {
            Parent parent =  FXMLLoader.load(getClass().getResource("addPage.fxml"));
        
        Scene scene = new Scene(parent);
        
        primaryStage.setTitle("Car Agency");
        primaryStage.setScene(scene);
        primaryStage.show();
          } catch (Exception e) {
        }
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
