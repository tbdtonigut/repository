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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 170
        tableView.register(UINib(nibName: "TeamTableViewCell", bundle: nil), forCellReuseIdentifier: "customCellID")
        
       self.navigationController?.navigationBar.topItem?.title = "Equipos"

//        DBManager.sharedInstance.addData(object: Equipo(nombre: "Carlos", manager: "David", pais: "Argentina"))
//        DBManager.sharedInstance.addData(object: Equipo(nombre: "Gerard", manager: "Mar", pais: "Cataluña"))
//        DBManager.sharedInstance.addData(object: Equipo(nombre: "Ivan", manager: "Zoya", pais: "Escocia"))
        
        equipos = Array(DBManager.sharedInstance.getDataTeam()!)
    }
    
    override func viewWillAppear(_ animated: Bool){
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.topItem?.title = "Equipos"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return equipos.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
           let myCell = tableView.dequeueReusableCell(withIdentifier: "customCellID", for: indexPath) as! TeamTableViewCell
           
        myCell.imgTeam.image = UIImage(named: "teamwork")
        myCell.lblTeamTitle.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblTeamTitle.text = "Equipo:"
        myCell.lblManagerTitle.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblManagerTitle.text = "Manager:"
        myCell.lblCountryTitle.font = UIFont.boldSystemFont(ofSize: 16.0)
        myCell.lblCountryTitle.text = "País:"
        myCell.lblTeamName.text = equipos[indexPath.row].nombre
        myCell.lblManager.text = equipos[indexPath.row].manager
        myCell.lblCountry.text = equipos[indexPath.row].pais
        
           return myCell
       }

}
