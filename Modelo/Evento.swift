//
//  Evento.swift
//  UF2Project01
//
//  Created by dam on 28/01/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import Foundation
import RealmSwift

class Evento: Object {
    
    @objc dynamic var nombre : String = ""
    @objc dynamic var popularidad : String = ""
    
    convenience init(nombre: String, popularidad: String) {
        self.init()
        self.nombre = nombre
        self.popularidad = popularidad
    }
    
    
}
