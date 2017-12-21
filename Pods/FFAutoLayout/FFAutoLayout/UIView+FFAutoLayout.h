//
//  UIView+FFAutoLayout.h
//  Farfetch
//
//  Created by Fábio Almeida on 14/12/15.
//  Copyright © 2015 Farfetch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FFAutoLayout)

#pragma mark - Leading

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer;
- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;


#pragma mark - Trailing

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer;
- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;


#pragma mark - Top

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer;
- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;


#pragma mark - Bottom

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer;
- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;


#pragma mark - Width

- (nonnull NSLayoutConstraint *)ffs_constrainWidth:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainWidth:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainWidth:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_constrainEqualWidth:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainEqualWidth:(nonnull UIView *)view relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainWidthToView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainWidthToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainWidthToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualWidthToViews:(nonnull NSArray<UIView *> *)views;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualWidthToViews:(nonnull NSArray<UIView *> *)views relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;


#pragma mark - Height

- (nonnull NSLayoutConstraint *)ffs_constrainHeight:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainHeight:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainHeight:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_constrainEqualHeight:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainEqualHeight:(nonnull UIView *)view relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainHeightToView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainHeightToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainHeightToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHeightToViews:(nonnull NSArray<UIView *> *)views;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHeightToViews:(nonnull NSArray<UIView *> *)views relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;


#pragma mark - Alignment

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer;
- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer;
- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer:(CGFloat)constant;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;


#pragma mark - Fill

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer:(CGFloat)constant;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;


#pragma mark - Spacing

- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view;
- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant;
- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority;
+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier;

@end
