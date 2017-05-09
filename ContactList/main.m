//
//  main.m
//  ContactList
//
//  Created by Ben Weinberg on 2017-03-07.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        while (true) {
            NSString *inputString = [inputCollector inputString:@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application"];
            
            if ([inputString isEqualToString:@"quit"]) {
                break;
            }
            
            Contact *contact = [[Contact alloc] init];
            if ([inputString isEqualToString:@"new"]) {
                NSString *promptString = [inputCollector inputString:@"Please enter your name and email"];
                contact.name = promptString;
                contact.email = promptString;
                [contactList addContact:contact];
            }
            
            if ([inputString isEqualToString:@"list"]) {
                for (Contact *contact in contactList.contactListArray) {
                    NSLog(@"%@", contact);
                }
            }
        }
    }
    return 0;
}
