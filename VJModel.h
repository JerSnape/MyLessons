//
//  VJModel.h
//  MyLessons
//
//  Created by Jerry on 31/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ModelDelegate;

@interface VJModel : NSObject

@property (nonatomic, weak) id <ModelDelegate> delegate;
-(void) getData;

@end

@protocol ModelDelegate <NSObject>

-(void) getData: (VJModel *) model array: (NSArray *) array;

@end