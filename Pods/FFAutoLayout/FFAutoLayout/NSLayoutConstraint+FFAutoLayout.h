//
//  NSLayoutConstraint+FFAutoLayout.h
//  Farfetch
//
//  Created by Fábio Almeida on 17/12/15.
//  Copyright © 2015 Farfetch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (FFAutoLayout)

+ (NSLayoutConstraint *)leadingSpaceConstraintFromView:(UIView *)fromView
                                                toView:(UIView *)toView
                                              relation:(NSLayoutRelation)relation
                                            multiplier:(CGFloat)multiplier
                                              constant:(CGFloat)constant;

+ (NSLayoutConstraint *)trailingSpaceConstraintFromView:(UIView *)fromView
                                                 toView:(UIView *)toView
                                               relation:(NSLayoutRelation)relation
                                             multiplier:(CGFloat)multiplier
                                               constant:(CGFloat)constant;

+ (NSLayoutConstraint *)topSpaceConstraintFromView:(UIView *)fromView
                                            toView:(UIView *)toView
                                          relation:(NSLayoutRelation)relation
                                        multiplier:(CGFloat)multiplier
                                          constant:(CGFloat)constant;

+ (NSLayoutConstraint *)bottomSpaceConstraintFromView:(UIView *)fromView
                                               toView:(UIView *)toView
                                             relation:(NSLayoutRelation)relation
                                           multiplier:(CGFloat)multiplier
                                             constant:(CGFloat)constant;

+ (NSLayoutConstraint *)widthConstraintFromView:(UIView *)fromView
                                         toView:(UIView *)toView
                                       relation:(NSLayoutRelation)relation
                                     multiplier:(CGFloat)multiplier
                                       constant:(CGFloat)constant;

+ (NSLayoutConstraint *)heightConstraintFromView:(UIView *)fromView
                                          toView:(UIView *)toView
                                        relation:(NSLayoutRelation)relation
                                      multiplier:(CGFloat)multiplier
                                        constant:(CGFloat)constant;

+ (NSLayoutConstraint *)centerHorizontalConstraintFromView:(UIView *)fromView
                                                    toView:(UIView *)toView
                                                  relation:(NSLayoutRelation)relation
                                                multiplier:(CGFloat)multiplier
                                                  constant:(CGFloat)constant;

+ (NSLayoutConstraint *)centerVerticalConstraintFromView:(UIView *)fromView
                                                  toView:(UIView *)toView
                                                relation:(NSLayoutRelation)relation
                                              multiplier:(CGFloat)multiplier
                                                constant:(CGFloat)constant;

+ (NSLayoutConstraint *)horizontalSpaceConstraintFromView:(UIView *)fromView
                                                   toView:(UIView *)toView
                                                 relation:(NSLayoutRelation)relation
                                               multiplier:(CGFloat)multiplier
                                                 constant:(CGFloat)constant;

+ (NSLayoutConstraint *)verticalSpaceConstraintFromView:(UIView *)fromView
                                                 toView:(UIView *)toView
                                               relation:(NSLayoutRelation)relation
                                             multiplier:(CGFloat)multiplier
                                               constant:(CGFloat)constant;

@end
