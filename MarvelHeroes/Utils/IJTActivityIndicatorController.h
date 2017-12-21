//
//  IJTActivityIndicatorController.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 29/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IJTActivityIndicatorController : NSObject

+ (UIActivityIndicatorView*)showActivityIndicator:(UIView*)view;
+ (void)stopActivityIndicator:(UIActivityIndicatorView*)activityView;

@end
