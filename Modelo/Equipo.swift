//
//  Equipo.swift
//  UF2Project01
//
//  Created by dam on 28/01/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import Foundation
import RealmSwift

class Equipo: Object {
    
    @objc dynamic var nombre : String = ""
    @objc dynamic var manager : String = ""
    @objc dynamic var pais : String = ""
    
    convenience init(nombre: String, manager: String, pais: String) {
        self.init()
        
        self.nombre = nombre
        self.manager = manager
        self.pais = pais
    }
    
}
