//
//  CreatePassViewController.m
//  BroNited
//
//  Created by Eric Nelson on 11/10/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import "CreatePassViewController.h"

@interface CreatePassViewController ()

@end

@implementation CreatePassViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)selectPassImagePressed:(id)sender {

    self.imgPicker = [[UIImagePickerController alloc] init];
        self.imgPicker.delegate = self;
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.imgPicker animated:YES completion:nil];

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *boardingPass = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self determinePassbookType:boardingPass];
}


- (void)determinePassbookType:(UIImage *)boardingPass {
    switch ([Pass determinePassType:boardingPass]) {
        case kUnitedPassbook:
            NSLog(@"united");
            break;
        case kAlaskaAir:
            NSLog(@"Alaska");
            break;
        case kAmerican:
            NSLog(@"american");
            break;
        case kDelta:
            NSLog(@"delta");
            break;
        default:
            break;
    }
}

- (IBAction)autoCreatePassPressed:(id)sender {
    ALAssetsLibrary *al = [[ALAssetsLibrary alloc] init];
    //    __block UIImage *passImage;
    [al enumerateGroupsWithTypes:ALAssetsGroupSavedPhotos usingBlock:^(ALAssetsGroup *group, BOOL *stop)  {
        [group enumerateAssetsUsingBlock:^(ALAsset *asset, NSUInteger index, BOOL *stop) {
            UIImage *image = [Pass imageForAsset:asset];
            NSLog(@"%@",image);
            
        }];
    }
                    failureBlock:^(NSError *error)  {
                        // User did not allow access to library
                        // .. handle error
                    }];

}


@end
