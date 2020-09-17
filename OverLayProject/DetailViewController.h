//
//  DetailViewController.h
//  OverLayProject
//
//  Created by iDesignA7 on 17/09/20.
//  Copyright © 2020 iDesignA7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

