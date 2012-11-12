//
//  PointPixel.h
//  BroNited
//
//  Created by Eric Nelson on 11/11/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ANImageBitmapRep.h"

@interface PointPixel : NSObject

@property BMPoint point;
@property BMPixel pixel;

- (id)initWithPoint:(BMPoint)point withPixel:(BMPixel)pixel;

@end
