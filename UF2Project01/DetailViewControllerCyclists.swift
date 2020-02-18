//
//  DetailViewControllerCyclists.swift
//  UF2Project01
//
//  Created by dam on 11/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

protocol BotonBorrarDelegate{
    func borrarPulsado()
}

class DetailViewControllerCyclists: UIViewController {

    var ciclistaPass = Ciclista()
    
    var delegate : BotonBorrarDelegate?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgCiclista: UIImageView!
    @IBOutlet weak var lblTituloEdad: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var lblTituloPais: UILabel!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblTituloEquipo: UILabel!
    @IBOutlet weak var lblEquipo: UILabel!
    @IBOutlet weak var lblTituloAltura: UILabel!
    @IBOutlet weak var lblAltura: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblNombre.font = UIFont.boldSystemFont(ofSize: 40.0)
        lblNombre.text = ciclistaPass.nombre
        imgCiclista.image = UIImage (named: "ciclista")
        lblTituloEdad.text = "Edad"
        lblEdad.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblEdad.text = String( ciclistaPass.edad)
        lblTituloPais.text = "País"
        lblPais.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblPais.text = ciclistaPass.pais
        lblTituloEquipo.text = "Equipo"
        lblEquipo.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblEquipo.text = ciclistaPass.equipo
        lblTituloAltura.text = "Altura"
        lblAltura.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblAltura.text = String(ciclistaPass.altura)
        
        btnBack.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19.0)
        btnBack.setTitle("OK", for: UIControl.State.normal)
        btnBorrar.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19.0)
        btnBorrar.setTitle("BORRAR", for: UIControl.State.normal)
    }
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func borrarCiclista(_ sender: UIButton) {
        print(ciclistaPass)
        DBManager.sharedInstance.deleteFromDb(object: ciclistaPass)
        delegate?.borrarPulsado()
        dismiss(animated: true)
    }
    
}
