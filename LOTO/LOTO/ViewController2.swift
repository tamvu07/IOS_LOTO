//
//  ViewController.swift
//  LOTO
//
//  Created by Tam Vu on 09/05/2024.
//

import UIKit


class ViewController2: UIViewController {
    
    
    @IBOutlet weak var roundTextField: UITextField!
    @IBOutlet weak var numberTable: UITableView!
    
    let numbers = Array(241...250)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTable.register(UINib(nibName: "NumberCell", bundle: nil), forCellReuseIdentifier: "NumberCell")
        numberTable.delegate = self
        numberTable.dataSource = self
        numberTable.tableFooterView = UIView()
        numberTable.reloadData()
        roundTextField.addTarget(self, action: #selector(enterPressed), for: .editingDidEndOnExit)
    }
    

    func gotoDetail(index: Int)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let destinations = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        destinations.numberTitle = numbers[index]
        destinations.round = roundTextField.text ?? ""
        self.navigationController?.pushViewController(destinations, animated: true)
    }
    
    @objc func enterPressed(){
        //do something with typed text if needed
        roundTextField.resignFirstResponder()
    }
}

extension ViewController2: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return numbers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = numberTable.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath) as? NumberCell else { return UITableViewCell() }
        cell.configure(number: "\(numbers[indexPath.row])")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        gotoDetail(index: indexPath.row)
    }
}
