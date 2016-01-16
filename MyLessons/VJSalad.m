//
//  VJSalad.m
//  MyLessons
//
//  Created by Jerry on 16/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "VJSalad.h"

@implementation VJSalad

//For comments check up "AppDelegate.m" file.
-(void) howToDo {
    NSLog(@"Как сделать салат в 3 часа утра.");
    [self vegetables];
    [self cutting];
    [self dressing];
    [self result];
    NSLog(@" ");
    NSLog(@"Улыбайтесь чаще ^_^");
}

-(void) vegetables {
    NSLog(@"Скорее всего надо взять каких-то овощей. Ведь это же салат. Так... Что у меня есть в холодильнике?");
}

-(void) cutting {
    NSLog(@"Ничего там нет. Брррр. Знаете, я вот что подумала:");
}

-(void) dressing {
    NSLog(@"На кой черт Вам салат в ТРИ ЧАСА УТРА? Конечно, ночь - лучшее время для походов к холодильнику, но... Может не стоит?");
}

-(void) result {
    NSLog(@"Вывод однозначный: пора идти спать! Задание выполнено. Салат не придумывается. Вставать в 8 утра, т.е. через 4 часа.");
}

@end
