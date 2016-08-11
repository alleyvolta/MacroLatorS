//
//  ViewController.m
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/9/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//

#import "ViewController.h"
#import "MenuViewController.h"
#import "CalculatorViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize managedObjectContext;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSManagedObjectContext *context = [self managedObjectContext];
    if (!context) {
        NSLog(@"There is an error!!!");
    }
    
    if (context == nil) {
        NSLog(@"Context is nil in viewController");
    }
    else {
        NSLog(@"Context is set in viewController");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
