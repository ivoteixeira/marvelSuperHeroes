//
//  PushAnimator.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 25/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTPushAnimator.h"
#import "IJTFavoritesViewController.h"

static NSTimeInterval const kTransitionDuration = 1.0;
static CGFloat const kAplhaValue = 0.0;
static CGFloat const kAplhaValueDuringTransition = 1.0;

@implementation IJTPushAnimator

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext {
   
    return kTransitionDuration;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    UIViewController* toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    [[transitionContext containerView] addSubview:toViewController.view];
    
    toViewController.view.alpha = kAplhaValue;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        toViewController.view.alpha = kAplhaValueDuringTransition;
        
    } completion:^(BOOL finished) {
       
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
    
    
}

@end
