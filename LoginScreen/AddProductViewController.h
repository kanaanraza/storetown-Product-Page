//
//  AddProductViewController.h
//  LoginScreen
//
//  Created by Ahmed on 2014-03-02.
//  Copyright (c) 2014 VS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddProductViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    IBOutlet UITextField *nameLabel;
    IBOutlet UITextField *descriptionLabel;
    IBOutlet UITextField *priceLabel;
    
    UIImageView *productImage;
}
@property (nonatomic, strong) IBOutlet UIImageView *productImage;

- (IBAction)backgroundClick:(id)sender;


@end
