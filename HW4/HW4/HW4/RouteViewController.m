//
//  RouteViewController.m
//  HW4
//
//  Created by Dmitry on 10.03.14.
//  Copyright (c) 2014 Dmitry Baranov. All rights reserved.
//

#import "RouteViewController.h"

@interface RouteViewController ()

@property(nonatomic) NSArray* routeInfo;
@property(nonatomic,retain) NSArray* routePrice;

@end

@implementation RouteViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.routeInfo = @[@"ул.Дегтяревская",@"ст.м.Театральная",@"ст.м.Берестейская",@"ул.Институтская",@"ул.Грушевского",@"Татарка",@"Печерские Липки",@"Зверинец",@"Святошино",@"Оболонь",@"ЖМ Троещина",@"ул.Тростянецкая",@"Дарница",@"ст.м.Лесная",@"Шулявка",@"Парк КПИ",@"Борщаговка",@"ст.м.Левобережная",@"ст.м.Дружбы Народов",@"Караваевы Дачи",@"Лукьяновка",@"Проспект Победы",@"Цирк",@"Ун-г Украина",@"ЦУМ",@"Бессарабка",@"Бассейная",@"Льва Толстого",@"Оранжерейная",@"Арсенальная"];
    
    
    self.routePrice = @[@"2.5 UAH",@"2 UAH",@"2 UAH",@"3 UAH",@"3 UAH",@"5 UAH",@"3 UAH",@"2 UAH",@"3.5 UAH",@"2 UAH",@"4 UAH",@"3 UAH",@"4 UAH",@"2.5 UAH",@"3 UAH",@"6 UAH",@"4 UAH",@"3 UAH",@"2.5 UAH",@"2 UAH",@"4 UAH",@"5 UAH",@"3 UAH",@"3 UAH",@"3.5 UAH",@"2.5 UAH",@"3 UAH",@"4.5 UAH",@"2.25 UAH",@"3 UAH"];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BasicCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.routeInfo [indexPath.row];
    cell.detailTextLabel.text = self.routePrice [indexPath.row];
    
    return cell;
}
#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected row index %@",indexPath);
    NSLog(@"Row Name %@",self.routeInfo[indexPath.item]);
}

@end
