//
//  HeaderView.swift
//  EventWeek_CollectionView
//
//  Created by Duy Bùi on 5/2/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
        
    @IBOutlet weak var lblTitle: UILabel!
    
    var title: String! {
        didSet {
            lblTitle.text = title
        }
    }
}
