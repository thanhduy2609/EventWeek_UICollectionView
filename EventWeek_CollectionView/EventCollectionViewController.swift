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

    lazy var eventInDays: [EventInDay] = {
        return EventInDay.eventInDays()
    }()

    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if Constants.isLoadDataAgain{
            let day: String = Constants.day;
            let event: Event = Constants.event
            if day == "Monday" {
                eventInDays[0].events.append(event);
            }
            else if day == "Tuesday" {
                eventInDays[1].events.append(event)
            }
            else if day == "Wednesday" {
                eventInDays[2].events.append(event)
            }
            else if day == "Thursday" {
                eventInDays[3].events.append(event)
            }
            else if day == "Friday" {
                eventInDays[4].events.append(event)
            }
            else if day == "Saturday" {
                eventInDays[5].events.append(event)
            }
            else  {
                eventInDays[6].events.append(event)
            }
           // eventInDays = EventInDay.eventInDays()
            collectionView?.reloadData()
            Constants.isLoadDataAgain = false;

        }
    }
    
    //MARK: UICollectionViewDataSouce
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        //return EventInDay.eventInDays().count
        return eventInDays.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return EventInDay.eventInDays()[section].events.count
        return eventInDays[section].events.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryBoard.eventCell, for: indexPath) as! EventCell
        
        //let event = EventInDay.eventInDays()[indexPath.section].events[indexPath.row];
        let event = eventInDays[indexPath.section].events[indexPath.item];
        
        cell.configCellWith(event: event)
        return cell;
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: StoryBoard.headerView, for: indexPath) as! HeaderView
        
        //let eventInDay = EventInDay.eventInDays()[indexPath.section]
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
            
            //let eventInDay = EventInDay.eventInDays()[index.section]
            let eventInDay = eventInDays[index.section];
            let event = eventInDay.events[index.item];

            
            detailVC.event = event
            detailVC.dayEvent = eventInDay.day
        
        }
    }
}
