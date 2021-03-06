//
//  ViewController.m
//  HorizontalTable
//
//  Created by Ernesto Rivera on 8/12/14.
//  Copyright (c) 2014 PTEz.
//  Inspired by EasyTableView by Aleksey Novicov.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "ViewController.h"

@implementation ViewController
{
    NSArray * objects;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    objects = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
}

- (NSInteger)tableView:(PTEHorizontalTableView *)horizontalTableView
 numberOfRowsInSection:(NSInteger)section
{
    return objects.count;
}

- (UITableViewCell *)tableView:(PTEHorizontalTableView *)horizontalTableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [horizontalTableView.tableView dequeueReusableCellWithIdentifier:@"pink_cell"];
    UILabel * label = cell.contentView.subviews[0];
    label.text = objects[indexPath.row];
    return cell;
}

@end

