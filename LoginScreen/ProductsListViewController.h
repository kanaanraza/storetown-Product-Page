//
//  ProductsListViewController.h
//  LoginScreen
//
//  Created by VS on 27/02/2014.
//  Copyright (c) 2014 VS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductsListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *productsTableView;
}

-(void)getProducts;

@end
