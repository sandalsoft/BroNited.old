//
//  unitedPassbookPass.h
//  BroNited
//
//  Created by Eric Nelson on 11/10/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import "Pass.h"
#import "PointPixel.h"



#define DETECTION_PLANE_POINT_X 316
#define DETECTION_PLANE_POINT_Y 190
#define DETECTION_PLANE_PIXEL_RED 0.007843
#define DETECTION_PLANE_PIXEL_GREEN 0.301961
#define DETECTION_PLANE_PIXEL_BLUE 0.831373
#define DETECTION_PLANE_PIXEL_ALPHA 1.000000

#define DETECTION_LOGO_POINT_X 242
#define DETECTION_LOGO_POINT_Y 50
#define DETECTION_LOGO_PIXEL_RED 0.000000
#define DETECTION_LOGO_PIXEL_GREEN 255
#define DETECTION_LOGO_PIXEL_BLUE 255
#define DETECTION_LOGO_PIXEL_ALPHA 1

#define DETECTION_QRBUFFER_POINT_X 156
#define DETECTION_QRBUFFER_POINT_Y 454
#define DETECTION_QRBUFFER_PIXEL_RED 255
#define DETECTION_QRBUFFER_PIXEL_GREEN 255
#define DETECTION_QRBUFFER_PIXEL_BLUE 255
#define DETECTION_QRBUFFER_PIXEL_ALPHA 1

#define DETECTION_INFO_POINT_X 604
#define DETECTION_INFO_POINT_Y 764
#define DETECTION_INFO_PIXEL_RED 36
#define DETECTION_INFO_PIXEL_GREEN 79
#define DETECTION_INFO_PIXEL_BLUE 174
#define DETECTION_INFO_PIXEL_ALPHA 1

@interface UnitedPassbookPass : Pass

@property (weak, nonatomic) UIImage *passImage;
@property (weak, nonatomic) UIImage *qrImage;
@property (weak, nonatomic) UIImage *gateImage;
@property (weak, nonatomic) UIImage *citiesImage;
@property (weak, nonatomic) UIImage *flightImage;
@property (weak, nonatomic) NSArray *detectionPoints;





+ (BOOL)isUnitedPassbookPass:(UIImage *)image;

@end


