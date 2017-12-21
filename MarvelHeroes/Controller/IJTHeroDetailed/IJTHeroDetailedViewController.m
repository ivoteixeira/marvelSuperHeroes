//
//  HeroDetailedViewController.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroDetailedViewController.h"
#import "IJTAPIConstants.h"
#import "IJTHeroDetailedDataSource.h"
#import "IJTCache.h"
#import "IJTHeroDetailedView.h"
#import "IJTHeroDetailedView+Configuration.h"

@interface IJTHeroDetailedViewController () <UITableViewDataSource, UITableViewDelegate, HeroDetailedDatasourceDelegate>

@property (nonatomic, strong) NSArray<IJTStoryModel *> *stories;
@property (nonatomic, strong) NSArray<IJTComicModel *> *comics;
@property (nonatomic, strong) NSArray<IJTEventModel *> *events;
@property (nonatomic, strong) NSArray<IJTSerieModel *> *series;

@property (nonatomic, strong) IJTHeroDetailedDataSource *dataSource;

@property (nonatomic, copy) NSArray< NSString*> *heroDetailsTopics;

@property (nonatomic, strong) IJTHeroDetailedView *heroDetailedView;

@property (nonatomic, strong) IJTSuperHeroModel *hero;

@end

static NSString * const kSimpleIdentifier = @"SimpleIdentifier";

@implementation IJTHeroDetailedViewController

- (void) loadView {
    
    self.heroDetailedView = [[IJTHeroDetailedView alloc] init];
    self.view = self.heroDetailedView;
}


- (instancetype)initWithHero:(IJTSuperHeroModel*)hero {
    
    self = [super init];
    
    if (self) {
    
        _hero = hero;
    }
    
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.dataSource = [[IJTHeroDetailedDataSource alloc] init];
    self.dataSource.delegate = self;
        
    self.heroDetailsTopics = @[kComics, kEvents, kSeries, kStories];
    
    self.title = self.hero.name;
    
    [self.heroDetailedView configureHeroDetailedView:self.hero];
   
    self.heroDetailedView.tableView.delegate = self;
    self.heroDetailedView.tableView.dataSource = self;
    
    [self.dataSource retrieveTopicsForUser:self.hero];
}

#pragma mark - TableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.heroDetailsTopics.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        
        if (self.comics != nil) {
         
            return [self numberOfRowsToPresent:self.comics.count];
        
        } else {
        
            return 0;
        }
    }
    
    if (section == 1) {
        
        if (self.events != nil) {
            
            return [self numberOfRowsToPresent:self.events.count];
        
        } else {
        
            return 0;
        }
    }
    
    if (section == 2) {
        
        if (self.series != nil) {
            
            return [self numberOfRowsToPresent:self.series.count];
        
        } else {
        
            return 0;
        }
    }
    
    if (section == 3) {
        
        if (self.stories != nil) {
            
            return [self numberOfRowsToPresent:self.stories.count];
        
        } else {
            
            return 0;
        }
    }
    
    return 3;
    
}

- (NSInteger)numberOfRowsToPresent:(NSInteger)valueInArray {
    
    if (valueInArray == 0) {
        
        return 0;
    }
    
    if (valueInArray >0 && valueInArray <= 3) {
        
        return valueInArray;
    }
    
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if (section == 0) {
     
        return kComics;
    }
    
    else if (section == 1) {
        
        return kEvents;
    }
    
    else if (section == 2) {
        
        return kSeries;
    }
    
    else {
        
        return kStories;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kSimpleIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:kSimpleIdentifier];
    }
    
    if (indexPath.section == 0) {
        
        cell.textLabel.text = self.comics[indexPath.row].name;
        
        return cell;
    }
    
    if (indexPath.section == 1) {
        
        cell.textLabel.text = self.events[indexPath.row].name;
        
        return cell;
    }
    
    if (indexPath.section == 2) {
        
        cell.textLabel.text = self.series[indexPath.row].name;
        
        return cell;
    }
    
    if (indexPath.section == 3) {
        
        cell.textLabel.text = self.stories[indexPath.row].name;
        
        return cell;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
   IJTTopicDetailedViewController *topicDetailed = [[IJTTopicDetailedViewController alloc] init];
    
    [self.heroDetailedView.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 0) {
        
        IJTComicModel * comic = self.comics[indexPath.row];
        topicDetailed.topic = kComics;
        topicDetailed.comic = comic;
    }
    
    if (indexPath.section == 1) {
        
        IJTEventModel * event = self.events[indexPath.row];
        topicDetailed.topic = kEvents;
        topicDetailed.event = event;
    }

    if (indexPath.section == 2) {
        
        IJTSerieModel * serie = self.series[indexPath.row];
        topicDetailed.topic = kSeries;
        topicDetailed.serie = serie;
    }
    
    if (indexPath.section == 3) {
        
        IJTStoryModel * story = self.stories[indexPath.row];
        topicDetailed.topic = kStories;
        topicDetailed.story = story;
    }
    
    [self.navigationController pushViewController:topicDetailed animated:true];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    NSString *string = [self.heroDetailsTopics objectAtIndex:section];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 18)];

    UILabel *label = [[UILabel alloc] init];
    
    [view addSubview:label];
    [view setBackgroundColor:[UIColor redColor]];
    
    [label setTranslatesAutoresizingMaskIntoConstraints:NO];
    [label.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:10].active = YES;
    [label.trailingAnchor constraintEqualToAnchor:view.trailingAnchor constant:0].active = YES;
    [label.topAnchor constraintEqualToAnchor:view.topAnchor constant:0].active = YES;
    [label.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:0].active = YES;
    
    [label setFont:[UIFont boldSystemFontOfSize:15]];
    [label setText:[string localizedCapitalizedString]];
    [label setTextColor:[UIColor whiteColor]];

    return view;
}

#pragma mark - MarvelHeroesDatasourceDelegate

- (void)heroDetailedDatasource:(nonnull IJTHeroDetailedDataSource *)heroDetailedDatasource
                        comics:(nullable NSArray<IJTComicModel *> *)comics
                        events:(nullable NSArray<IJTEventModel *> *)events
                       stories:(nullable NSArray<IJTStoryModel *> *)stories
                        series:(nullable NSArray<IJTSerieModel *> *)series {
    
    self.comics = comics;
    self.events = events;
    self.series = series;
    self.stories = stories;

    [self.heroDetailedView.tableView reloadData];
    
}

@end
