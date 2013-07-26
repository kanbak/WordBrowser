//
//  SecondViewController.m
//  WordBrowser
//
//  Created by Umut Kanbak on 7/24/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()


{
    __weak IBOutlet UITextView *defTextView;
    
    __weak IBOutlet UILabel *synonymsLabel;
    NSString *definition;

    
}
@end

@implementation SecondViewController
@synthesize definition;
@synthesize synonyms;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        definition=[[NSString alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    defTextView.text=definition;
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
