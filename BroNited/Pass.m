//
//  Pass.m
//  BroNited
//
//  Created by Eric Nelson on 11/10/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import "Pass.h"
#import "Utility.h"
#import <AssetsLibrary/ALAsset.h>
#import <AssetsLibrary/ALAssetRepresentation.h>

@implementation Pass




+(PassType)determinePassType:(UIImage *)image {
    NSLog(@"determining pass type");
    ALAssetsLibrary *al = [[ALAssetsLibrary alloc] init];
//    __block UIImage *passImage;
    [al enumerateGroupsWithTypes:ALAssetsGroupSavedPhotos usingBlock:^(ALAssetsGroup *group, BOOL *stop)  {
        [group enumerateAssetsUsingBlock:^(ALAsset *asset, NSUInteger index, BOOL *stop) {
            UIImage *image = [self imageForAsset:asset];
            NSLog(@"%@",image);

        }];
    }
        failureBlock:^(NSError *error)  {
            // User did not allow access to library
            // .. handle error
        }];


    
    return 0;
    
}


+(UIImage *)imageForAsset:(ALAsset*) aAsset{
	ALAssetRepresentation *rep;
	rep = [aAsset defaultRepresentation];
	return [UIImage imageWithCGImage:[rep fullResolutionImage]];
}


@end
