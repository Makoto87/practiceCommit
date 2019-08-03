//
//  ViewController.swift
//  MemoAppRestudy
//
//  Created by VERTEX20 on 2019/08/03.
//  Copyright © 2019 VERTEX20. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var textView: UITextView!
    
    //開くときに1度だけ必ず呼ばれる
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.delegate = self
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        textView.text = appDelegate.lastText
    }
    
    
    @IBAction func tapDeleteButton(_ sender: Any) {
        textView.text = ""
        saveText()
    }
    
    func saveText() {
     let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.lastText = textView.text
    }
    


}

