//
//  EventCell.swift
//  EventWeek_CollectionView
//
//  Created by Duy Bùi on 5/2/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit

class EventCell: UICollectionViewCell {
    
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    func configCellWith(event: Event){
        lblAddress.text = event.address
        lblDescription.text = event.description
        lblTitle.text = event.title
    }
}
