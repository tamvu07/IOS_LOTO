//
//  ViewController.swift
//  LOTO
//
//  Created by Tam Vu on 09/05/2024.
//

import UIKit


class ViewController: UIViewController {
       
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func actionBt2(_ sender: Any) {
        gotoVC2()
    }
    
    @IBAction func actionBt3(_ sender: Any) {
        gotoVC3()
    }
    
    func gotoVC2()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let destinations = storyboard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        destinations.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(destinations, animated: true)
    }
    
    func gotoVC3()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let destinations = storyboard.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        destinations.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(destinations, animated: true)
    }

}

