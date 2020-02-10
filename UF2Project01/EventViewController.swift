//
//  EventViewController.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 03/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class EventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var eventos:[Evento] = []
    
//    var arrayNombres: [String] = ["Nombre", "Nombre2", "Nombre3"]
        
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 170
        tableView.register(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "customCellID")
        
        verificarDatos()
    }
    
    override func viewWillAppear(_ animated: Bool){
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.topItem?.title = "Eventos"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "customCellID", for: indexPath) as! EventTableViewCell
        
        myCell.imgEvent.image = UIImage(named: "events")
        myCell.lblTitleName.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTitleName.text = "Evento:"
        myCell.lblName.text = eventos[indexPath.row].nombre
        myCell.lblTitlePopu.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTitlePopu.text = "Popularidad"
        myCell.lblPopu.text = String(eventos[indexPath.row].popularidad)
        
        return myCell
       }
    
    func verificarDatos(){
        if (DBManager.sharedInstance.getDataEvent()!.isEmpty){
            cargarDatos()
        }
        eventos = Array(DBManager.sharedInstance.getDataEvent()!)
    }
    
    func cargarDatos() {
           DBManager.sharedInstance.addData(object: Evento(nombre: "Salon del manga", popularidad: 2))
                  DBManager.sharedInstance.addData(object: Evento(nombre: "Ivanawa", popularidad: 10))
                  DBManager.sharedInstance.addData(object: Evento(nombre: "Ivan huele mal", popularidad: 5))
       }
}
