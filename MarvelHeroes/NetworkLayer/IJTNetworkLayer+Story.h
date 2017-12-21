//
//  IJTNetworkLayer+Story.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer.h"
#import "IJTStoryModel.h"
#import "IJTSuperHeroModel.h"

@interface IJTNetworkLayer (Story)

- (void)retrieveStoriesForHero:(IJTSuperHeroModel *)hero completionHandler:(void(^)(NSArray<IJTStoryModel*>*))completionHandler;

@end

