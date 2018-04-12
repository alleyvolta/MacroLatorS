//
//  CalculatorViewController.m
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/9/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//

#import "CalculatorViewController.h"
#import "math.h"
#import "Food.h"
#import "SavedCDTVC.h"

@interface CalculatorViewController () 

@end

// Helper Variable Decleration
float servSize;
float carbServ;
float proServ;
float fatServ;
float targetServ;
float servSizeCalc;
float carbServCalc;
float proServCalc;
float fatServCalc;
float targetServCalc;
float nutrientRatio;
float servRatio;
NSString *targetNutrient;

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Clears Keyboard when touch is outside of the text field
    [self.view endEditing:YES];
}

- (IBAction)nutrientChoice:(id)sender {
    //

}

- (IBAction)displayValues:(id)sender {
    NSString *labelTemp;
    //Input from text fields
    servSize = [_servingSize.text floatValue];
    carbServ = [_carbsServing.text floatValue];
    proServ = [_proteinServing.text floatValue];
    fatServ = [_fatServing.text floatValue];
    targetServ = [_targetServing.text floatValue];
    // ECC & Calculations for nutrient data
    switch ([_targetNutrient selectedSegmentIndex]) {
            //CARBS
        case 0:
            //check for zero carb and serving size
            if (carbServ == 0 || servSize == 0) {
                servSizeCalc = 0.0;
                carbServCalc = 0.0;
                proServCalc = 0.0;
                fatServCalc = 0.0;
                targetServCalc = 0.0;
            }
            else {
                //Serving calculations
                nutrientRatio = carbServ/servSize;
                servSizeCalc = targetServ/nutrientRatio;
                servRatio = servSizeCalc/servSize;
                carbServCalc = targetServ;
                proServCalc = servRatio*proServ;
                fatServCalc = servRatio*fatServ;
                targetServCalc = targetServ;
                
                //Output to label
                labelTemp = [NSString stringWithFormat:@"%.0f", targetServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedNutrient.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", servSizeCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedServing.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", carbServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedCarbs.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", proServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedProtein.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", fatServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedFat.text = labelTemp;
                
                targetNutrient = @"Carbohydrates";
                _saveState.text = @"";
            }
            break;
            //PROTEIN
        case 1:
            //check for zero protein and serving size
            if (proServ == 0 || servSize == 0) {
                servSizeCalc = 00;
                carbServCalc = 00;
                proServCalc = 00;
                fatServCalc = 00;
                targetServCalc = 0.0;
            }
            else {
                //Serving calculations
                nutrientRatio = proServ/servSize;
                servSizeCalc = targetServ/nutrientRatio;
                servRatio = servSizeCalc/servSize;
                carbServCalc = servRatio*carbServ;
                proServCalc = targetServ;
                fatServCalc = servRatio*fatServ;
                targetServCalc = targetServ;
                //Output to label
                labelTemp = [NSString stringWithFormat:@"%.0f", targetServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedNutrient.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", servSizeCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedServing.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", carbServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedCarbs.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", proServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedProtein.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", fatServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedFat.text = labelTemp;
                
                targetNutrient = @"Protein";
                _saveState.text = @"";
            }
            break;
            //FAT
        case 2:
            if (fatServ == 0 || servSize == 0 || targetServ == 0) {
                servSizeCalc = 00;
                carbServCalc = 00;
                proServCalc = 00;
                fatServCalc = 00;
                targetServCalc = 0.0;
            }
            else {
                //Serving calculations
                nutrientRatio = fatServ/servSize;
                servSizeCalc = targetServ/nutrientRatio;
                servRatio = servSizeCalc/servSize;
                carbServCalc = servRatio*carbServ;
                proServCalc = servRatio*proServ;
                fatServCalc = targetServ;
                targetServCalc = targetServ;
                //Output to label
                labelTemp = [NSString stringWithFormat:@"%.0f", targetServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedNutrient.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", servSizeCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedServing.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", carbServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedCarbs.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", proServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedProtein.text = labelTemp;
                
                labelTemp = [NSString stringWithFormat:@"%.0f", fatServCalc];
                labelTemp = [labelTemp stringByAppendingString:@"g"];
                _calculatedFat.text = labelTemp;
                
                targetNutrient = @"Fat";
                _saveState.text = @"";
            }
            break;
            //DEFAULT
        default:
            targetNutrient = @"SelectedSegment:ERROR";
            break;
    }
}

- (IBAction)saveFood:(id)sender {
    //
    if(_foodName.hasText && _servingSize.hasText && _carbsServing.hasText && _proteinServing.hasText && _fatServing.hasText && _targetServing.hasText){
        // Create Entity
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"Food" inManagedObjectContext:self.managedObjectContext];
        
        // Initialize Record
        NSManagedObject *record = [[NSManagedObject alloc] initWithEntity:entity insertIntoManagedObjectContext:self.managedObjectContext];
        
        float roundedValue;
        
        // Populate Record
            // User INPUT Data
        [record setValue:[NSDate date] forKey:@"timeStamp"];
        [record setValue:_foodName.text forKey:@"foodName"];
        [record setValue:targetNutrient forKey:@"targetNutrient"];
        [record setValue:[NSNumber numberWithFloat: servSize] forKey:@"servingSize"];
        [record setValue:[NSNumber numberWithFloat: carbServ] forKey:@"carbServ"];
        [record setValue:[NSNumber numberWithFloat: proServ] forKey:@"proServ"];
        [record setValue:[NSNumber numberWithFloat: fatServ] forKey:@"fatServ"];
        [record setValue:[NSNumber numberWithFloat: targetServ] forKey:@"targetServ"];
            // Calculation OUTPUT Data
        roundedValue = roundf(servSizeCalc);
        [record setValue:[NSNumber numberWithFloat: roundedValue] forKey:@"servSizeCalc"];
        roundedValue = roundf(carbServCalc);
        [record setValue:[NSNumber numberWithFloat: roundedValue] forKey:@"carbServCalc"];
        roundedValue = roundf(proServCalc);
        [record setValue:[NSNumber numberWithFloat: roundedValue] forKey:@"proServCalc"];
        roundedValue = roundf(fatServCalc);
        [record setValue:[NSNumber numberWithFloat: roundedValue] forKey:@"fatServCalc"];

        // Save Record
        NSError *error = nil;
        NSString *blankMessage = @"";
        if ([self.managedObjectContext save:&error]) {
            // Dismiss View Controller
            [self dismissViewControllerAnimated:YES completion:nil];
            // Clear text from UI
            _saveState.text = @"Saved ✓";
            _calculatedNutrient.text = blankMessage;
            _calculatedServing.text = blankMessage;
            _calculatedCarbs.text = blankMessage;
            _calculatedProtein.text = blankMessage;
            _calculatedFat.text = blankMessage;
              } else {
            if (error) {
                NSLog(@"Unable to save record.");
                NSLog(@"%@, %@", error, error.localizedDescription);
            }
        
            // Show Alert View
            [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do could not be saved." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        }
    }
    else {
        _saveState.text = @"BlankEntry:ERROR";
    }
}
 
 
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"showTable"])
    {
        // Get reference to the destination view controller
        SavedCDTVC *vc = [segue destinationViewController];
        
        NSManagedObjectContext *context = self.managedObjectContext;
        
        // Pass any objects to the view controller here, like...
        [vc setManagedObjectContext:context];
        
        //
        vc.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

@end
