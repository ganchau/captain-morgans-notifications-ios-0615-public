//
//  Pirate+convenienceMethods.m
//  OpenMe
//
//  Created by Gan Chau on 7/23/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Pirate+convenienceMethods.h"

@implementation Pirate (convenienceMethods)

+ (instancetype)pirateFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context
{
    Pirate *newPirate = [NSEntityDescription insertNewObjectForEntityForName:@"Pirate" inManagedObjectContext:context];
    
    newPirate.name = dictionary[@"pirateName"];
    
    return newPirate;
}

//    FISPiratesDataStore *store = [FISPiratesDataStore sharedPiratesDataStore];
//    Pirate *newPirate = [NSEntityDescription insertNewObjectForEntityForName:@"Pirate" inManagedObjectContext:store.managedObjectContext];
//    newPirate.name = self.pirateNameField.text;
//
//    [store save];

@end
