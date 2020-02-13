//
//  DetailViewControllerCyclists.swift
//  UF2Project01
//
//  Created by dam on 11/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class DetailViewControllerCyclists: UIViewController {

    var ciclistaPass = Ciclista()
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgCiclista: UIImageView!
    @IBOutlet weak var lblTituloEdad: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    
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
        
        
        

    }
}
