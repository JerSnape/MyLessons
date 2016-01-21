//
//  VJMakeMe.m
//  MyLessons
//
//  Created by Jerry on 20/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "VJMakeMe.h"

@implementation VJMakeMe

//Creating methods for the new class.

+(void) makeMeReal {
    
    NSLog (@ "Now you are real!");
}

+(void) makeMeRealOn: (NSInteger) percent {
    
    NSLog (@"Now make me real on %i percent!", percent);
}

+(NSString*) makeMeDiplomaWithName: (NSString*) name andAge: (NSInteger) age {
    
    NSLog (@ "Our great student %@ has finished the course at the age of %i!", name, age);
    return name;
}

-(void) makeMeSmile {
    
    NSLog (@ "No jokes are available for you since 1999. Sorry...");
}

-(void) makeItWithString: (NSString*) text {
    NSLog (@ "Your string is: %@", text);
}

-(NSInteger) makeItDouble: (NSInteger) z withOtherNumber: (NSInteger) x {
    
    z = 2;
    int res = z*x;
    NSLog (@"The result will be saved as: %i!", res);
    return res;
    
}


@end
