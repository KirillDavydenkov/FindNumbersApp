//
//  RecordViewController.swift
//  Find Number
//
//  Created by Кирилл Давыденков on 20.2.23..
//

import UIKit

class RecordViewController: UIViewController {
    

    @IBOutlet weak var recordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let record = UserDefaults.standard.integer(forKey: KeysUserDefaults.recordGame)
        if record != 0 {
            recordLabel.text = "Ваш рекорд - \(record)"
        } else {
            recordLabel.text = "Рекорд не установлен"
        }
    }
    
    
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
