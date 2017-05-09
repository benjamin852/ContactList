//
//  ContactList.h
//  ContactList
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
@property (nonatomic) NSMutableArray *contactListArray;
-(void)addContact:(Contact *)newContact;
@end
