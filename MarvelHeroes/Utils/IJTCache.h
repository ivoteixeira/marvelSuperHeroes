//
//  IJTCache.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 20/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IJTCache : NSObject

+ (NSCache*)sharedInstance;
+ (UIImage*)retrieveImageFromCache:(NSString*)url;
+ (void)saveImage:(UIImage*)image inCacheForUrl:(NSString*)url;

@end
