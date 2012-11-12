//
//  PointPixel.m
//  BroNited
//
//  Created by Eric Nelson on 11/11/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import "PointPixel.h"

@implementation PointPixel


- (id)initWithPoint:(BMPoint)point withPixel:(BMPixel)pixel {
    self.point = point;
    self.pixel = pixel;
    return self;
}
@end
