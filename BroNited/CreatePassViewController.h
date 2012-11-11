//
//  CreatePassViewController.h
//  BroNited
//
//  Created by Eric Nelson on 11/10/12.
//  Copyright (c) 2012 Sandalsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatePassViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *selectImageButton;

@property (retain, nonatomic) UIImagePickerController *imgPicker;

- (void) determinePassbookType:(UIImage *)image;
@end
