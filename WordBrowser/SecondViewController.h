//
//  SecondViewController.h
//  WordBrowser
//
//  Created by Umut Kanbak on 7/24/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"

@interface SecondViewController : ViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic)NSString *definition;
@property (strong, nonatomic)NSString *synonyms;

@end
