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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)selectPassImagePressed:(id)sender {
    self.imgPicker = [[UIImagePickerController alloc] init];
//    self.imgPicker.delegate = self;
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.imgPicker animated:YES completion:nil];
    

}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *boardingPass = [info objectForKey:UIImagePickerControllerOriginalImage];
    
}

- (IBAction)autoCreatePassPressed:(id)sender {
}


@end
