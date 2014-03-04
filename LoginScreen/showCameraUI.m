//
//  showCameraUI.m
//  LoginScreen
//
//  Created by VS on 03/03/2014.
//  Copyright (c) 2014 VS. All rights reserved.
//

/*
#import "showCameraUI.h"

@interface showCameraUI ()
{
    UIPopoverController *popoverController;
    
}

@end

@implementation showCameraUI

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showCameraUI {
    BOOL hasCamera = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    UIImagePickerController* picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = hasCamera ? UIImagePickerControllerSourceTypeCamera :    UIImagePickerControllerSourceTypePhotoLibrary;
    
    if (self->popoverController != nil) {
        [self->popoverController dismissPopoverAnimated:YES];
        self->popoverController=nil;
    }
    
    self->popoverController = [[UIPopoverController alloc] initWithContentViewController:picker];
    CGRect popoverRect = [self.view convertRect:[showCameraUI frame]
                                       fromView:[showCameraUI superview]];
    
    popoverRect.size.width = MIN(popoverRect.size.width, 100) ;
    popoverRect.origin.x = popoverRect.origin.x;
    
    [self->popoverController
     presentPopoverFromRect:popoverRect
     inView:self.view
     permittedArrowDirections:UIPopoverArrowDirectionAny
     animated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)picker
{
    [picker dismissModalViewControllerAnimated:YES];
    UIImage* image = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *yourImageView = image;
    if (_popoverController != nil) {
        [UIPopoverController dismissPopoverAnimated:YES];
        self->popoverController=nil;
    }
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController*)picker
{
    [picker dismissModalViewControllerAnimated:YES];
    if (_popoverController != nil) {
        [UIPopoverController dismissPopoverAnimated:YES];
        self->popoverController=nil;
    }
}

- (void)pickerDone:(id)sender
{
    if (popoverController != nil) {
        [popoverController dismissPopoverAnimated:YES];
        self->popoverController=nil;
    }
}
@end
 */ // commented by kanaan raza
