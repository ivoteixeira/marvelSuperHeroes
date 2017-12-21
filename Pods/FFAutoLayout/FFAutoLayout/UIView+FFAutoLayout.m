//
//  UIView+FFAutoLayout.m
//  Farfetch
//
//  Created by Fábio Almeida on 14/12/15.
//  Copyright © 2015 Farfetch. All rights reserved.
//

#import "UIView+FFAutoLayout.h"
#import "NSLayoutConstraint+FFAutoLayout.h"

static const CGFloat kDefaultSpaceConstant = 0.0;
static const CGFloat kDefaultMultiplier = 1.0;
static const NSLayoutRelation kDefaultRelation = NSLayoutRelationEqual;
static const UILayoutPriority kDefaultPriority = UILayoutPriorityRequired;


@implementation UIView (FFAutoLayout)

#pragma mark - Public (Leading)

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer {

    return [self ffs_constrainLeadingSpaceToContainer:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer:(CGFloat)constant {

    return [self ffs_constrainLeadingSpaceToContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainLeadingSpaceToContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    return [self ffs_constrainLeadingSpaceToContainerView:self.superview constant:constant relation:relation priority:priority multiplier:multiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view {

    return [self ffs_constrainLeadingSpaceToContainerView:view constant:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainLeadingSpaceToContainerView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainLeadingSpaceToContainerView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainLeadingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *constraint = [NSLayoutConstraint leadingSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [view addConstraint:constraint];

    return constraint;
}


#pragma mark - Public (Trailing)

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer {

    return [self ffs_constrainTrailingSpaceToContainer:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer:(CGFloat)constant {

    return [self ffs_constrainTrailingSpaceToContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainTrailingSpaceToContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    return [self ffs_constrainTrailingSpaceToContainerView:self.superview constant:constant relation:relation priority:priority multiplier:multiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view {

    return [self ffs_constrainTrailingSpaceToContainerView:view constant:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainTrailingSpaceToContainerView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainTrailingSpaceToContainerView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTrailingSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *constraint = [NSLayoutConstraint trailingSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [view addConstraint:constraint];

    return constraint;
}


#pragma mark - Public (Top)

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer {

    return [self ffs_constrainTopSpaceToContainer:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer:(CGFloat)constant {

    return [self ffs_constrainTopSpaceToContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainTopSpaceToContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    return [self ffs_constrainTopSpaceToContainerView:self.superview constant:constant relation:relation priority:priority multiplier:multiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view {

    return [self ffs_constrainTopSpaceToContainerView:view constant:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainTopSpaceToContainerView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainTopSpaceToContainerView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainTopSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *constraint = [NSLayoutConstraint topSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [view addConstraint:constraint];

    return constraint;
}


#pragma mark - Public (Bottom)

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer {

    return [self ffs_constrainBottomSpaceToContainer:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer:(CGFloat)constant {

    return [self ffs_constrainBottomSpaceToContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainBottomSpaceToContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    return [self ffs_constrainBottomSpaceToContainerView:self.superview constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view {

    return [self ffs_constrainBottomSpaceToContainerView:view constant:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainBottomSpaceToContainerView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainBottomSpaceToContainerView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainBottomSpaceToContainerView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *constraint = [NSLayoutConstraint bottomSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [view addConstraint:constraint];

    return constraint;
}


#pragma mark - Public (Width)

- (nonnull NSLayoutConstraint *)ffs_constrainWidth:(CGFloat)constant {

    return [self ffs_constrainWidth:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainWidth:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainWidth:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainWidth:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint widthConstraintFromView:self toView:nil relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

- (nonnull NSLayoutConstraint *)ffs_constrainEqualWidth:(nonnull UIView *)view {

    return [self ffs_constrainEqualWidth:view relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainEqualWidth:(nonnull UIView *)view relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainWidthToView:view constant:kDefaultSpaceConstant relation:relation priority:priority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainWidthToView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainWidthToView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainWidthToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainWidthToView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainWidthToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint widthConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualWidthToViews:(nonnull NSArray<UIView *> *)views {

    return [self ffs_constrainEqualWidthToViews:views relation:kDefaultRelation priority:kDefaultPriority];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualWidthToViews:(nonnull NSArray<UIView *> *)views relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    [self validateNumberOfViews:views];
    NSMutableArray<NSLayoutConstraint *> *constraints = [[NSMutableArray alloc] init];

    if (views.count > 1) {

        for (NSUInteger i = 0; i < views.count - 1; i++) {

            UIView *fromView = views[i];
            UIView *toView = views[i+1];

            NSLayoutConstraint *constraint = [NSLayoutConstraint widthConstraintFromView:fromView toView:toView relation:relation multiplier:kDefaultMultiplier constant:kDefaultSpaceConstant];
            constraint.priority = priority;

            [constraints addObject:constraint];
            [fromView.superview addConstraint:constraint];
        }
    }

    return [constraints copy];
}


#pragma mark - Public (Height)

- (nonnull NSLayoutConstraint *)ffs_constrainHeight:(CGFloat)constant {

    return [self ffs_constrainHeight:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHeight:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainHeight:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHeight:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint heightConstraintFromView:self toView:nil relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

- (nonnull NSLayoutConstraint *)ffs_constrainEqualHeight:(nonnull UIView *)view {

    return [self ffs_constrainEqualHeight:view relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainEqualHeight:(nonnull UIView *)view relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainHeightToView:view constant:kDefaultSpaceConstant relation:relation priority:priority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHeightToView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainHeightToView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHeightToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainHeightToView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHeightToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint heightConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHeightToViews:(nonnull NSArray<UIView *> *)views {

    return [self ffs_constrainEqualHeightToViews:views relation:kDefaultRelation priority:kDefaultPriority];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHeightToViews:(nonnull NSArray<UIView *> *)views relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    [self validateNumberOfViews:views];
    NSMutableArray<NSLayoutConstraint *> *constraints = [[NSMutableArray alloc] init];

    if (views.count > 1) {

        for (NSUInteger i = 0; i < views.count - 1; i++) {

            UIView *fromView = views[i];
            UIView *toView = views[i+1];

            NSLayoutConstraint *constraint = [NSLayoutConstraint heightConstraintFromView:fromView toView:toView relation:relation multiplier:kDefaultMultiplier constant:kDefaultSpaceConstant];
            constraint.priority = priority;

            [constraints addObject:constraint];
            [fromView.superview addConstraint:constraint];
        }
    }

    return [constraints copy];
}


#pragma mark - Public (Alignment Horizontal)

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer {

    return [self ffs_centerHorizontallyInContainer:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer:(CGFloat)constant {

    return [self ffs_centerHorizontallyInContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_centerHorizontallyInContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint centerHorizontalConstraintFromView:self toView:self.superview relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view {

    return [self ffs_centerHorizontallyWithView:view constant:kDefaultSpaceConstant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_centerHorizontallyWithView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_centerHorizontallyWithView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_centerHorizontallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *constraint = [NSLayoutConstraint centerHorizontalConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [view.superview addConstraint:constraint];

    return constraint;
}


#pragma mark - Public (Alignment Vertical)

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer {

    return [self ffs_centerVerticallyInContainer:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer:(CGFloat)constant {

    return [self ffs_centerVerticallyInContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_centerVerticallyInContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint centerVerticalConstraintFromView:self toView:self.superview relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view {

    return [self ffs_centerVerticallyWithView:view constant:kDefaultSpaceConstant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_centerVerticallyWithView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_centerVerticallyWithView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_centerVerticallyWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *constraint = [NSLayoutConstraint centerVerticalConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [view.superview addConstraint:constraint];

    return constraint;
}


#pragma mark - Public (Alignment Center)

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer {

    return [self ffs_centerInContainer:kDefaultSpaceConstant];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer:(CGFloat)constant {

    return [self ffs_centerInContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_centerInContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerInContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *horizontalConstraint = [NSLayoutConstraint centerHorizontalConstraintFromView:self toView:self.superview relation:relation multiplier:multiplier constant:constant];
    horizontalConstraint.priority = priority;
    NSLayoutConstraint *verticalConstraint = [NSLayoutConstraint centerVerticalConstraintFromView:self toView:self.superview relation:relation multiplier:multiplier constant:constant];
    verticalConstraint.priority = priority;
    [self.superview addConstraints:@[horizontalConstraint, verticalConstraint]];

    return @[horizontalConstraint, verticalConstraint];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view {

    return [self ffs_centerWithView:view constant:kDefaultSpaceConstant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_centerWithView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_centerWithView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_centerWithView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *horizontalConstraint = [NSLayoutConstraint centerHorizontalConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    horizontalConstraint.priority = priority;
    NSLayoutConstraint *verticalConstraint = [NSLayoutConstraint centerVerticalConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    verticalConstraint.priority = priority;
    [view.superview addConstraints:@[horizontalConstraint, verticalConstraint]];

    return @[horizontalConstraint, verticalConstraint];
}


#pragma mark - Public (Fill)

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer {

    return [self ffs_fillContainer:kDefaultSpaceConstant];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer:(CGFloat)constant {

    return [self ffs_fillContainer:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_fillContainer:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillContainer:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    return [self ffs_fillView:self.superview constant:constant relation:relation priority:priority multiplier:multiplier];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view {

    return [self ffs_fillView:view constant:kDefaultSpaceConstant];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_fillView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_fillView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSArray<NSLayoutConstraint *> *)ffs_fillView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    NSLayoutConstraint *topConstraint = [NSLayoutConstraint topSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    topConstraint.priority = priority;
    NSLayoutConstraint *leadingConstraint = [NSLayoutConstraint leadingSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    leadingConstraint.priority = priority;
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint bottomSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    bottomConstraint.priority = priority;
    NSLayoutConstraint *trailingConstraint = [NSLayoutConstraint trailingSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    trailingConstraint.priority = priority;

    [view addConstraints:@[topConstraint, leadingConstraint, bottomConstraint, trailingConstraint]];

    return @[topConstraint, leadingConstraint, bottomConstraint, trailingConstraint];
}


#pragma mark - Public (Spacing)

- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view {

    return [self ffs_constrainHorizontalSpacingToView:view constant:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainHorizontalSpacingToView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainHorizontalSpacingToView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainHorizontalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint horizontalSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view {

    return [self ffs_constrainVerticalSpacingToView:view constant:kDefaultSpaceConstant];
}

- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant {

    return [self ffs_constrainVerticalSpacingToView:view constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainVerticalSpacingToView:view constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

- (nonnull NSLayoutConstraint *)ffs_constrainVerticalSpacingToView:(nonnull UIView *)view constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateViewHierarchy];
    NSLayoutConstraint *constraint = [NSLayoutConstraint verticalSpaceConstraintFromView:self toView:view relation:relation multiplier:multiplier constant:constant];
    constraint.priority = priority;
    [self.superview addConstraint:constraint];

    return constraint;
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views {

    return [self ffs_constrainEqualHorizontalSpacingToViews:views constant:kDefaultSpaceConstant];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant {

    return [self ffs_constrainEqualHorizontalSpacingToViews:views constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainEqualHorizontalSpacingToViews:views constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualHorizontalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateNumberOfViews:views];
    NSMutableArray<NSLayoutConstraint *> *constraints = [[NSMutableArray alloc] init];

    if (views.count > 1) {

        for (NSUInteger i = 0; i < views.count - 1; i++) {

            UIView *fromView = views[i+1];
            UIView *toView = views[i];

            NSLayoutConstraint *constraint = [NSLayoutConstraint horizontalSpaceConstraintFromView:fromView toView:toView relation:relation multiplier:multiplier constant:constant];
            constraint.priority = priority;

            [constraints addObject:constraint];
            [fromView.superview addConstraint:constraint];
        }
    }

    return [constraints copy];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views {

    return [self ffs_constrainEqualVerticalSpacingToViews:views constant:kDefaultSpaceConstant];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant {

    return [self ffs_constrainEqualVerticalSpacingToViews:views constant:constant relation:kDefaultRelation priority:kDefaultPriority];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority {

    return [self ffs_constrainEqualVerticalSpacingToViews:views constant:constant relation:relation priority:priority multiplier:kDefaultMultiplier];
}

+ (nonnull NSArray<NSLayoutConstraint *> *)ffs_constrainEqualVerticalSpacingToViews:(nonnull NSArray<UIView *> *)views constant:(CGFloat)constant relation:(NSLayoutRelation)relation priority:(UILayoutPriority)priority multiplier:(CGFloat)multiplier {

    [self validateNumberOfViews:views];
    NSMutableArray<NSLayoutConstraint *> *constraints = [[NSMutableArray alloc] init];

    if (views.count > 1) {

        for (NSUInteger i = 0; i < views.count - 1; i++) {

            UIView *fromView = views[i+1];
            UIView *toView = views[i];

            NSLayoutConstraint *constraint = [NSLayoutConstraint verticalSpaceConstraintFromView:fromView toView:toView relation:relation multiplier:multiplier constant:constant];
            constraint.priority = priority;

            [constraints addObject:constraint];
            [fromView.superview addConstraint:constraint];
        }
    }

    return [constraints copy];
}


#pragma mark - Private

- (void)validateViewHierarchy {

    NSAssert(self.superview, @"The view were you're adding constraints does not have a superview. Please make sure you add it to your view hierarchy before adding constraints.");
}

+ (void)validateNumberOfViews:(nonnull NSArray<UIView*>*)views {
    
    NSAssert(views.count > 1, @"You should have at least two views to add constraints. Please make sure you're adding constraints to the correct views.");
}

@end
