//
//  CalculatorViewController.h
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/9/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//

#import "ViewController.h"

@interface CalculatorViewController : ViewController
// UI View Variable decleration and attachment
@property (weak, nonatomic) IBOutlet UITextField *foodName;
//Serving information variables
@property (weak, nonatomic) IBOutlet UITextField *servingSize;
//Carbs information variables
@property (weak, nonatomic) IBOutlet UITextField *carbsServing;
//Protein information variables
@property (weak, nonatomic) IBOutlet UITextField *proteinServing;
//Fat information variables
@property (weak, nonatomic) IBOutlet UITextField *fatServing;
//Target nutrient information variables
@property (weak, nonatomic) IBOutlet UITextField *targetServing;
//
@property (weak, nonatomic) IBOutlet UISegmentedControl *targetNutrient;
//Output labels
@property (weak, nonatomic) IBOutlet UILabel *saveState;
@property (weak, nonatomic) IBOutlet UILabel *calculatedServing;
@property (weak, nonatomic) IBOutlet UILabel *calculatedCarbs;
@property (weak, nonatomic) IBOutlet UILabel *calculatedProtein;
@property (weak, nonatomic) IBOutlet UILabel *calculatedFat;
@property (weak, nonatomic) IBOutlet UILabel *calculatedNutrient;
//Nutrient Segmented control
- (IBAction)nutrientChoice:(id)sender;
// Display calculated nutrient values
- (IBAction)displayValues:(id)sender;
// Save nutrient input and calculation information
- (IBAction)saveFood:(id)sender;

@end
