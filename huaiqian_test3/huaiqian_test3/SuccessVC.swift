//
//  SuccessVC.swift
//  huaiqian_test3
//
//  Created by Qian Huai on 2022/7/28.
//

import UIKit

class SuccessVC: UIViewController {

    var text:String = ""
    
    
    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        testLabel.text = text
    }
    
    @IBAction func clickExitButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
