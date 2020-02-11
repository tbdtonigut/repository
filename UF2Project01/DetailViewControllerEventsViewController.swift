//
//  DetailViewControllerEventsViewController.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 10/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class DetailViewControllerEventsViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var lblPaisEvento: UILabel!
    @IBOutlet weak var lblNombreEvento: UILabel!
    @IBOutlet weak var lblPopuEvento: UILabel!
    @IBOutlet weak var lblEtapasEvento: UILabel!
    @IBOutlet weak var lblDistanciaKm: UILabel!
    @IBOutlet weak var imgEvento: UIImageView!
    
    var eventPassValue = Evento()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        lblNombreEvento.text = "Nombre: " +  eventPassValue.nombre
        lblPopuEvento.text = "Popularidad: " + String( eventPassValue.popularidad)
        lblPaisEvento.text = "País: " +  eventPassValue.pais
        lblEtapasEvento.text = "nº Etapas: " + String( eventPassValue.numeroEtapas)
        lblDistanciaKm.text = "km: " +  String(eventPassValue.kmRecorrido)
        imgEvento.image = UIImage (named: "eventoFoto")
        btnBack.setTitle("OK", for: UIControl.State.normal)
        
    }
    
    
    @IBAction func back(_ sender: UIButton) {
            dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
