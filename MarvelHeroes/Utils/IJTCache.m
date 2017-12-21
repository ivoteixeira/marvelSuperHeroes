//
//  IJTCache.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 20/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTCache.h"

@implementation IJTCache

+ (NSCache*)sharedInstance {
    
    static dispatch_once_t once;
    static NSCache* sharedInstance;
    
    dispatch_once(&once, ^{
       
        sharedInstance = [[NSCache alloc] init];
    });
    
    return sharedInstance;
}

+ (UIImage*)retrieveImageFromCache:(NSString*)url {
    
    if ([IJTCache.sharedInstance objectForKey:url]) {
        
        return [IJTCache.sharedInstance objectForKey:url];
        
    } else {
        
        if ([url containsString:@"image_not_available"]) {
            
            return [UIImage imageNamed:@"image_not_found"];
            
        } else {
            
            return nil;
        }
    }
}

+ (void)saveImage:(UIImage*)image inCacheForUrl:(NSString*)url {
    
    if (![IJTCache.sharedInstance objectForKey:url]) {
        
        if (image != NULL) {
            
            [IJTCache.sharedInstance setObject:image forKey:url];
        }
    }
}

@end
