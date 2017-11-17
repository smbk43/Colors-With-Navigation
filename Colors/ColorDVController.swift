//
//  ColorDVController.swift
//  Colors
//
//  Created by Sean Buchholz on 10/27/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ColorDVController: UIViewController{
    var colorsss: (UIColor, String)?
    @IBOutlet weak var colorNameLabel: UILabel!
    override func didReceiveMemoryWarning(){super.didReceiveMemoryWarning()}
    override func viewDidLoad(){
        super.viewDidLoad() self.view.backgroundColor = colorsss?.0 //self explanatory 
        colorNameLabel.text = colorsss?.1
        self.title = colorsss?.1}}
