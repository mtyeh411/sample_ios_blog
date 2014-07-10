//
//  WWTableViewCell.m
//  LG4
//
//  Created by Andrew Cavanagh on 5/29/14.
//  Copyright (c) 2014 WeddingWire. All rights reserved.
//

#import "WWTableViewCell.h"

@implementation WWTableViewCell

//designated initlizer when registered in class
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

// designated initilizer when registered with storyboard
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end
