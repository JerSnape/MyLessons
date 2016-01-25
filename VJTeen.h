//
//  VJTeen.h
//  MyLessons
//
//  Created by Jerry on 25/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VJTeen : NSObject

@property (nonatomic, assign, readonly) NSInteger shcoolNumber;

- (instancetype)initWithShcoolNumber: (NSInteger) shcoolNumber;
- (NSString*) teenFullName: (NSString*) fullName;

@end
