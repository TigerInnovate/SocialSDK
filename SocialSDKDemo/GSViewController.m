//
//  GSViewController.m
//  SocialSDKDemo
//
//  Created by lijunjie on 16/12/2016.
//  Copyright © 2016 GagSquad. All rights reserved.
//

#import "GSViewController.h"

@import SocialSDK;

@interface GSViewController ()

@end

@implementation GSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)selectSharePlan:(id)sender
{
    [GSShareWindow showShareViewWithChannels:nil];
}

- (IBAction)sinaTest:(id)sender
{
    id<GSShareProtocol> share = [[GSShareManager share] getShareProtocolWithChannelType:GSShareChannelTypeSina];
    [share setShareCompletionBlock:^(id<GSShareResultProtocol> result) {
        NSLog(@"aa");
    }];
    [share shareSimpleText:@"测试分享"];
}

@end