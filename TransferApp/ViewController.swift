//
//  ViewController.swift
//  TransferApp
//
//  Created by Дмитрий Грибанский on 16.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var updateData:String = "Test Data"
    
    @IBOutlet var dataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTextLable(withText: updateData)
        
    }
    
    @IBAction func editDataWithProperty(_ sender: UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        editScreen.updatingData = dataLabel.text ?? ""
        
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    
    
    private func updateTextLable(withText text:String){
        dataLabel.text = text
    }


}

