//
//  VJModel.m
//  MyLessons
//
//  Created by Jerry on 31/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "VJModel.h"


@implementation VJModel

- (void) getData {

NSMutableArray * arrayData = [NSMutableArray array];

NSArray * words = [[NSArray alloc]initWithObjects:@"Love", @"Friendship", @"Family", @"Happiness", @"Kindness", @"Peace", @"Children", @"Hobby", @"Holidays", @"Harmony", @"Sky", @"Sun", @"Stars", @"Smile", @"Romantism", @"Rainbow", @"The End", nil];
NSArray * meanings = [[NSArray alloc]initWithObjects:@"Любовь", @"Дружба", @"Семья", @"Счастье", @"Доброта", @"Мир", @"Дети", @"Хобби", @"Каникулы", @"Гармония", @"Небо", @"Солнце", @"Звезды", @"Улыбка", @"Романтизм", @"Радуга", @"Конец", nil];


for (int i =0; i<words.count; i++) {
    
    NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:[words objectAtIndex:i], @"words", [meanings objectAtIndex:i], @"meanings", nil];
    
    [arrayData addObject:dict];
    
    if ([[words objectAtIndex:i] isEqual: [words lastObject]]) {
        NSArray * totalArray = [[NSArray alloc] initWithArray:arrayData];
        [self.delegate getData: self array: totalArray];
    }
  }
}


@end
