//
//  Food+CoreDataProperties.h
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/10/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Food.h"

NS_ASSUME_NONNULL_BEGIN

@interface Food (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *servingSize;
@property (nullable, nonatomic, retain) NSString *targetNutrient;
@property (nullable, nonatomic, retain) NSString *foodName;
@property (nullable, nonatomic, retain) NSNumber *carbServ;
@property (nullable, nonatomic, retain) NSNumber *proServ;
@property (nullable, nonatomic, retain) NSNumber *fatServ;
@property (nullable, nonatomic, retain) NSNumber *targetServ;
@property (nullable, nonatomic, retain) NSDate *timeStamp;

@end

NS_ASSUME_NONNULL_END
