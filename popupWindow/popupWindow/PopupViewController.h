//
//  PopupViewController.h
//  popupWindow
//
//  Created by GreenRoot on 4/25/17.
//  Copyright © 2017 GreenRoot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "AppDelegate.h"

@interface PopupViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *PopUpView;

- (void)showInView:(UIView *)aView animated:(BOOL)animated;

- (IBAction)closePopUp:(id)sender;


@end
