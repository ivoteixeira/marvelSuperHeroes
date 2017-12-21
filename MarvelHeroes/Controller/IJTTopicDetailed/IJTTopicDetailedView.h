//
//  IJTTopicDetailedView.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 21/12/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IJTTopicDetailedView : UIView

@property (nonatomic, strong) UIImageView *thumbnailImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextView *descriptionTextView;

- (instancetype)init;
- (void)setViewWithTitle:(NSString*)title andName:(NSString*)name andDescription:(NSString*)description;
- (void)setThumbnailImage:(UIImage *)thumbnailImageView;

@end
