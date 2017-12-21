//
//  NSLayoutConstraint+FFAutoLayout.m
//  Farfetch
//
//  Created by Fábio Almeida on 17/12/15.
//  Copyright © 2015 Farfetch. All rights reserved.
//

#import "NSLayoutConstraint+FFAutoLayout.h"

@implementation NSLayoutConstraint (FFAutoLayout)

#pragma mark - Public (NSLayoutConstraint Specific)

+ (NSLayoutConstraint *)leadingSpaceConstraintFromView:(UIView *)fromView
                                                toView:(UIView *)toView
                                              relation:(NSLayoutRelation)relation
                                            multiplier:(CGFloat)multiplier
                                              constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeLeading
                                      toAttribute:NSLayoutAttributeLeading
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}

+ (NSLayoutConstraint *)trailingSpaceConstraintFromView:(UIView *)fromView
                                                 toView:(UIView *)toView
                                               relation:(NSLayoutRelation)relation
                                             multiplier:(CGFloat)multiplier
                                               constant:(CGFloat)constant {

    // in trailing contraint we need to invert the views order so that we don't need to use negative constants
    return [NSLayoutConstraint constraintFromItem:toView
                                           toItem:fromView
                                    fromAttribute:NSLayoutAttributeTrailing
                                      toAttribute:NSLayoutAttributeTrailing
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant
                              itemUsingAutoLayout:fromView];
}

+ (NSLayoutConstraint *)topSpaceConstraintFromView:(UIView *)fromView
                                            toView:(UIView *)toView
                                          relation:(NSLayoutRelation)relation
                                        multiplier:(CGFloat)multiplier
                                          constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeTop
                                      toAttribute:NSLayoutAttributeTop
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}

+ (NSLayoutConstraint *)bottomSpaceConstraintFromView:(UIView *)fromView
                                               toView:(UIView *)toView
                                             relation:(NSLayoutRelation)relation
                                           multiplier:(CGFloat)multiplier
                                             constant:(CGFloat)constant {

    // in bottom contraint we need to invert the views order so that we don't need to use negative constants
    return [NSLayoutConstraint constraintFromItem:toView
                                           toItem:fromView
                                    fromAttribute:NSLayoutAttributeBottom
                                      toAttribute:NSLayoutAttributeBottom
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant
                              itemUsingAutoLayout:fromView];
}

+ (NSLayoutConstraint *)widthConstraintFromView:(UIView *)fromView
                                         toView:(UIView *)toView
                                       relation:(NSLayoutRelation)relation
                                     multiplier:(CGFloat)multiplier
                                       constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeWidth
                                      toAttribute:toView ? NSLayoutAttributeWidth : NSLayoutAttributeNotAnAttribute
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}

+ (NSLayoutConstraint *)heightConstraintFromView:(UIView *)fromView
                                          toView:(UIView *)toView
                                        relation:(NSLayoutRelation)relation
                                      multiplier:(CGFloat)multiplier
                                        constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeHeight
                                      toAttribute:toView ? NSLayoutAttributeHeight : NSLayoutAttributeNotAnAttribute
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}

+ (NSLayoutConstraint *)centerHorizontalConstraintFromView:(UIView *)fromView
                                                    toView:(UIView *)toView
                                                  relation:(NSLayoutRelation)relation
                                                multiplier:(CGFloat)multiplier
                                                  constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeCenterX
                                      toAttribute:NSLayoutAttributeCenterX
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}

+ (NSLayoutConstraint *)centerVerticalConstraintFromView:(UIView *)fromView
                                                  toView:(UIView *)toView
                                                relation:(NSLayoutRelation)relation
                                              multiplier:(CGFloat)multiplier
                                                constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeCenterY
                                      toAttribute:NSLayoutAttributeCenterY
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}

+ (NSLayoutConstraint *)horizontalSpaceConstraintFromView:(UIView *)fromView
                                                   toView:(UIView *)toView
                                                 relation:(NSLayoutRelation)relation
                                               multiplier:(CGFloat)multiplier
                                                 constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeLeading
                                      toAttribute:NSLayoutAttributeTrailing
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}

+ (NSLayoutConstraint *)verticalSpaceConstraintFromView:(UIView *)fromView
                                                 toView:(UIView *)toView
                                               relation:(NSLayoutRelation)relation
                                             multiplier:(CGFloat)multiplier
                                               constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromView
                                           toItem:toView
                                    fromAttribute:NSLayoutAttributeTop
                                      toAttribute:NSLayoutAttributeBottom
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant];
}


#pragma mark - Private (NSLayoutConstraint Generic)

+ (NSLayoutConstraint *)constraintFromItem:(UIView *)fromItem
                                    toItem:(UIView *)toItem
                             fromAttribute:(NSLayoutAttribute)fromAttribute
                               toAttribute:(NSLayoutAttribute)toAttribute
                                  relation:(NSLayoutRelation)relation
                                multiplier:(CGFloat)multiplier
                                  constant:(CGFloat)constant {

    return [NSLayoutConstraint constraintFromItem:fromItem
                                           toItem:toItem
                                    fromAttribute:fromAttribute
                                      toAttribute:toAttribute
                                         relation:relation
                                       multiplier:multiplier
                                         constant:constant
                              itemUsingAutoLayout:fromItem];
}

+ (NSLayoutConstraint *)constraintFromItem:(UIView *)fromItem
                                    toItem:(UIView *)toItem
                             fromAttribute:(NSLayoutAttribute)fromAttribute
                               toAttribute:(NSLayoutAttribute)toAttribute
                                  relation:(NSLayoutRelation)relation
                                multiplier:(CGFloat)multiplier
                                  constant:(CGFloat)constant
                       itemUsingAutoLayout:(UIView *)itemUsingAutoLayout {

    if (itemUsingAutoLayout != nil) {

        itemUsingAutoLayout.translatesAutoresizingMaskIntoConstraints = NO;
    }

    return [NSLayoutConstraint constraintWithItem:fromItem
                                        attribute:fromAttribute
                                        relatedBy:relation
                                           toItem:toItem
                                        attribute:toAttribute
                                       multiplier:multiplier
                                         constant:constant];
}

@end
