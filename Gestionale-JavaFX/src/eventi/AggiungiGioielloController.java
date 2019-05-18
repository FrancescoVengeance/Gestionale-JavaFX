package eventi;

import java.util.Observable;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import logica.Anello;
import logica.Gioiello;
import logica.MATERIALE;

public class AggiungiGioielloController extends Observable
{
	private Gioiello gioiello = null;
	//private boolean stato = false;
	
	@FXML
    private TextField textFieldPeso;
	
	@FXML
	private TextField textFieldNomeGioiello;
	
	@FXML
    private TextField textFieldTipo;
	
	@FXML
	private Button submitButton;
	
	public AggiungiGioielloController() 
	{
		System.out.print("Controller creato ");
		System.out.println(this);
	}
	
	public Gioiello getGioiello() { return this.gioiello; }
	
	@FXML
    void submit(ActionEvent event) //quando il tasto ok è premuto
    {
		if(textFieldTipo.getText().equals("Anello"))
		{
			//gioiello = new Anello("012",15.2,Double.parseDouble(textFieldPeso.getText()),MATERIALE.ACCIAIO,"Maschile",15,true,textFieldNomeGioiello.getText());
			setChanged();
			notifyObservers("Gioiello Creato");
		}
    }
}
