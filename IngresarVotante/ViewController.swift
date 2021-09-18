//
//  ViewController.swift
//  IngresarVotante
//
//  Created by Angelo Contreras on 18/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfDNI: UITextField!
    
    
    @IBOutlet weak var tfEdad: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnAceptar_OnClick(_ sender: Any) {
        
        var Dni: Int = 0
        var Edad : Int = 0
        
        var Mensaje : String = "Votante Registrado"
        
        Dni = Int(self.tfDNI.text ?? "") ?? 0
        Edad = Int(self.tfEdad.text ?? "") ?? 0
        
        if (Dni > 39999999 && Dni < 100000000) {
            if (Edad >= 18 && Edad <= 65) {
                let alert = UIAlertController(title: "Resultado", message: "\(Mensaje)", preferredStyle: UIAlertController.Style.alert)
                                    
                    alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                                    
                    self.present(alert, animated: true, completion: nil)
            }else{
                Mensaje = "Edad invalido"
                
                let alert = UIAlertController(title: "Resultado", message: "\(Mensaje)", preferredStyle: UIAlertController.Style.alert)
                                    
                    alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                                    
                    self.present(alert, animated: true, completion: nil)
            }
        }else{
            Mensaje = "DNI invalido"
            
            let alert = UIAlertController(title: "Resultado", message: "\(Mensaje)", preferredStyle: UIAlertController.Style.alert)
                                
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                                
                self.present(alert, animated: true, completion: nil)
        }
    }
    

}

