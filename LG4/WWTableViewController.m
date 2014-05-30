//
//  WWTableViewController.m
//  LG4
//
//  Created by Andrew Cavanagh on 5/29/14.
//  Copyright (c) 2014 WeddingWire. All rights reserved.
//

#import "WWTableViewController.h"
#import "WWTableViewCell.h"
@import AVFoundation;

@interface WWTableViewController ()
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation WWTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.dataSource = @[@"first", @"second", @"third", @"fourth"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdent = @"cellIdentifier";
    
    WWTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdent forIndexPath:indexPath];
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(WWTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    [cell.textLabel setText:[self.dataSource objectAtIndex:indexPath.row]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *string = [self.dataSource objectAtIndex:indexPath.row];
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:string];
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-gb"];
    utterance.rate = 0.0005;
    
    AVSpeechSynthesizer *speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    [speechSynthesizer speakUtterance:utterance];
}

@end
