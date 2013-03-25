//
//  AppStoreViewController.m
//  ConversionsApp
//
//  Created by Joe Cortopassi on 3/25/13.
//  Copyright (c) 2013 Joe Cortopassi. All rights reserved.
//

#import "AppStoreViewController.h"

@interface AppStoreViewController ()
@property (nonatomic, strong) UITextView *viewPageDescription;
@property (nonatomic, strong) UIButton *buttonAppStoreLinkImage;
@property (nonatomic, strong) UIButton *buttonAppStoreLink;
@end




@implementation AppStoreViewController

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
	// Do any additional setup after loading the view.
    self.view.frame = [[UIScreen mainScreen] applicationFrame];
    self.view.backgroundColor = [UIColor blackColor];
    
    [self setupViewPageDescription];
    [self setupButtonAppStoreLink];
}

- (void) viewDidDisappear:(BOOL)animated
{
    [self.navigationController popToRootViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (void) setupViewPageDescription
{
    self.viewPageDescription = [[UITextView alloc] init];
    self.viewPageDescription.frame = CGRectMake(0, 0, 300, 200);
    self.viewPageDescription.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/5);
    self.viewPageDescription.backgroundColor = [UIColor clearColor];
    self.viewPageDescription.textColor = [UIColor whiteColor];
    self.viewPageDescription.font = [UIFont systemFontOfSize:18.0];
    self.viewPageDescription.text = @"This calculator is part of the full version of Quick Conversions. To learn more about the full version of Quick Conversions, go to the Apple App Store by clicking the button below.";
    
    [self.view addSubview:self.viewPageDescription];
}


- (void) setupButtonAppStoreLink
{
    UIImage *image = [UIImage imageNamed:@"full_version_icon"];
    
    self.buttonAppStoreLinkImage = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.buttonAppStoreLinkImage setBackgroundImage:image forState:UIControlStateNormal];
    self.buttonAppStoreLinkImage.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    self.buttonAppStoreLinkImage.center = CGPointMake(self.view.frame.size.width/2, (self.view.frame.size.height)/2);
    [self.buttonAppStoreLinkImage addTarget:self action:@selector(buttonAppStoreLinkPressed) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.buttonAppStoreLink = [UIButton buttonWithType:UIButtonTypeCustom];
    self.buttonAppStoreLink.frame = CGRectMake(0,
                                               self.buttonAppStoreLinkImage.frame.origin.y + self.buttonAppStoreLinkImage.frame.size.height + 5,
                                               self.view.frame.size.width/2,
                                               50.0f);
    self.buttonAppStoreLink.center = CGPointMake(self.view.frame.size.width/2, self.buttonAppStoreLink.frame.origin.y + (self.buttonAppStoreLink.frame.size.height/2));
    self.buttonAppStoreLink.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
    self.buttonAppStoreLink.titleLabel.textColor = [UIColor whiteColor];
    [self.buttonAppStoreLink setTitle:@"Get Full Version" forState:UIControlStateNormal];
    [self.buttonAppStoreLink addTarget:self action:@selector(buttonAppStoreLinkPressed) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:self.buttonAppStoreLinkImage];
    [self.view addSubview:self.buttonAppStoreLink];
}



- (void) buttonAppStoreLinkPressed
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/quick-conversions/id595047250?mt=8"]];
}



@end
