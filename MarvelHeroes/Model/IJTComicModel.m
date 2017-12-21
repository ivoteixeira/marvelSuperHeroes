//
//  IJTComicModel.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTComicModel.h"
#import "UIKit/UIKit.h"

static NSString * const kComicDescription = @"description";
static NSString * const kComicTitle = @"title";
static NSString * const kNilValue = @"";
static NSString * const kExtension = @"extension";
static NSString * const kPath = @"path";
static NSString * const kThumbnail = @"thumbnail";

@implementation IJTComicModel

- (instancetype)initWithName:(NSString *)name andDescription:(NSString *)long_description andThumbnail:(NSString *)thumbnail {
    
    if (self = [super init]) {
        
        if (long_description) {
            
            _long_description = long_description;
            
        } else {
            
            _long_description = kNilValue;
        }
        
        if (name) {
            
            _name = name;
            
        } else {
            
            _name = kNilValue;
        }
        
        _thumbnail = thumbnail;
    }
    
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)comicDictionary {
    
    if (self = [self init]) {
        
        if (comicDictionary[kComicDescription]) {
            
            _long_description = comicDictionary[kComicDescription];
            
        } else {
            
            _long_description = kNilValue;
        }
        
        if (comicDictionary[kComicTitle]) {
            
            _name = comicDictionary[kComicTitle];
            
        } else {
            
            _name = kNilValue;
        }
        
        if (comicDictionary[kThumbnail][kPath] && comicDictionary[kThumbnail][kExtension]) {
            
            _thumbnail = [NSString stringWithFormat:@"%@.%@",comicDictionary[kThumbnail][kPath],comicDictionary[kThumbnail][kExtension]];
            
        } else {
            
            _thumbnail = nil;
        }
    }
    
    return self;
}

@end
