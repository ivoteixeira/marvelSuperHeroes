//
//  TopicDetailedViewController.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 24/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IJTComicModel.h"
#import "IJTStoryModel.h"
#import "IJTSerieModel.h"
#import "IJTEventModel.h"

@interface IJTTopicDetailedViewController : UIViewController

@property (nonatomic, strong) IJTComicModel *comic;
@property (nonatomic, strong) IJTStoryModel *story;
@property (nonatomic, strong) IJTEventModel *event;
@property (nonatomic, strong) IJTSerieModel *serie;

@property (nonatomic, copy) NSString *topic;

@end
