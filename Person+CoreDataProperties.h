//
//  Person+CoreDataProperties.h
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/10/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *userName;
@property (nullable, nonatomic, retain) NSNumber *height;
@property (nullable, nonatomic, retain) NSNumber *weight;
@property (nullable, nonatomic, retain) NSNumber *age;

@end

NS_ASSUME_NONNULL_END
