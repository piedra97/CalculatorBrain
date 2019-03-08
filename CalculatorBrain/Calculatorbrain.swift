//
//  Calculatorbrain.swift
//  CalculatorBrain
//
//  Created by Alumne on 25/02/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import Foundation
class CalculatorBrain{

    private var display:Float = 0.0
    private var acumulador:Float = 0.0
    private var operador:Int = CalculatorBrain.NADA
    private var rewrite:Bool = true
    
    public static let SUMA = 1
    public static let RESTA = 2
    public static let MULTIPLICA = 3
    public static let DIVIDE = 4
    public static let SIN = 5
    public static let COS = 6
    public static let TAN = 7
    public static let SQRT = 8
    public static let IGUAL = 9
    public static let NADA = 0

    
    init(){
        reset()
    }
    
    public func reset() {
        display = 0;
        acumulador = 0;
        operador = CalculatorBrain.NADA;
    }
    
    public func getDisplay() ->Float{
        return display
    }
    
    public func setNumber(_ n:Int) {
        if (rewrite){ display = 0; rewrite = false}
        display = display*10+Float(n)
    }
    
    public func setOperation(_ op:Int) {
        updateValue(op)
        operador = op
        rewrite = true
    }
    
    public func result(){
        updateValue(CalculatorBrain.IGUAL)
        operador = CalculatorBrain.NADA
        rewrite = true
    }
    
    private func updateValue(_ op:Int) {
    switch self.operador {
    case CalculatorBrain.NADA:
        acumulador = display
    case CalculatorBrain.SUMA:
        acumulador = acumulador + display
    case CalculatorBrain.RESTA:
        acumulador = acumulador - display
    case CalculatorBrain.MULTIPLICA:
        acumulador = acumulador * display
    case CalculatorBrain.DIVIDE:
        acumulador = acumulador / display
    case CalculatorBrain.SIN:
        acumulador = sin(display)*180/Float(Double.pi)
    case CalculatorBrain.COS:
        acumulador = cos(display)*180/Float(Double.pi)
    case CalculatorBrain.TAN:
        acumulador = tan(display)*180/Float(Double.pi)
    case CalculatorBrain.SQRT:
        acumulador = sqrt(Float(display))
    default:
        break
        }
        
    display = acumulador;
    }

}
