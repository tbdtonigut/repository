//
//  enumEspecialidad.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 13/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import Foundation

enum Especialidad: String {
    case Montaña
    case Llano
    case Bajada
    case Sprint
    case Resistencia
    case Recuperacion
    case Crono
    
    func especialidad() -> String {
        return self.rawValue
    }
}
