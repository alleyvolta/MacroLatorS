//
//  DetailViewController.m
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/15/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//

#import "DetailViewController.h"
#import "Food.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateStyle = NSDateFormatterMediumStyle;
        dateFormatter.timeStyle = NSDateFormatterNoStyle;
        
        NSDate *date = [self.detailItem valueForKey:@"timeStamp"];
        
        // US English Locale (en_US)
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        
        //
        NSString *timeStampLabel = [dateFormatter stringFromDate:date];
        //
        self.timeStampLabel.text = timeStampLabel;;
        //
        self.foodNameLabel.text = [[self.detailItem valueForKey:@"foodName"] description];
        self.targetNutrient.text = [[self.detailItem valueForKey:@"targetNutrient"] description];
        self.targetServing.text = [[self.detailItem valueForKey:@"targetServ"] description];
        //
        self.servSizeCalc.text = [[self.detailItem valueForKey:@"servSizeCalc"] description];
        self.proServCalc.text = [[self.detailItem valueForKey:@"proServCalc"] description];
        self.carbServCalc.text = [[self.detailItem valueForKey:@"carbServCalc"] description];
        self.fatServCalc.text = [[self.detailItem valueForKey:@"fatServCalc"] description];
        //
        self.servingSize.text = [[self.detailItem valueForKey:@"servingSize"] description];
        self.fatServ.text = [[self.detailItem valueForKey:@"fatServ"] description];
        self.carbServ.text = [[self.detailItem valueForKey:@"carbServ"] description];
        self.proServ.text = [[self.detailItem valueForKey:@"proServ"] description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end