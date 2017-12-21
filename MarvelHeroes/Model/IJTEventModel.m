//
//  IJTEventModel.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTEventModel.h"
#import "UIKit/UIKit.h"

static NSString * const kEventDescription = @"description";
static NSString * const kEventTitle = @"title";
static NSString * const kNilValue = @"";
static NSString * const kExtension = @"extension";
static NSString * const kPath = @"path";
static NSString * const kThumbnail = @"thumbnail";

@implementation IJTEventModel

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

- (id)initWithDictionary:(NSDictionary *)eventDictionary {
    
    if (self = [self init]) {
        
        if (eventDictionary[kEventDescription]) {
            
            _long_description = eventDictionary[kEventDescription];
            
        } else {
            
            _long_description = kNilValue;
        }
        
        if (eventDictionary[kEventDescription]) {
            
            _name = eventDictionary[kEventTitle];
            
        } else {
            
            _name = kNilValue;
        }
        
        if (eventDictionary[kThumbnail][kPath] && eventDictionary[kThumbnail][kExtension]) {
            
            _thumbnail = [NSString stringWithFormat:@"%@.%@",eventDictionary[kThumbnail][kPath],eventDictionary[kThumbnail][kExtension]];
            
        } else {
            
            _thumbnail = nil;
        }
    }
    
    return self;
}

@end
