//
//  ViewController.m
//  MyLessons
//
//  Created by Jerry on 16/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "ViewController.h"
#import "VJMakeMe.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *rectWord;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    
    //Lesson 3. Class methods.
    
    [VJMakeMe makeMeReal];
    [VJMakeMe makeMeRealOn:100];
    [VJMakeMe makeMeDiplomaWithName:@"Valkiriia" andAge:16];
    
     NSLog (@"================================================");
    
    // Make three rectangles for the storyboard.
    
    CGRect rect1 = CGRectMake(130, 60, 60, 30);
    CGRect rect2 = CGRectMake(130, 150, 60, 30);
    CGRect rect3 = CGRectMake(130, 240, 60, 30);
    
    UIView * rectView1 = [[UIView alloc] initWithFrame:rect1];
    rectView1.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:rectView1];
    
    UIView * rectView2 = [[UIView alloc] initWithFrame:rect2];
    rectView2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:rectView2];
    
    UIView * rectView3 = [[UIView alloc] initWithFrame:rect3];
    rectView3.backgroundColor = [UIColor redColor];
    [self.view addSubview:rectView3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
