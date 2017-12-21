//
//  IJTSerieModel.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IJTSerieModel : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *long_description;
@property (nonatomic, readonly) NSString *thumbnail;

- (instancetype)initWithName:(NSString*)name andDescription:(NSString*)long_description andThumbnail:(NSString*)thumbnail;
- (id)initWithDictionary:(NSDictionary *)serieDictionary;
@end
