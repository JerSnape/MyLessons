//
//  VJManager.h
//  MyLessons
//
//  Created by Jerry on 24/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VJManager : NSObject

@property (nonatomic, strong, readonly) NSString * name;
@property (nonatomic, strong, readonly) NSString * surname;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSString * notes;


- (instancetype)initWithName: (NSString*) name andSurname: (NSString*) surname;
- (NSInteger) age1: (NSInteger) age1;
- (NSString*) notes1: (NSString*) notes1;


@end
