//
//  IJTActivityIndicatorController.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 29/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTActivityIndicatorController.h"

@implementation IJTActivityIndicatorController

+ (UIActivityIndicatorView *)showActivityIndicator:(UIView*)view {
    
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    [view addSubview:activityIndicator];
    
    [activityIndicator setTranslatesAutoresizingMaskIntoConstraints:NO];
    [activityIndicator.centerXAnchor constraintEqualToAnchor:view.centerXAnchor].active = YES;
    [activityIndicator.centerYAnchor constraintEqualToAnchor:view.centerYAnchor].active = YES;
    [activityIndicator.widthAnchor constraintEqualToConstant:view.frame.size.width/2].active = YES;
    [activityIndicator.heightAnchor constraintEqualToConstant:view.frame.size.width/2].active = YES;
    
    [activityIndicator setColor:[UIColor redColor]];
    [activityIndicator startAnimating];
    
    return activityIndicator;
}

+ (void)stopActivityIndicator:(UIActivityIndicatorView*)activityView {
    
    [activityView removeFromSuperview];
}

@end
