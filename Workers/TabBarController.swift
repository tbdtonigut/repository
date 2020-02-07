//
//  TabBarController.swift
//  stucom
//
//  Created by Roger Prats on 17/07/2018.
//  Copyright © 2018 Heliocor. All rights reserved.
//

import UIKit
import Foundation

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBar.backgroundColor = ThemeColor.stucomWhiteBar.HCColor
        tabBar.barTintColor = ThemeColor.stucomWhiteBar.HCColor
        tabBar.tintColor = ThemeColor.stucomOrange.HCColor
        tabBar.unselectedItemTintColor = ThemeColor.black.HCColor.withAlphaComponent(0.8)
        tabBar.isTranslucent = false
        
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 0.5
        tabBar.layer.shadowColor = UIColor.gray.cgColor
        tabBar.layer.shadowOpacity = 1
            
        
        let listEventos = EventViewController()
        _ = UINavigationController(rootViewController: listEventos)
        listEventos.tabBarItem = UITabBarItem(title: NSLocalizedString("Events", comment: ""), image: UIImage(named: "events"), tag: 0)
                
        let listCiclistas = CyclistViewController()
        _ = UINavigationController(rootViewController: listCiclistas)
        listCiclistas.tabBarItem = UITabBarItem(title: NSLocalizedString("Cyclists", comment: ""), image: UIImage(named: "cyclist"), tag: 1)
        

        let listEquipos = TeamViewController()
        _ = UINavigationController(rootViewController: listEquipos)
        listEquipos.tabBarItem = UITabBarItem(title: NSLocalizedString("Teams", comment: ""), image: UIImage(named: "teams"), tag: 2)
        
        
        let controllers = [listEventos, listCiclistas, listEquipos]
        
        /*Añadir dinamicamente una opcion al tabbar
        if UserDefaults.standard.bool(forKey: Constants.KCompanyAccount) {
            let companiesVC = CompaniesBuilder.build()
            let companiesNavigationController = UINavigationController(rootViewController: companiesVC)
            companiesVC.tabBarItem = UITabBarItem(title: NSLocalizedString("company", comment: ""), image: UIImage(named: "companydocs"), tag: 4)
            controllers.append(companiesNavigationController)
        }*/
        
        viewControllers = controllers
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
    
}
