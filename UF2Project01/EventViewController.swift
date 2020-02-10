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
    
    var arrayNombres: [String] = ["Nombre", "Nombre2", "Nombre3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        tableView.register(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "customCellID")
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNombres.count
       }
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "customCellID", for: indexPath) as! EventTableViewCell
        
        myCell.lblEventName.text = arrayNombres[indexPath.row]
        
        return myCell
       }
}
