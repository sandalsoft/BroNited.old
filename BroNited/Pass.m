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
#import "UnitedPassbookPass.h"

@implementation Pass




+(PassType)determinePassType:(UIImage *)image {
    NSLog(@"determining pass type");
    
    if ([UnitedPassbookPass isUnitedPassbookPass:image]) {
        return kUnitedPassbook;
    }
    
    return 5;
    
}


+(UIImage *)imageForAsset:(ALAsset*) aAsset{
	ALAssetRepresentation *rep = [aAsset defaultRepresentation];
    	return [UIImage imageWithCGImage:[rep fullResolutionImage]];
}


@end
