//
//  ViewController.m
//  LoginTest
//
//  Created by Shailesh on 11/10/15.
//  Copyright (c) 2015 RPD. All rights reserved.
//

#import "LanViewController.h"

@interface LanViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic)NSArray * languages;
@property (nonatomic)IBOutlet UITableView * languageTable;
@end

NSString *const languageCellReuseIdentifier = @"languagecell";

@implementation LanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.languages = @[@"English",@"Polish"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _languages.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:languageCellReuseIdentifier forIndexPath:indexPath];
    NSString *postText = [_languages objectAtIndex:indexPath.row];
    cell.textLabel.text = postText;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
