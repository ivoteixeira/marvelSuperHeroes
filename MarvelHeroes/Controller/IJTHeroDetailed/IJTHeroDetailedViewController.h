//
//  HeroDetailedViewController.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IJTSuperHeroModel.h"
#import "IJTAPIConstants.h"
#import "IJTStoryModel.h"
#import "IJTSerieModel.h"
#import "IJTEventModel.h"
#import "IJTSerieModel.h"
#import "IJTTopicDetailedViewController.h"

@interface IJTHeroDetailedViewController : UIViewController 

- (instancetype)initWithHero:(IJTSuperHeroModel*)hero;

@end
