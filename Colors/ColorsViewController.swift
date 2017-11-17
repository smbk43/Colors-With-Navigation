//
//  ColorDVController.swift
//  Colors
//
//  Created by Sean Buchholz on 10/27/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let allcolors: [(UIColor, String)] = [(.red,"Red"),(.orange,"Orange"),(.yellow,"Yellow"),(.green,"Green"),(.blue,"Blue"),(.purple,"Purple"),(.brown,"Brown")] //lables all colors
    @IBOutlet weak var colorsTableView: UITableView!
    func numberOfSections(in tableView: UITableView) -> Int { return 1} //self explanatory
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return allcolors.count} //self explanatory
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = allcolors[indexPath.row].1
        cell.backgroundColor = allcolors[indexPath.row].0
        cell.selectionStyle = .none
        return cell}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDVController, let row = colorsTableView.indexPathForSelectedRow?.row{ destination.colorsss = allcolors[row]}}
    override func viewDidLoad(){ super.viewDidLoad()}
    override func didReceiveMemoryWarning(){ super.didReceiveMemoryWarning()}}
