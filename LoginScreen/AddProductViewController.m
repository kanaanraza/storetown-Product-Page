//
//  AddProductViewController.m
//  LoginScreen
//
//  Created by Ahmed on 2014-03-02.
//  Copyright (c) 2014 VS. All rights reserved.
//

#import "AddProductViewController.h"

@interface AddProductViewController ()

@end

@implementation AddProductViewController
@synthesize productImage;

- (void)imagePickerControllerDidCancel:(UIImagePickerController *) Picker
{
    [[Picker parentViewController] dismissViewControllerAnimated:YES completion:nil];
}
- (void)imagePickerController:(UIImagePickerController *) Picker

didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    productImage.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [[Picker parentViewController] dismissViewControllerAnimated:YES completion:nil];
    
}
-(IBAction)addImage:(id)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Sell Product";
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)backgroundClick:(id)sender{
    
    [ nameLabel resignFirstResponder];
    [descriptionLabel resignFirstResponder];
    [priceLabel resignFirstResponder];
}
@end
