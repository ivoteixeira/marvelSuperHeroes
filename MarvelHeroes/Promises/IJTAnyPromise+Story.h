//
//  IJTAnyPromise+Story.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 30/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PromiseKit/PromiseKit.h>
#import "IJTSuperHeroModel.h"

@interface IJTAnyPromise_Story : NSObject

+ (AnyPromise*)requestHeroStoriesPromise:(IJTSuperHeroModel*)hero;

@end
