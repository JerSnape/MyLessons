//
//  VJManager.m
//  MyLessons
//
//  Created by Jerry on 24/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "VJManager.h"

@implementation VJManager

- (instancetype)initWithName: (NSString*) name andSurname: (NSString*) surname
{
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
    }
    return self;
}

- (NSInteger) age1: (NSInteger) age1 {
    return age1;
}

- (NSString*) notes1: (NSString*) notes1 {
    return notes1;
}

@end
