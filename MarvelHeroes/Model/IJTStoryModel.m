//
//  Story.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTStoryModel.h"
#import "UIKit/UIKit.h"

static NSString * const kStoryDescription = @"description";
static NSString * const kStoryTitle = @"title";
static NSString * const kNilValue = @"";
static NSString * const kExtension = @"extension";
static NSString * const kPath = @"path";
static NSString * const kThumbnail = @"thumbnail";

@implementation IJTStoryModel

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

- (id)initWithDictionary:(NSDictionary *)storyDictionary {
    
    if (self = [self init]) {
        
        if (storyDictionary[kStoryDescription]) {
            
            _long_description = storyDictionary[kStoryDescription];
            
        } else {
            
            _long_description = kNilValue;
        }
        
        if (storyDictionary[kStoryTitle]) {
            
            _name = storyDictionary[kStoryTitle];
            
        } else {
            
            _name = kNilValue;
        }
    }
    
    return self;
}

@end
