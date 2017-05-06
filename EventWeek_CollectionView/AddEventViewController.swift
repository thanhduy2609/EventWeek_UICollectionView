//
//  AddEventViewController.swift
//  EventWeek_CollectionView
//
//  Created by Duy Bùi on 5/5/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {

    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var lblDay: UILabel!
    
    @IBAction func btnSave(_ sender: UIBarButtonItem) {
        if (txtTitle.text!.isEmpty || txtDescription.text!.isEmpty || txtAddress.text!.isEmpty){
            //create alert
            let alert = UIAlertController(title: "Thông Báo", message: "Bạn phải nhập đầy đủ thông tin", preferredStyle: UIAlertControllerStyle.alert);
            //add an action
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil));
            //show alert
            self.present(alert, animated: true, completion: nil);
        }
        else {
            Constants.isLoadDataAgain = true;
            let event: Event = Event(title: txtTitle.text!, description: txtDescription.text!, address: txtAddress.text!)
            Constants.event = event;
            Constants.day = Date().dayOfWeek()
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblDay.text = Date().dayOfWeek()!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
    }
}
