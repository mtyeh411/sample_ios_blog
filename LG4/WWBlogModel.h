//
//  WWBlogModel.h
//  LG4
//
//  Created by Andrew Cavanagh on 6/26/14.
//  Copyright (c) 2014 WeddingWire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WWBlogModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *body;
@property (nonatomic, strong) NSString *imageURLString;
@property (nonatomic, strong) NSDate *createdDate;

+ (WWBlogModel *)fakeBlogModel;

@end
