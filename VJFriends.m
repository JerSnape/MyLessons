//
//  VJFriends.m
//  MyLessons
//
//  Created by Jerry on 25/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "VJFriends.h"

@implementation VJFriends

- (instancetype)initWithName: (NSString*)name andPhone: (NSInteger) phone
{
    self = [super init];
    if (self) {
        _name = name;
        _phone = phone;
    }
    return self;
}

- (NSInteger) birthday: (NSInteger) day{
    return day;
}

- (NSString*) favColor: (NSString*) color {
    return color;
}

@end
