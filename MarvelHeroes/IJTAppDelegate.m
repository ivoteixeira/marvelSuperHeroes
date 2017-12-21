//
//  AppDelegate.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 19/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTAppDelegate.h"
#import "IJTHeroesListingViewController.h"
#import "IJTNetworkLayerConfig.h"
#import "IJTNetworkLayer.h"


@implementation IJTAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Override point for customization after application launch.
    
    IJTNetworkLayerConfig *config = [[IJTNetworkLayerConfig alloc] initFromJson];
    
    IJTNetworkLayer.sharedInstance.config = config;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    
    IJTHeroesListingViewController *viewController = [[IJTHeroesListingViewController alloc] initWithCollectionViewLayout:layout];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    [navController.navigationBar setBarTintColor:[UIColor redColor]];
    
    self.window.rootViewController = navController;
    
    [self.window makeKeyAndVisible];
    
  
    return YES;
}

@end
