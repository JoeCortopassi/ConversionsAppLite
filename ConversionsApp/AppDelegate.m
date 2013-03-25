//
//  AppDelegate.m
//  ConversionsApp
//
//  Created by Joe Cortopassi on 1/15/13.
//  Copyright (c) 2013 Joe Cortopassi. All rights reserved.
//

#import "AppDelegate.h"
#import "CalculatorViewController.h"

@implementation AppDelegate

@synthesize tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor blackColor];
    
    
    CalculatorViewController *lengthConverter = [[CalculatorViewController alloc] init];
    lengthConverter.category = @"length";
    lengthConverter.title = @"Length";
    lengthConverter.tabBarItem.image = [UIImage imageNamed:@"length_tab_bar.png"];
    
    CalculatorViewController *weightConverter = [[CalculatorViewController alloc] init];
    weightConverter.category = @"weight";
    weightConverter.title = @"Weight";
    weightConverter.tabBarItem.image = [UIImage imageNamed:@"weight_tab_bar.png"];
    
    CalculatorViewController *volumeConverter = [[CalculatorViewController alloc] init];
    volumeConverter.category = @"volume";
    volumeConverter.title = @"Volume";
    volumeConverter.tabBarItem.image = [UIImage imageNamed:@"volume_tab_bar.png"];
    
    CalculatorViewController *timeConverter = [[CalculatorViewController alloc] init];
    timeConverter.category = @"time";
    timeConverter.title = @"Time";
    timeConverter.tabBarItem.image = [UIImage imageNamed:@"time_tab_bar.png"];
    
    CalculatorViewController *speedConverter = [[CalculatorViewController alloc] init];
    speedConverter.category = @"speed";
    speedConverter.title = @"Speed";
    
    CalculatorViewController *temperatureConverter = [[CalculatorViewController alloc] init];
    temperatureConverter.category = @"temperature";
    temperatureConverter.title = @"Temperature";
    
    CalculatorViewController *areaConverter = [[CalculatorViewController alloc] init];
    areaConverter.category = @"area";
    areaConverter.title = @"Area";

    
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[lengthConverter,
                                              weightConverter,
                                              volumeConverter,
                                              timeConverter,
                                              speedConverter,
                                              temperatureConverter,
                                              areaConverter];
    
    UITableView *moreTableView = (UITableView *)[[tabBarController.moreNavigationController topViewController] view];
    moreTableView.backgroundColor = [UIColor colorWithRed:(51.0/255.0) green:(51.0/255.0) blue:(51.0/255.0) alpha:1.0];
    moreTableView.separatorColor = [UIColor blackColor];
    moreTableView.dataSource = self;
    
    
    [self.window addSubview:self.tabBarController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}









/*
  TabBar delegates
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tabBarController.viewControllers count] - 4;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.contentView.backgroundColor = [UIColor colorWithRed:(51.0/255.0) green:(51.0/255.0) blue:(51.0/255.0) alpha:1.0];
        cell.textLabel.textColor = [UIColor whiteColor];
    }
    
    NSString *text = [[self.tabBarController.viewControllers objectAtIndex:(indexPath.row + 4)] title];

    cell.textLabel.text = text;
    
    return cell;

}

@end
