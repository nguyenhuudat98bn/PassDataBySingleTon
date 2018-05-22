//
//  ViewController.swift
//  PassDataBySingleTon
//
//  Created by nguyễn hữu đạt on 5/10/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    var index: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let indexPath = index {
            inputTextField.text = String(DataService.shared.numbers[indexPath])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveData( _ sender: UIBarButtonItem) {
        guard inputTextField.text != "" else { return }
        if let indexPath = index {
            DataService.shared.numbers[indexPath] = Int(inputTextField.text!) ?? 0
        } else {
            DataService.shared.insertNumber(from: Int(inputTextField.text!) ?? 0)
        }
        navigationController?.popViewController(animated: true)
    }

}

