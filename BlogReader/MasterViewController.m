//
//  MasterViewController.m
//  BlogReader
//
//  Created by Eric Pan on 1/8/13.
//  Copyright (c) 2013 Eric Pan. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"


@implementation MasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.titlesArray = [NSArray arrayWithObjects:
                        @"Getting started with WordPress",
                        @"Whitespace in Web Design: What It Is and Why You Should Use It",
                        @"A Guide to Becoming the Smartest Developer on the Planet",
                        @"Do you Love What You Do?",
                        @"Teacher Spotlight: Zac Gordon",
                        @"Getting started with WordPress",
                        @"Whitespace in Web Design: What It Is and Why You Should Use It",
                        @"A Guide to Becoming the Smartest Developer on the Planet",
                        @"Do you Love What You Do?",
                        @"How I Wrote a Book in 3 Days", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titlesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *object = self.titlesArray[indexPath.row];
    cell.textLabel.text = object;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *title = self.titlesArray[indexPath.row];
        [[segue destinationViewController] setDetailItem:title];
    }
}

@end
