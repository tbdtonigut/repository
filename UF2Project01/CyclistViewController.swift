//
//  CyclistViewController.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 03/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class CyclistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, BotonBorrarDelegate {
    
    func borrarPulsado() {
        verificarDatos()
        tableView.reloadData()
    }
    
    
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    var ciclistas:[Ciclista] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.backItem?.rightBarButtonItem?.title = "+"
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
            
        verificarDatos()
        tableView.reloadData()
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
        var ciclistaPass = Ciclista()
        
        ciclistaPass = buscarCiclista(ciclistas: ciclistas, id: ciclistas[indexPath.row].id)!
        //print(ciclistaPass)
        let vc = DetailViewControllerCyclists()
        vc.delegate = self
        vc.ciclistaPass = ciclistaPass
        
        present(vc, animated: true)
        
    }
    func verificarDatos(){
        if (DBManager.sharedInstance.getDataTeam()!.isEmpty){
            cargarDatosTeamCiclista()
        } else if (DBManager.sharedInstance.getDataCiclistas()!.isEmpty){
            cargarDatos()
        }
        ciclistas = Array(DBManager.sharedInstance.getDataCiclistas()!)
    }
    
    func cargarDatos() {
        DBManager.sharedInstance.addData(object: Ciclista(id: idIncremental(),nombre: "Gon", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: true, especialidad: Especialidad.Bajada.especialidad(), popularidad: 6))
        DBManager.sharedInstance.addData(object: Ciclista(id: idIncremental(), nombre: "Gen", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: false, especialidad: Especialidad.Crono.especialidad(), popularidad: 2))
        DBManager.sharedInstance.addData(object: Ciclista(id: idIncremental(), nombre: "Gan", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: true, especialidad: Especialidad.Montaña.especialidad(), popularidad: 1))
    }
    
    func cargarDatosTeamCiclista() {
        DBManager.sharedInstance.addData(object: Equipo(nombre: "Equipo1", manager: "David", pais: "Argentina"))
        DBManager.sharedInstance.addData(object: Equipo(nombre: "Equipo2", manager: "Mar", pais: "Cataluña"))
        DBManager.sharedInstance.addData(object: Equipo(nombre: "Equipo3", manager: "Zoya", pais: "Escocia"))
        DBManager.sharedInstance.addData(object: Ciclista(id: idIncremental(),nombre: "Gon", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: true, especialidad: Especialidad.Bajada.especialidad(), popularidad: 6))
        DBManager.sharedInstance.addData(object: Ciclista(id: idIncremental(), nombre: "Gen", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: false, especialidad: Especialidad.Crono.especialidad(), popularidad: 2))
        DBManager.sharedInstance.addData(object: Ciclista(id: idIncremental(), nombre: "Gan", edad: 5, pais: "pais1", equipo: (DBManager.sharedInstance.getDataTeam()?.randomElement()?.nombre)!, altura: 1.32, peso: 60.0, leader: true, especialidad: Especialidad.Montaña.especialidad(), popularidad: 1))
    }
    
    func idIncremental() -> Int {
        return DBManager.sharedInstance.getDataCiclistas()!.count + 1
    }
    
    func buscarCiclista(ciclistas: [Ciclista], id: Int) -> Ciclista? {
        for ciclista in ciclistas {
            if (ciclista.id == id) {
                return ciclista
            }
        }
        return nil
    }
    
}
