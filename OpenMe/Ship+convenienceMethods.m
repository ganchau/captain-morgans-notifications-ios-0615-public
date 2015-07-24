//
//  Ship+convenienceMethods.m
//  OpenMe
//
//  Created by Gan Chau on 7/23/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Ship+convenienceMethods.h"
#import "Engine.h"
#import "Pirate.h"

@implementation Ship (convenienceMethods)

+ (instancetype)shipFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context
{
    Ship *newShip = [NSEntityDescription insertNewObjectForEntityForName:@"Ship" inManagedObjectContext:context];
    Engine *newEngine = [NSEntityDescription insertNewObjectForEntityForName:@"Engine" inManagedObjectContext:context];
    
    newShip.name = dictionary[@"shipName"];
    newShip.engine = newEngine;
    newShip.engine.engineType = dictionary[@"engineType"];
    [dictionary[@"pirate"] addShipsObject:newShip];
    
    return newShip;
}

//    [self dismissViewControllerAnimated:YES completion:nil];
//
//    FISPiratesDataStore *store = [FISPiratesDataStore sharedPiratesDataStore];
//    Ship *newShip = [NSEntityDescription insertNewObjectForEntityForName:@"Ship" inManagedObjectContext:store.managedObjectContext];
//    newShip.name = self.shipNameField.text;
//    newShip.engine = [NSEntityDescription insertNewObjectForEntityForName:@"Engine" inManagedObjectContext:store.managedObjectContext];
//    newShip.engine.engineType = self.engineTypeField.text;
//
//    [self.pirate addShipsObject:newShip];
//
//    [store save];
//    [self dismissViewControllerAnimated:YES completion:nil];

@end
