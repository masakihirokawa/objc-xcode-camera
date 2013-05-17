//
//  ViewController.h
//  CameraSample
//
//  Created by 廣川政樹 on 2013/05/17.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

//デリゲート指定
@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

//カメラを開く
- (IBAction)pictureFromCamera;

//フォトライブラリを開く
- (IBAction)pictureFromRoll;

@end
