//
//  PopupViewController.m
//  popupWindow
//
//  Created by GreenRoot on 4/25/17.
//  Copyright © 2017 GreenRoot. All rights reserved.
//

#import "PopupViewController.h"

@interface PopupViewController ()

@end

@implementation PopupViewController

- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.60];
    self.PopUpView.layer.cornerRadius = 20;
    self.PopUpView.layer.shadowOpacity = 0.8;
    self.PopUpView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)showAnimated {
    
    self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
    self.view.alpha = 0 ;
    
    [UIView animateWithDuration:.25 animations:^{
        self.view.alpha = 1;
        self.view.transform = CGAffineTransformMakeScale(1, 1);
    }];
    
}

-(void)removeAnimated{
    
    [UIView animateWithDuration:.25 animations:^{
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.view.alpha = 0;
    }completion:^(BOOL finished){
        if(finished){
            [self.view removeFromSuperview];
        }
    }];
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)showInView:(UIView *)aView animated:(BOOL)animated{
    [aView addSubview:self.view];
    if (animated) {
        [self showAnimated];
    }
    
    
}

- (IBAction)closePopUp:(id)sender {
    [self removeAnimated];
}


@end
