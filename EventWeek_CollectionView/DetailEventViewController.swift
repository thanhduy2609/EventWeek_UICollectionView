//
//  DetailEventViewController.swift
//  EventWeek_CollectionView
//
//  Created by Duy Bùi on 5/2/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {

    
    @IBOutlet weak var lblDay: UILabel!
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDes: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    
    var event: Event?
    var dayEvent: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDes.text = event?.description
        lblTitle.text = event?.title
        lblAddress.text = event?.address
        lblDay.text = dayEvent;
    }

}
