//
//  EventInDay.swift
//  Event_Week3
//
//  Created by Cntt03 on 4/22/17.
//  Copyright © 2017 Cntt03. All rights reserved.
//

import Foundation

class EventInDay{
    //create variables
    var day: String // name of day
    var events: [Event] // all events in day
    
    init(day: String, includeEvents: [Event]){
        self.day = day;
        self.events = includeEvents;
    }
    
    class func eventInDays() -> [EventInDay]{
        return [self.eventInMonday(), self.eventInTuesday(), self.eventInWednesday(), self.eventInThrusday()
        , self.eventInFriday(), self.eventInSaturday() ,self.eventInSunday()];
    }
    
    //create data
    private class func eventInMonday() -> EventInDay{
        //Monday has 2 events
        var events = [Event]();
        
        events.append(Event(title: "Event 1 - Monday", description: "Description of Event 1 - Monday", address: "Võ văn ngân"));
         events.append(Event(title: "Event 2 - Monday", description: "Description of Event 2 - Monday", address: "Võ văn ngân"));
        
        return EventInDay(day: "Monday", includeEvents: events)

    }
    
    //create data
    private class func eventInTuesday() -> EventInDay{
        //Tuesday has 3 events
        var events = [Event]();
        
        events.append(Event(title: "Event 1 - Tuesday", description: "Description of Event 1 - Tuesday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 2 - Tuesday", description: "Description of Event 2 - Tuesday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 3 - Tuesday", description: "Description of Event 3 - Tuesday", address: "Võ văn ngân"));
        return EventInDay(day: "Tuesday", includeEvents: events)
        
    }
    //create data
    private class func eventInWednesday() -> EventInDay{
        //Monday has 4 events
        var events = [Event]();
        
        events.append(Event(title: "Event 1 - Wednesday", description: "Description of Event 1 - Wednesday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 2 - Wednesday", description: "Description of Event 2 - Wednesday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 3 - Wednesday", description: "Description of Event 3 - Wednesday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 4 - Wednesday", description: "Description of Event 4 - Wednesday", address: "Võ văn ngân"));
        return EventInDay(day: "Wednesday", includeEvents: events)
        
    }
    
    //create data
    private class func eventInThrusday() -> EventInDay{
        //Monday has 4 events
        var events = [Event]();
        
        events.append(Event(title: "Event 1 - Thrusday", description: "Description of Event 1 - Thrusday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 2 - Thrusday", description: "Description of Event 2 - Thrusday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 3 - Thrusday", description: "Description of Event 3 - Thrusday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 4 - Thrusday", description: "Description of Event 4 - Thrusday", address: "Võ văn ngân"));
         events.append(Event(title: "Event 5 - Thrusday", description: "Description of Event 5 - Thrusday", address: "Võ văn ngân"));
        return EventInDay(day: "Thrusday", includeEvents: events)
        
    }

    //create data
    private class func eventInFriday() -> EventInDay{
        //Monday has 4 events
        var events = [Event]();
        
        events.append(Event(title: "Event 1 - Friday", description: "Description of Event 1 - Friday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 2 - Friday", description: "Description of Event 2 - Friday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 3 - Friday", description: "Description of Event 3 - Friday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 4 - Friday", description: "Description of Event 4 - Friday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 5 - Friday", description: "Description of Event 5 - Friday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 6 - Friday", description: "Description of Event 6 - Friday", address: "Võ văn ngân"));
        return EventInDay(day: "Friday", includeEvents: events)
        
    }

    //create data
    private class func eventInSaturday() -> EventInDay{
        //Monday has 4 events
        var events = [Event]();
        
        events.append(Event(title: "Event 1 - Saturday", description: "Description of Event 1 - Saturday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 2 - Saturday", description: "Description of Event 2 - Saturday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 3 - Saturday", description: "Description of Event 3 - Saturday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 4 - Saturday", description: "Description of Event 4 - Saturday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 5 - Saturday", description: "Description of Event 5 - Saturday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 6 - Saturday", description: "Description of Event 6 - Saturday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 7 - Saturday", description: "Description of Event 7 - Saturday", address: "Võ văn ngân"));
        return EventInDay(day: "Saturday", includeEvents: events)
        
    }

    //create data
    private class func eventInSunday() -> EventInDay{
        //Monday has 4 events
        var events = [Event]();
        
        events.append(Event(title: "Event 1 - Sunday", description: "Description of Event 1 - Sunday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 2 - Sunday", description: "Description of Event 2 - Sunday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 3 - Sunday", description: "Description of Event 3 - Sunday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 4 - Sunday", description: "Description of Event 4 - Sunday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 5 - Sunday", description: "Description of Event 5 - Sunday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 6 - Sunday", description: "Description of Event 6 - Sunday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 7 - Sunday", description: "Description of Event 7 - Sunday", address: "Võ văn ngân"));
        events.append(Event(title: "Event 8 - Sunday", description: "Description of Event 8 - Sunday", address: "Võ văn ngân"));
        return EventInDay(day: "Sunday", includeEvents: events)
        
    }



}
