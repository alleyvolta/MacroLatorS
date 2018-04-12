//
//  SavedCDTVC.h
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/15/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class DetailViewController;

@interface SavedCDTVC : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
