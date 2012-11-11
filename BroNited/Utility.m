//
//  Utility.m

//
//  Created by Eric Nelson on 2/3/12.
//  Copyright (c) 2012 SandalSoft. All rights reserved.
//

#import "Utility.h"

#import "Reachability.h"

@implementation Utility

+(NSString *)getGUID {
    return @"get ios6 udid";
}

+(NSString *)localFilePath:(NSString *)filename {
    
    NSString *documentsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *filePath = [documentsDir stringByAppendingPathComponent:filename];
    return filePath;
    
}

+ (NSString *)contentTypeForImageData:(NSData *)data {
    uint8_t c;
    [data getBytes:&c length:1];
    
    switch (c) {
        case 0xFF:
            return @"image/jpeg";
        case 0x89:
            return @"image/png";
        case 0x47:
            return @"image/gif";
        case 0x49:
        case 0x4D:
            return @"image/tiff";
    }
    return nil;
}


+ (BOOL)isChromeInstalled {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"googlechrome://"]])
        return YES;
    return NO;
}

+ (BOOL)isReachable {
    Reachability *r = [Reachability reachabilityWithHostName:REACHBILITY_HOST];
    NetworkStatus internetStatus = [r currentReachabilityStatus];
    if(internetStatus == NotReachable) {
        return NO;
    }
    return YES;
}

+ (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)size {
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        UIGraphicsBeginImageContextWithOptions(size, NO, [[UIScreen mainScreen] scale]);
    } else {
        UIGraphicsBeginImageContext(size);
    }
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

+ (UIImage *)imageWithImage:(UIImage *)image scaledToMaxWidth:(CGFloat)width maxHeight:(CGFloat)height {
    CGFloat oldWidth = image.size.width;
    CGFloat oldHeight = image.size.height;
    
    CGFloat scaleFactor;
    
    if (oldWidth > oldHeight) {
        scaleFactor = width / oldWidth;
    } else {
        scaleFactor = height / oldHeight;
    }
    
    CGFloat newHeight = oldHeight * scaleFactor;
    CGFloat newWidth = oldWidth * scaleFactor;
    CGSize newSize = CGSizeMake(newWidth, newHeight);
    
    return [self imageWithImage:image scaledToSize:newSize];
}



+(UIImage *)imageForAsset:(ALAsset*) aAsset{
	ALAssetRepresentation *rep;
	rep = [aAsset defaultRepresentation];
	return [UIImage imageWithCGImage:[rep fullResolutionImage]];
}


@end
