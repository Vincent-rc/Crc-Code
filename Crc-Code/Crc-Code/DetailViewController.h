//
//  DetailViewController.h
//  Crc-Code
//
//  Created by Crc on 9/11/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

