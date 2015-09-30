//
//  ViewController.m
//  TestViewController
//
//  Created by Byhkalo Konstantyn on 30.09.15.
//  Copyright © 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "ViewController.h"
#import "VolumeViewController.h"

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

- (IBAction)buttonPressed:(id)sender {
    
    UIAlertController* volumeAllert = [UIAlertController alertControllerWithTitle:@"" message:@"\n\n\n" preferredStyle:UIAlertControllerStyleActionSheet];

    VolumeViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"VolumeViewController"];
    
    volumeAllert.view.backgroundColor = [UIColor whiteColor];
    vc.view.backgroundColor = [UIColor clearColor];
    [volumeAllert.view addSubview:vc.view];
    
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [volumeAllert dismissViewControllerAnimated:YES completion:nil];
    }];
    [volumeAllert addAction:cancelAction];
    
    //[volumeAllert setValue:vc forKey:@"contentViewController"];

    [self presentViewController:volumeAllert animated:YES completion:nil];

    
}
@end
