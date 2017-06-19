//
//  AppDelegate.h
//  Tapper-OBJc
//
//  Created by Cale Riggs on 5/22/17.
//  Copyright © 2017 Cale Riggs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

