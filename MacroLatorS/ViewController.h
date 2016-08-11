//
//  ViewController.h
//  MacroLatorS
//
//  Created by Alan Vitullo on 8/9/16.
//  Copyright © 2016 Alan Vitullo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSManagedObjectContext *managedObjectContext;
}

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end

