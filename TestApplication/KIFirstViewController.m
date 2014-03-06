//
//  KIFirstViewController.m
//  TestApplication
//
//  Created by Chathurka on 3/6/14.
//  Copyright (c) 2014 Chathurka. All rights reserved.
//

#import "KIFirstViewController.h"
#import "KISecondViewController.h"

@interface KIFirstViewController ()

@end

@implementation KIFirstViewController

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
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 50, 50)];
    [btn setTitle:@"OK" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(hello) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) hello
{
    KISecondViewController *detailVC = [[KISecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:detailVC animated:YES];
}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 50, 50)];
//    [btn setTitle:@"OK" forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(hello) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
//}

@end
