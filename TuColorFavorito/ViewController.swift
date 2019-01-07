//
//  ViewController.swift
//  TuColorFavorito
//
//  Created by Memo Figueredo on 1/7/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlet Vista
    @IBOutlet weak var vistaColor: UIView!
    
    //outlet Switch
    
    @IBOutlet weak var verdeSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var rojoSwitch: UISwitch!
    
    //outlet Slider
    
    @IBOutlet weak var sliderRojo: UISlider!
    
    
    @IBOutlet weak var sliderVerde: UISlider!
    
    @IBOutlet weak var sliderAzul: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        vistaColor.layer.borderWidth = 5
        vistaColor.layer.cornerRadius = 20
        vistaColor.layer.borderColor = UIColor.lightGray.cgColor
        
        actualizaControles()
        actualizaColor()
    }
    
    // Funciones colores
    
    func actualizaColor(){
        
        var rojo: CGFloat = 0
        var verde: CGFloat = 0
        var azul: CGFloat = 0
        
        if rojoSwitch.isOn {
            rojo = CGFloat(sliderRojo.value)
        }
        
        if blueSwitch.isOn{
            azul = CGFloat(sliderAzul.value)
        }
        
        if verdeSwitch.isOn{
            verde = CGFloat(sliderVerde.value)
        }
        
        let color = UIColor(red: rojo, green: verde, blue: azul, alpha: 1)
        
        vistaColor.backgroundColor = color
    }
    
    // funcion controles
    
    func actualizaControles(){
        
        sliderRojo.isEnabled = rojoSwitch.isOn
        sliderAzul.isEnabled = blueSwitch.isOn
        sliderVerde.isEnabled = verdeSwitch.isOn
    }
     //action switch
    
    @IBAction func switchCambio(_ sender: UISwitch) {
        
      actualizaColor()
        actualizaControles()
    }
    
    //action switch
    
    @IBAction func cambioSlider(_ sender: UISlider) {
        actualizaColor()
        
    }
    
    //accion boton
    
    @IBAction func restearBoton(_ sender: Any) {
        
        sliderRojo.value = 1
        sliderVerde.value = 1
        sliderAzul.value = 1
        
        actualizaControles()
        actualizaColor()
    }
    
        
        
    
}

