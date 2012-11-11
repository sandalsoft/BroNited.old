//
//  Pass.h
//  BroNited
//
//  Created by Eric Nelson on 11/10/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <AssetsLibrary/ALAsset.h>
#import <AssetsLibrary/ALAssetRepresentation.h>

@interface Pass : NSObject

typedef enum {
    kUnitedPassbook = 0,
    kAmerican = 1,
    kAlaskaAir = 2,
    kDelta = 3,
} PassType;

@property (weak, nonatomic) UIImage *passImage;
@property (weak, nonatomic) UIImage *qrImage;
@property (nonatomic) PassType *passType;

+(PassType)determinePassType:(UIImage *)image;
+(UIImage *)imageForAsset:(ALAsset*) aAsset;
@end
