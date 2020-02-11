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
    @objc dynamic var pais : String = ""
    @objc dynamic var numeroEtapas : Int = 0
    @objc dynamic var kmRecorrido : Int = 0
    
    convenience init(nombre: String, popularidad: Int, pais: String, numeroEtapas: Int, kmRecorrido: Int) {
        self.init()
        self.nombre = nombre
        self.popularidad = popularidad
        self.pais = pais
        self.numeroEtapas = numeroEtapas
        self.kmRecorrido = kmRecorrido
    }
    
    override static func primaryKey() -> String? {
        return "nombre"
    }
    
}
