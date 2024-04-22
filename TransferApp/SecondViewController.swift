//
//  SecondViewController.swift
//  TransferApp
//
//  Created by Дмитрий Грибанский on 16.04.2024.
//

import UIKit

class SecondViewController : UIViewController {
    
    var updatingData: String = ""
    
    @IBOutlet var dataTextField: UITextField!
    
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
    
    @IBAction func saveDataWithProperty (_ sender: UIButton){
        
        self.navigationController?.viewControllers.forEach {
            viewController in (viewController as? ViewController)?.updateData = dataTextField.text ?? ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
            
        case "toFirstScreen": toFirstScreen(segue)
        default:break
        }
    }
    
    private func toFirstScreen(_ segue:UIStoryboardSegue){
        
        guard let destination = segue.destination as? ViewController else {return}
        
        destination.updateData = dataTextField.text ?? ""
        
        
        
        
        
    }
    
    
}
