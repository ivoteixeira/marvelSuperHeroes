//
//  IJTSuperHeroModel.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 19/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IJTSuperHeroModel : NSObject 

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *photoUrl;
@property (nonatomic, readonly) NSString *short_description;
@property (nonatomic, readonly) NSString *identifier;
@property (nonatomic, strong) UIImage *photo;

- (instancetype)initWithJson:(NSDictionary*)info;

@end
