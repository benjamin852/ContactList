//
//  ContactList.m
//  ContactList
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactListArray = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)addContact:(Contact *)newContact {
    [self.contactListArray addObject:newContact];
}
@end
