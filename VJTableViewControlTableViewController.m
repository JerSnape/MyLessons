//
//  VJTableViewControlTableViewController.m
//  MyLessons
//
//  Created by Jerry on 27/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "VJTableViewControlTableViewController.h"
#import "VJModel.h"

@interface VJTableViewControlTableViewController () <UITableViewDataSource, ModelDelegate>

@property (nonatomic, strong) NSMutableArray * arrayData;

@end

@implementation VJTableViewControlTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getData {
    VJModel * model = [[VJModel alloc] init];
    model.delegate = self;
    [model getData];
}

#pragma mark - Model Delegate

- (void) getData:(VJModel *)model array:(NSArray *)array {
    
    self.arrayData = array;
    [self reloadData];
    
}

-(void) reloadData {
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.arrayData.count;
   
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * ident = @"Cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ident forIndexPath:indexPath];
    
    NSDictionary * dict = [self.arrayData objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [dict objectForKey:@"words"];
    cell.detailTextLabel.text = [dict objectForKey:@"meanings"];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
