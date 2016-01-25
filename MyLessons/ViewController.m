//
//  ViewController.m
//  MyLessons
//
//  Created by Jerry on 16/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

//New classes included. And all futher comments you can find below.

#import "ViewController.h"
#import "VJLove.h"
#import "VJPoetry.h"
#import "VJSalad.h"
#import "VJMakeMe.h"
#import "VJManager.h"
#import "VJTeen.h"
#import "VJFriends.h"

@interface ViewController ()

//New properties, that everybody can use and see.
@property (weak, nonatomic) IBOutlet UILabel *rectWord;
@property (nonatomic, strong) VJManager * manager;
@property (nonatomic, strong) VJFriends * bff;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog (@"================================================");
    NSLog (@"Lesson 1. 3 classes and methods.");
    NSLog (@"================================================");
    
    //First class from lesson 1. This class has method "loveIs" that shows us what is important in love and family life.
    NSLog(@"First Class LOVE");
    NSLog(@" ");
    
    VJLove * myLove = [[VJLove alloc]init];
    [myLove loveIs];
    
    //We move to second class. Its method shows us several lines from the poem of a russian poet.
    NSLog(@" ");
    NSLog(@"Second Class POETRY");
    NSLog(@" ");
    
    VJPoetry * myPoetry = [[VJPoetry alloc]init];
    [myPoetry writeMePoem];
    
    //Last class. It supposed to show us HowToDo a salad, but most of time while I was codding I was sleeping so as a good IT-girl I should remake it later. Hehe! Not sure if this may happen ever after ^_^
    NSLog(@" ");
    NSLog(@"Third Class SALAD");
    NSLog(@" ");
    
    VJSalad * mySalad = [[VJSalad alloc]init];
    [mySalad howToDo];
    
    NSLog(@" ");
    NSLog(@"Jerry.");

    
    NSLog (@"================================================");
    NSLog (@"Lesson 2. easy numbers to objects and back test.");
    NSLog (@"================================================");
    
    //Make easy number ver-s.
    NSInteger one = 30;
    NSUInteger two = 45;
    CGFloat three = 56.8;
    
    NSLog (@ "Numbers easy at the start %i, %i, %f", one, two, three);
    
    //Convert them to objects.
    NSNumber * one1 = [NSNumber numberWithInteger:one];
    NSNumber * two2 = [NSNumber numberWithInteger:two];
    NSNumber * three3 = [NSNumber numberWithFloat:three];
    
    NSLog (@ "Numbers to Objects %@, %@, %@", one1, two2, three3);
    
    //Convert back to easy var-s.
    NSInteger one11 = [one1 integerValue];
    int two22 = [two2 intValue];
    CGFloat three33 = [three3 floatValue];
    
    NSLog (@ "Numbers easy at the end %i, %i, %f", one11, two22, three33);
    NSLog (@"================================================");
    NSLog (@"Lesson 3. Methods.");
    NSLog (@"================================================");
    
    //Lesson 3. Methods of the copy of new class.
    
    VJMakeMe * niceMethods = [[VJMakeMe alloc]init];
    
    [niceMethods makeMeSmile];
    [niceMethods makeItWithString:@"Nice try! Go on, sweetheart!"];
    [niceMethods makeItDouble:2 withOtherNumber:3];
    [niceMethods makeMeFfromC:24];
   
    
    //Lesson 3. Class methods.
    NSLog (@"");
    
    [VJMakeMe makeMeReal];
    [VJMakeMe makeMeRealOn:100];
    [VJMakeMe makeMeDiplomaWithName:@"Valkiriia" andAge:16];
    
    NSLog (@"================================================");
    NSLog (@"Lesson 4. Human classes and methods.");
    NSLog (@"================================================");
    
    //Creating new object MANAGER using property in this file.
    self.manager = [[VJManager alloc]initWithName:@"John" andSurname:@"Smith"];
    self.manager.age = 38;
    _manager.notes = @"Hard person but very smart"; //Using _manager like SELF earlier.
    NSLog (@"\n TOP manager has name: %@ and surname: %@. \n Age: %i. \n Special notes: %@.", self.manager.name, self.manager.surname, self.manager.age, self.manager.notes);
    
    // Creating new object of MANAGER class using regular method.
    VJManager * helper = [[VJManager alloc]initWithName: @"Martin" andSurname:@"Collins"];
    int i = [helper age1: 29];
    NSString * n = [helper notes1:@"Nice guy, good helper"];
    NSLog (@ "\n His helper's has name: %@ and surname: %@. Age: %i. Notes: %@.", helper.name, helper.surname,i,n);
    
    
    //Creating new objects of TEEN class.
    VJTeen * teen1 = [[VJTeen alloc]initWithShcoolNumber:1256];
    NSLog (@"\n New pupil: %@ comes to shcool %i at January 25, 2016.", [teen1 teenFullName:@"Alex Barween"],teen1.shcoolNumber);
    
    VJTeen *teen2 = [[VJTeen alloc]initWithShcoolNumber:1256];
    NSString * teensName = [teen2 teenFullName:@"Max Lawrence"];
    NSLog (@"\n New pupil: %@ comes to shcool %i at January 25, 2016.", teensName, teen2.shcoolNumber);
    
    
    //Creating new objects of FRIENDS class.
    self.bff = [[VJFriends alloc]initWithName:@"Johny" andPhone:5781514];
    self.bff.day = 28;
    _bff.color = @"red";
    VJFriends * fr1 = [[VJFriends alloc] initWithName:@"Mike" andPhone:3452667];
    VJFriends * fr2 = [[VJFriends alloc] initWithName:@"Kitton" andPhone:1298736];
    NSLog (@"\n NAMEandPHONE***** BIRTHDAY***** COLOR*****\n %@  %i      %i           %@     \n %@   %i      %i           %@     \n %@ %i      %i            %@", self.bff.name, self.bff.phone, self.bff.day, self.bff.color, [fr1 name], [fr1 phone], [fr1 birthday:12], [fr1 favColor:@"blue"], [fr2 name], [fr2 phone], [fr2 birthday:03], [fr1 favColor:@"black and pink"]);
    


    
//    
//    // Make three rectangles for the storyboard.
//    
//    CGRect rect1 = CGRectMake(130, 60, 60, 30);
//    CGRect rect2 = CGRectMake(130, 150, 60, 30);
//    CGRect rect3 = CGRectMake(130, 240, 60, 30);
//    
//    UIView * rectView1 = [[UIView alloc] initWithFrame:rect1];
//    rectView1.backgroundColor = [UIColor purpleColor];
//    [self.view addSubview:rectView1];
//    
//    UIView * rectView2 = [[UIView alloc] initWithFrame:rect2];
//    rectView2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rectView2];
//    
//    UIView * rectView3 = [[UIView alloc] initWithFrame:rect3];
//    rectView3.backgroundColor = [UIColor redColor];
//    [self.view addSubview:rectView3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
