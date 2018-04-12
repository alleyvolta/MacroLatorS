//
//  DetailViewController.h
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/15/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *timeStampLabel;
@property (weak, nonatomic) IBOutlet UILabel *foodNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *servSizeCalc;
@property (weak, nonatomic) IBOutlet UILabel *proServCalc;
@property (weak, nonatomic) IBOutlet UILabel *fatServCalc;
@property (weak, nonatomic) IBOutlet UILabel *carbServCalc;
@property (weak, nonatomic) IBOutlet UILabel *targetNutrient;
@property (weak, nonatomic) IBOutlet UILabel *servingSize;
@property (weak, nonatomic) IBOutlet UILabel *fatServ;
@property (weak, nonatomic) IBOutlet UILabel *carbServ;
@property (weak, nonatomic) IBOutlet UILabel *proServ;
@property (weak, nonatomic) IBOutlet UILabel *targetServing;


@end


