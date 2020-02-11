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

        self.tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 170
        tableView.register(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "customCellID")
        
        verificarDatos()
        
//        let vc = DetailViewControllerEventsViewController()
//        present(vc, animated: true)
        
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
        
        myCell.imgEvent.image = UIImage(named: "eventoFoto")
        myCell.lblTitleName.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTitleName.text = "Evento:"
        myCell.lblName.text = eventos[indexPath.row].nombre
        myCell.lblTitlePopu.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTitlePopu.text = "Popularidad"
        myCell.lblPopu.text = String(eventos[indexPath.row].popularidad)
        
        return myCell
       }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(eventos[indexPath.row])
        var eventToPass = Evento()
  
        
        let resultados = Array(DBManager.sharedInstance.getDataEvent()!)
        eventToPass = buscarEvento(eventos: resultados, nombre: eventos[indexPath.row].nombre)!
        let vc = DetailViewControllerEventsViewController()
        vc.eventPassValue = eventToPass
        
        present(vc, animated: true)
    }
    
    func verificarDatos(){
        if (DBManager.sharedInstance.getDataEvent()!.isEmpty){
            cargarDatos()
        }
        eventos = Array(DBManager.sharedInstance.getDataEvent()!)
    }
    
    func cargarDatos() {
           DBManager.sharedInstance.addData(object: Evento(nombre: "awa", popularidad: 2, pais: "España", numeroEtapas: 2, kmRecorrido: 100))
                  DBManager.sharedInstance.addData(object: Evento(nombre: "owo", popularidad: 10, pais: "Argentina", numeroEtapas: 10, kmRecorrido: 200))
                  DBManager.sharedInstance.addData(object: Evento(nombre: "uwu", popularidad: 5, pais: "Brasil", numeroEtapas: 3, kmRecorrido: 500))
    }
    
    func buscarEvento(eventos: [Evento], nombre: String) -> Evento? {
           for evento in eventos {
               if (evento.nombre == nombre) {
                   return evento
               }
           }
           return nil
       }
}
