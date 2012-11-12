//
//  unitedPassbookPass.m
//  BroNited
//
//  Created by Eric Nelson on 11/10/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import "UnitedPassbookPass.h"

@implementation UnitedPassbookPass



- (id)initWithImage:(UIImage *)image {
    
    return nil;
}


+ (BOOL)isUnitedPassbookPass:(UIImage *)image {
    
    PointPixel *detectionPlane = [[PointPixel alloc] initWithPoint:BMPointMake(DETECTION_PLANE_POINT_X, DETECTION_PLANE_POINT_Y) withPixel:BMPixelMake(DETECTION_PLANE_PIXEL_RED, DETECTION_PLANE_PIXEL_GREEN, DETECTION_PLANE_PIXEL_BLUE, DETECTION_PLANE_PIXEL_ALPHA)];
    PointPixel *detectionLogo = [[PointPixel alloc] initWithPoint:BMPointMake(DETECTION_LOGO_POINT_X, DETECTION_LOGO_POINT_Y) withPixel:BMPixelMake(DETECTION_LOGO_PIXEL_RED, DETECTION_LOGO_PIXEL_GREEN, DETECTION_LOGO_PIXEL_BLUE, DETECTION_LOGO_PIXEL_ALPHA)];
    PointPixel *detectionQRBufferTopLeft = [[PointPixel alloc] initWithPoint:BMPointMake(DETECTION_QRBUFFER_POINT_X, DETECTION_QRBUFFER_POINT_Y) withPixel:BMPixelMake(DETECTION_QRBUFFER_PIXEL_RED, DETECTION_QRBUFFER_PIXEL_GREEN, DETECTION_QRBUFFER_PIXEL_BLUE, DETECTION_QRBUFFER_PIXEL_ALPHA)];
    PointPixel *detectionInfo = [[PointPixel alloc] initWithPoint:BMPointMake(DETECTION_INFO_POINT_X, DETECTION_INFO_POINT_Y) withPixel:BMPixelMake(DETECTION_INFO_PIXEL_RED, DETECTION_INFO_PIXEL_GREEN, DETECTION_INFO_PIXEL_BLUE, DETECTION_INFO_PIXEL_ALPHA)];
    
    NSArray *detectionPointPixels = @[detectionPlane, detectionLogo, detectionQRBufferTopLeft, detectionInfo];
    
    ANImageBitmapRep *passBitmap = [[ANImageBitmapRep alloc]initWithImage:image];
    
    for (PointPixel *pointPixel in detectionPointPixels) {
        
        BMPixel passImagePixel = [passBitmap getPixelAtPoint:pointPixel.point];
        NSLog(@"at %lu, %lu - R:%f G:%f B:%f A:%f", pointPixel.point.x, pointPixel.point.y,passImagePixel.red, passImagePixel.green, passImagePixel.blue, passImagePixel.alpha );
        
//        NSLog(@"pointPixel at %@ is %@", pointPixel.point, pointPixel.pixel);
        if (passImagePixel.red == pointPixel.pixel.red &&
            passImagePixel.green == pointPixel.pixel.green &&
            passImagePixel.blue == pointPixel.pixel.blue) {
        
            NSLog(@"pixel values at %lu,%lu are equal", pointPixel.point.x, pointPixel.point.y);
                return YES;
        }
    }
    return NO;
}

@end
