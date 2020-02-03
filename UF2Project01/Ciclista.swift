//
//  Ciclista.swift
//  UF2Project01
//
//  Created by dam on 28/01/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import Foundation
class Ciclista{
    var nombre : String
    var edad : Int
    var pais : String
    //Cambiar tipo
    var equipo : String
    var altura : Double
    var peso : Double
    var leader : Bool
    //No lo tengo claro
    var especialidad : String
    
    init(nombre: String, edad:Int, pais: String, equipo: String, altura:Double, peso:Double, leader:Bool, especialidad:String) {
        self.nombre = nombre
        self.edad = edad
        self.pais = pais
        self.equipo = equipo
        self.altura = altura
        self.peso = peso
        self.leader = leader
        self.especialidad = especialidad
    }

}
