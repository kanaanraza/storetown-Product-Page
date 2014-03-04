//
//  SellProduct.m
//  LoginScreen
//
//  Created by VS on 04/03/2014.
//  Copyright (c) 2014 VS. All rights reserved.
//

#import "SellProduct.h"

@interface SellProduct ()

@end

@implementation SellProduct
@synthesize ImageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)cameraPressed:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Upload a photo" message:nil delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:@"Take a photo",@"Choose existing",nil];
    
    
    alert.alertViewStyle = UIAlertViewStyleDefault;
    
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (buttonIndex == 1) {
        
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.delegate = self;
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
        [self presentViewController:imagePicker animated:YES completion:nil];
        
    }
    
    if (buttonIndex == 2) {
        
        UIImagePickerController *imagePicker2 = [[UIImagePickerController alloc] init];
        imagePicker2.delegate = self;
        
        imagePicker2.allowsEditing = YES;
        
        //[imagePicker2 setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
        
        [self presentViewController:imagePicker2 animated:YES completion:nil];
        
    }


}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    //NSString *media = [info objectForKey: UIImagePickerControllerMediaType];
    [ImageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
