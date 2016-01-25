//
//  VJTeen.m
//  MyLessons
//
//  Created by Jerry on 25/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "VJTeen.h"

@implementation VJTeen

- (instancetype)initWithShcoolNumber: (NSInteger) shcoolNumber
{
    self = [super init];
    if (self) {
        _shcoolNumber = shcoolNumber;
    }
    return self;
}

- (NSString*) teenFullName: (NSString*) fullName {
    return fullName;
}

@end
