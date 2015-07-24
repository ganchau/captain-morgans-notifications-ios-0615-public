//
//  Ship+convenienceMethods.h
//  OpenMe
//
//  Created by Gan Chau on 7/23/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Ship.h"

@interface Ship (convenienceMethods)

+ (instancetype)shipFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context;

@end
