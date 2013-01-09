//
//  DetailViewController.h
//  BlogReader
//
//  Created by Eric Pan on 1/8/13.
//  Copyright (c) 2013 Eric Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
