//
//  VJFriends.h
//  MyLessons
//
//  Created by Jerry on 25/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VJFriends : NSObject

@property (nonatomic, strong, readonly) NSString * name;
@property (nonatomic, assign, readonly) NSInteger phone;
@property (nonatomic, assign) NSInteger day;
@property (nonatomic, strong) NSString * color;


- (instancetype)initWithName: (NSString*)name andPhone: (NSInteger) phone;
- (NSInteger) birthday: (NSInteger) day;
- (NSString*) favColor: (NSString*) color;

@end
