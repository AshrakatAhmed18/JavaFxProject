package connection;
import java.awt.HeadlessException;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javax.swing.JOptionPane;

/**
 *
 * @author Ashrakat Ahmed
 */
public class Theconnection {
    public class PleaseProvideControllerClassName {

    @FXML
    private TextField price;

    @FXML
    private TextField TypeOfCar;

    @FXML
    private TextField Color;

    @FXML
    private TextField Model;

    @FXML
    private TextField Speed;

    @FXML
    private Button Add;

    @FXML
    private TextArea Txt;

    @FXML
    private ImageView Image;

    @FXML
    private ChoiceBox<?> Manual;

    @FXML
    void ActionAdd(ActionEvent event) {

    }

    @FXML
    void ActionChoice(MouseEvent event) {

    }

    @FXML
    void ActionColor(ActionEvent event) {
        
    }        

    @FXML
    void ActionModel(ActionEvent event) {
        
    }

    @FXML
    void ActionNotes(MouseEvent event) {

    }

    @FXML
    void ActionPrice(ActionEvent event) {

    }

    @FXML
    void ActionSpeed(ActionEvent event) {

    }

    @FXML
    void ActionType(ActionEvent event) {

    }

}
     public static void main (String[] args)
     {
         Connection connect = null ;
         Statement statement = null;
         PreparedStatement preparedStatement = null;
         ResultSet resultSet = null;
         
         try {
             Class.forName("com.mysql.jdbc.Driver");
                connect = DriverManager.getConnection("jdbc:mysql://localhost/car_agency?user=root");
                statement = connect.createStatement();
                
                connect.prepareStatement("INSERT INTO motorcycles(id, type_id, brandID, model, used, max_speed,"
                        + " note, pic_path, cost, coloID) VALUES ('1','2','2','2010','1','120','nice use','cruiser','10000','1')").executeUpdate();
                connect.prepareStatement("INSERT INTO `cars`(id, type_id, model, used, coloID, max_speed, note, pic_path, brandID, cost) "
                        + "VALUES ('3','3','2018','1','3','60','max speed','Volkswagen','3','15000')").executeUpdate();
                connect.prepareStatement("INSERT INTO trucks(id, type_id, brandID, model, used,coloID,max_speed, note, pic_path, cost) "
                        + "VALUES ('1','2','2','2018','0','3','200','Large and Safe','Extra Duty Truck','250000')").executeUpdate();
                
                 connect.prepareStatement("INSERT INTO colors(colorID, colorName) VALUES ('3','green')").executeUpdate();
                connect.prepareStatement("Select * from color INNER JOIN colorID").executeUpdate();

                 connect.prepareStatement("Select * from brand INNER JOIN brandID").executeUpdate();
           
             
         } catch (Exception ex) {
             ex.printStackTrace();
         }
     }
} 
