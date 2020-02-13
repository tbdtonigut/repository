//
//  CyclistViewController.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 03/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class CyclistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var ciclistas:[Ciclista] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 195
        tableView.register(UINib(nibName: "CyclistTableViewCell", bundle: nil), forCellReuseIdentifier: "customCellID")
        
        verificarDatos()
        
        ciclistas.sort(by: {$0.popularidad > $1.popularidad})
    }

    override func viewWillAppear(_ animated: Bool){
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.topItem?.title = "Ciclistas"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ciclistas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "customCellID", for: indexPath) as! CyclistTableViewCell
        
        myCell.imgCiclista.image = UIImage(named: "ciclista")
        myCell.lblTitleName.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTitleName.text = "Nombre:"
        myCell.lblTitleLeader.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTitleLeader.text = "Lider"
        myCell.lblTitlePopu.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTitlePopu.text = "Popularidad"
        myCell.lblName.text = ciclistas[indexPath.row].nombre
        if(ciclistas[indexPath.row].leader){
            myCell.lblLeader.text = "Si"
        }else{
            myCell.lblLeader.text = "No"
        }
        myCell.lblPopu.text = String( ciclistas[indexPath.row].popularidad)
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var ciclista2 = Ciclista()
        
        ciclista2 = ciclistas[indexPath.row]
        
        print(ciclista2.especialidad)
    }
    func verificarDatos(){
        if (DBManager.sharedInstance.getDataCiclistas()!.isEmpty){
            cargarDatos()
        }
        ciclistas = Array(DBManager.sharedInstance.getDataCiclistas()!)
    }
    
    func cargarDatos() {
        DBManager.sharedInstance.addData(object: Ciclista(nombre: "Gon", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: true, especialidad: Especialidad.Bajada.especialidad(), popularidad: 6))
        DBManager.sharedInstance.addData(object: Ciclista(nombre: "Gen", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: false, especialidad: Especialidad.Crono.especialidad(), popularidad: 2))
        DBManager.sharedInstance.addData(object: Ciclista(nombre: "Gan", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: true, especialidad: Especialidad.Montaña.especialidad(), popularidad: 1))
    }
    
}
