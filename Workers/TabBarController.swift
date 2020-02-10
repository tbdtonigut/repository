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
        tabBar.tintColor = ThemeColor.blueRibbon.HCColor
        tabBar.unselectedItemTintColor = ThemeColor.black.HCColor.withAlphaComponent(0.8)
        tabBar.isTranslucent = false
        
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 0.5
        tabBar.layer.shadowColor = UIColor.gray.cgColor
        tabBar.layer.shadowOpacity = 1
            
        
        let listEventos = EventViewController()
        _ = UINavigationController(rootViewController: listEventos)
        listEventos.tabBarItem = UITabBarItem(title: NSLocalizedString("Eventos", comment: ""), image: UIImage(named: "events"), tag: 0)
                
        let listCiclistas = CyclistViewController()
        _ = UINavigationController(rootViewController: listCiclistas)
        listCiclistas.tabBarItem = UITabBarItem(title: NSLocalizedString("Ciclistas", comment: ""), image: UIImage(named: "cyclist"), tag: 1)
        
        let listEquipos = TeamViewController()
        _ = UINavigationController(rootViewController: listEquipos)
        listEquipos.tabBarItem = UITabBarItem(title: NSLocalizedString("Equipos", comment: ""), image: UIImage(named: "teams"), tag: 2)        
        
        let controllers = [listEventos, listCiclistas, listEquipos]
        
        viewControllers = controllers
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
    
}
