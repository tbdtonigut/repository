//
//  Evento.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 10/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//
import Foundation
import RealmSwift

class Evento: Object {
    
    @objc dynamic var nombre : String = ""
    @objc dynamic var popularidad : Int = 0
    
    convenience init(nombre: String, popularidad: Int) {
        self.init()
        self.nombre = nombre
        self.popularidad = popularidad
    }
    
    
}
