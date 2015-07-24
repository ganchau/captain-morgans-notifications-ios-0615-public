//
//  Pirate+convenienceMethods.h
//  OpenMe
//
//  Created by Gan Chau on 7/23/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Pirate.h"

@interface Pirate (convenienceMethods)

+ (instancetype)pirateFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context;

@end
