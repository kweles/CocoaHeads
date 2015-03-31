//
//  ViewController.swift
//  Navigation
//
//  Created by Weles Siqueira on 30/03/15.
//  Copyright (c) 2015 WS IT Soluções. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var txtV1: UITextField!
   @IBOutlet weak var txtV2: UITextField!
   @IBOutlet weak var lblResult: UILabel!
   
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   
   @IBAction func somar(sender: UIButton) {
      let v1 = txtV1.text.toInt()
      let v2 = txtV2.text.toInt()
      let result = v1!+v2!
      
      lblResult.text = "O Resultado é: \(result)"
   }
   
   
}

