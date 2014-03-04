//
//  SellProduct.h
//  LoginScreen
//
//  Created by VS on 04/03/2014.
//  Copyright (c) 2014 VS. All rights reserved.
//

#import "AddProductViewController.h"

@interface SellProduct : AddProductViewController <
UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIAlertViewDelegate,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

@end
