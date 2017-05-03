//
//  EventCollectionViewController.swift
//  EventWeek_CollectionView
//
//  Created by Duy Bùi on 5/2/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class EventCollectionViewController: UICollectionViewController {

    var eventInDays = EventInDay.eventInDays();
    
    struct StoryBoard {
        static let headerView = "HeaderView"
        static let eventCell = "EventCell"
        static let showDetailSegue = "ShowDetail"
        
        static let leftAndRightPaddings: CGFloat = 2.0
        static let numberOfItemPerRow: CGFloat = 3.0

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let collectionViewWidth = collectionView?.frame.width
        
        let itemWidth = (collectionViewWidth! - StoryBoard.leftAndRightPaddings) / StoryBoard.numberOfItemPerRow
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UICollectionViewDataSouce
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return eventInDays.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventInDays[section].events.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryBoard.eventCell, for: indexPath) as! EventCell
        
        let event = eventInDays[indexPath.section].events[indexPath.item];
        
        cell.configCellWith(event: event)
        return cell;
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: StoryBoard.headerView, for: indexPath) as! HeaderView
        
        let eventInDay = eventInDays[indexPath.section];
        
        headerView.title = eventInDay.day
        
        return headerView
    }
    
    //UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: StoryBoard.showDetailSegue, sender: indexPath);
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.showDetailSegue {
            let detailVC = segue.destination as! DetailEventViewController
            let index = sender as! IndexPath
            
            let eventInDay = eventInDays[index.section];
            let event = eventInDay.events[index.item];

            
            detailVC.event = event
            detailVC.dayEvent = eventInDay.day
        
        }
    }
}
