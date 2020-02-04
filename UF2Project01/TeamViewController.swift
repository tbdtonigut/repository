//
//  TeamViewController.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 03/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class TeamViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var equipos:[Equipo] = []
    
    var arrayNombres: [String] = ["Team", "Team2", "Team3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        tableView.register(UINib(nibName: "TeamTableViewCell", bundle: nil), forCellReuseIdentifier: "customCellID")
        
//        DBManager.sharedInstance.addData(object: Equipo(nombre: "Toni", manager: "Carlos", pais: "Españita"))
//        DBManager.sharedInstance.addData(object: Equipo(nombre: "Gerard", manager: "Mar", pais: "Cataluña"))
//        DBManager.sharedInstance.addData(object: Equipo(nombre: "Ivan", manager: "Zoya", pais: "Escocia"))
        
        equipos = Array(DBManager.sharedInstance.getDataTeam()!)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return equipos.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
           let myCell = tableView.dequeueReusableCell(withIdentifier: "customCellID", for: indexPath) as! TeamTableViewCell
           
        myCell.lblTeamName.text = equipos[indexPath.row].nombre
           return myCell
       }

}
