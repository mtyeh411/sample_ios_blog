//
//  WWBlogModel.m
//  LG4
//
//  Created by Andrew Cavanagh on 6/26/14.
//  Copyright (c) 2014 WeddingWire. All rights reserved.
//

#import "WWBlogModel.h"

@interface WWBlogModel()

@end

@implementation WWBlogModel

+ (WWBlogModel *)fakeBlogModel
{
    WWBlogModel *blogModel = [[WWBlogModel alloc] init];
    blogModel.author = @"Andrew";
    blogModel.title = @"iOS > Android";
    blogModel.body = @"iOS is better than Android";
    return blogModel;
}

@end
