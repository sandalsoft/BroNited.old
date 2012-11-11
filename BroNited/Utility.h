//
//  Utility.h
//
//  Created by Eric Nelson on 2/3/12.
//  Copyright (c) 2012 SandalSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AssetsLibrary/ALAsset.h>
#import <AssetsLibrary/ALAssetRepresentation.h>


@interface Utility : NSObject


+ (NSString *)contentTypeForImageData:(NSData *)data;
+ (NSString *)localFilePath:(NSString *)filename;

+ (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)size;
+ (UIImage *)imageWithImage:(UIImage *)image scaledToMaxWidth:(CGFloat)width maxHeight:(CGFloat)height;
+ (BOOL)isChromeInstalled;
+ (BOOL)isReachable;



+(UIImage *)imageForAsset:(ALAsset*) aAsset;

@end
