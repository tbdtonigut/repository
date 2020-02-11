//
//  Ciclista.swift
//  UF2Project01
//
//  Created by dam on 28/01/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import Foundation
import RealmSwift

class Ciclista: Object {
    @objc dynamic var nombre : String = ""
    @objc dynamic var edad : Int = 0
    @objc dynamic var pais : String = ""
    @objc dynamic var equipo : String = ""
    @objc dynamic var altura : Double = 0.0
    @objc dynamic var peso : Double = 0.0
    @objc dynamic var leader : Bool = true
    @objc dynamic var especialidad : String = ""
    @objc dynamic var popularidad : Int = 0
    
    convenience init(nombre: String, edad:Int, pais: String, equipo: String, altura:Double, peso:Double, leader:Bool, especialidad:String, popularidad:Int) {
        
        self.init()
        self.nombre = nombre
        self.edad = edad
        self.pais = pais
        self.equipo = equipo
        self.altura = altura
        self.peso = peso
        self.leader = leader
        self.especialidad = especialidad
        self.popularidad = popularidad
    }

}
