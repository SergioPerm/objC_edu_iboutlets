//
//  ViewController.m
//  IBOutletTest
//
//  Created by Admin on 21.06.2018.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    for (UIView* myView in self.testViews) {
        myView.backgroundColor = [self randomColor];
    }
    
}

- (CGFloat) randomFromZeroToOne {
    
    return (float)(arc4random() % 256) / 255;
    
}

- (UIColor*) randomColor {
    
    CGFloat r = [self randomFromZeroToOne];
    CGFloat g = [self randomFromZeroToOne];
    CGFloat b = [self randomFromZeroToOne];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
    
}

@end
