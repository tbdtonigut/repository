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
    @IBOutlet weak var lblNombreEvento: UILabel!
    @IBOutlet weak var lblTitlePopu: UILabel!
    @IBOutlet weak var lblPopu: UILabel!
    @IBOutlet weak var lblTitlePais: UILabel!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblTitleEtapas: UILabel!
    @IBOutlet weak var lblEtapas: UILabel!
    @IBOutlet weak var lblTitleRecorrido: UILabel!
    @IBOutlet weak var lblRecorrido: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var eventPassValue = Evento()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        lblNombreEvento.font = UIFont.boldSystemFont(ofSize: 40.0)
        lblNombreEvento.text = eventPassValue.nombre
        lblTitlePopu.text = "Popularidad"
        lblPopu.font =  UIFont.boldSystemFont(ofSize: 30.0)
        lblPopu.text = String( eventPassValue.popularidad)
        lblTitlePais.text = "País"
        lblPais.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblPais.text = eventPassValue.pais
        lblTitleEtapas.text = "Etapas"
        lblEtapas.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblEtapas.text = String(eventPassValue.numeroEtapas)
        lblTitleRecorrido.text = "KM"
        lblRecorrido.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblRecorrido.text = String(eventPassValue.kmRecorrido)
        imageView.image = UIImage (named: "eventoFoto")
        btnBack.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19.0)
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
