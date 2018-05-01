//
//  ViewController.m
//  LanlyHigh
//
//  Created by Laurence Wingo on 11/6/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize mySwitch;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*Make sure our view is white*/
    self.view.backgroundColor = [UIColor redColor];
    
    /*Create the switch*/
    self.mySwitch = [[UISwitch alloc] initWithFrame: CGRectMake(100, 100, 0, 0)];
    [self.view addSubview:self.mySwitch];
    [self.mySwitch setOn:YES];
    
    
    [self.mySwitch addTarget:self action:@selector(switchIsChanged:) forControlEvents:UIControlEventValueChanged];
    
    
    if ([self.mySwitch isOn]){
        NSLog(@"The switch is on.");
    } else {
        NSLog(@"The switch is off.");
    }
}

-(void) switchIsChanged:(UISwitch *)paramSender{
    NSLog(@"Sender is = %@", paramSender);
    
    if ([paramSender isOn]){
        NSLog(@"The switch is turned on.");
    } else {
        NSLog(@"The switch is turned off.");
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
