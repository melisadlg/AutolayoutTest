//
//  ViewController.m
//  Test
//
//  Created by melisadlg on 4/4/15.
//  Copyright (c) 2015 Melisa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIScrollView *supScroll;

@property (strong, nonatomic) IBOutlet UIScrollView *infScroll;

@property (strong, nonatomic) IBOutlet UIButton *rightBTN;
@property (strong, nonatomic) IBOutlet UIButton *leftBTN;

- (IBAction)moveViews:(UIButton *)sender;

@end

@implementation ViewController

int supClicks=0;
int infClicks=0;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_supScroll setContentSize:CGSizeMake(_supScroll.frame.size.width*3, _supScroll.frame.size.height)];
    [_supScroll setScrollEnabled:NO];
    [_supScroll setShowsHorizontalScrollIndicator:NO];
    [_supScroll setShowsVerticalScrollIndicator:NO];
    [_supScroll setContentOffset:CGPointMake(0, 0)];
    
    [_infScroll setContentSize:CGSizeMake(_infScroll.frame.size.width*3, _infScroll.frame.size.height)];
    [_infScroll setScrollEnabled:NO];
    [_infScroll setShowsHorizontalScrollIndicator:NO];
    [_infScroll setShowsVerticalScrollIndicator:NO];
    [_infScroll setContentOffset:CGPointMake(0, 0)];

    [_rightBTN setEnabled:NO];
    [_leftBTN setEnabled:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveViews:(UIButton *)sender {
    
    if (sender.tag == 1) {
        //move left
        if (supClicks == 0) {
            [_supScroll setContentOffset:CGPointMake(_supScroll.frame.size.width, 0) animated:YES];
            [_infScroll setContentOffset:CGPointMake(-_infScroll.frame.size.width, 0) animated:YES];
            supClicks++;
            [_leftBTN setEnabled:YES];
            [_rightBTN setEnabled:YES];
        }
        else if (supClicks == 1) {
            [_supScroll setContentOffset:CGPointMake(_supScroll.frame.size.width*2, 0) animated:YES];
            [_infScroll setContentOffset:CGPointMake(-_infScroll.frame.size.width*2, 0) animated:YES];
            supClicks++;
            [_leftBTN setEnabled:NO];
            [_rightBTN setEnabled:YES];
        }
        
    }
    else if (sender.tag == 2){
        //move right
        if (supClicks == 2) {
            [_supScroll setContentOffset:CGPointMake(_supScroll.frame.size.width, 0) animated:YES];
            [_infScroll setContentOffset:CGPointMake(-_infScroll.frame.size.width, 0) animated:YES];
            supClicks--;
            [_rightBTN setEnabled:YES];
            [_leftBTN setEnabled:YES];
        
        }
        else if (supClicks == 1) {
            [_supScroll setContentOffset:CGPointMake(0, 0) animated:YES];
            [_infScroll setContentOffset:CGPointMake(0, 0) animated:YES];
            supClicks--;
            [_rightBTN setEnabled:NO];
            [_leftBTN setEnabled:YES];
        }
    }
}


@end
