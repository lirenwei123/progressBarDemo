//
//  progressController.m
//  progressBarDemo
//
//  Created by rwli on 16/11/18.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "ViewController.h"
#import "progress.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet progress *proressview;

@property (weak, nonatomic) IBOutlet UILabel *lable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


- (IBAction)valuechange:(UISlider *)sender {
    [self.proressview setProgress:sender.value];
    self.lable.text =[NSString stringWithFormat:@"%.2f%%",sender.value*100];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
