//
//  VJMakeMe.h
//  MyLessons
//
//  Created by Jerry on 20/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VJMakeMe : NSObject

//New class for practicing in methods.

+(void) makeMeReal;
+(void) makeMeRealOn: (NSInteger) percent;
+(NSString*) makeMeDiplomaWithName: (NSString*) name andAge: (NSInteger) age;

-(void) makeMeSmile;
-(void) makeItWithString: (NSString*) text;
-(NSInteger) makeItDouble: (NSInteger) z withOtherNumber: (NSInteger) x;

@end
