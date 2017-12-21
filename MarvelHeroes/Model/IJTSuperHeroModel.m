//
//  SuperHero.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 19/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTSuperHeroModel.h"
#import "UIKit/UIKit.h"

static NSString * const kHeroDescription = @"description";
static NSString * const kHeroName = @"name";
static NSString * const kNilValue = @"";
static NSString * const kPath = @"path";
static NSString * const kHeroId = @"id";
static NSString * const kThumbnail = @"thumbnail";

@implementation IJTSuperHeroModel

- (instancetype)initWithJson:(NSDictionary*)info {
    
    if (self = [super init]) {
        
        NSDictionary* thumbnail = [[NSDictionary alloc] init];
        
        if (info[kThumbnail]) {
            
            thumbnail = info[kThumbnail];
        
            if (thumbnail[kPath]) {
                
                _photoUrl = [thumbnail[kPath] stringByAppendingString:@".jpg"];
            
            } else {
                
                _photoUrl = kNilValue;
            }
        }
        
        if (info[kHeroName]) {
            
            _name = info[kHeroName];
            
        } else {
            
            _name = kNilValue;
        }
        
        if (info[kHeroDescription]) {
            
            _short_description = info[kHeroDescription];
            
        } else {
            
            _short_description = kNilValue;
        }
        
        if (info[kHeroId]) {
            
            _identifier = [[info objectForKey:kHeroId] stringValue];
            
        } else {
            
            _identifier = kNilValue;
        }
    }
 
    return self;
}

@end
