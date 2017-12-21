//
//  IJTAnyPromise+Hero.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 30/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PromiseKit/PromiseKit.h>

@interface IJTAnyPromise_Hero : NSObject

+ (AnyPromise*)requestHeroByIdPromise:(NSString*)identifier;
+ (AnyPromise*)requestAllHeroesPromise:(NSInteger)offset;

@end
