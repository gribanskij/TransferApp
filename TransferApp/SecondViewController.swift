//
//  SecondViewController.swift
//  TransferApp
//
//  Created by Дмитрий Грибанский on 16.04.2024.
//

import UIKit

class SecondViewController : UIViewController {
    
    var updatingData: String = ""
    
    @IBOutlet var dataTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateTextFieldData(withText: updatingData)
    }
    
    
    private func updateTextFieldData(withText text:String){
        
        dataTextField?.text = text
    }
    
    
}
