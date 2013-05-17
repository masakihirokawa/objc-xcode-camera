//
//  ViewController.m
//  CameraSample
//
//  Created by 廣川政樹 on 2013/05/17.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

//カメラを開く
- (IBAction)pictureFromCamera
{
  if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.delegate = self;
    imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:imagePickerController  animated:YES completion: nil];
  } else {
    UIAlertView *newView = [[UIAlertView alloc] initWithTitle:nil
                                                      message:@"Camera not alaivable"
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [newView show];
  }
}

//フォトライブラリを開く
- (IBAction)pictureFromRoll
{
  if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.delegate = self;
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePickerController  animated:YES completion: nil];
  } else {
    UIAlertView *newView = [[UIAlertView alloc] initWithTitle:nil
                                                      message:@"Photo Library not alaivable"
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [newView show];
  }
}

@end
