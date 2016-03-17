//
//  UICollectionViewCustomizedCell.m
//  CustomUICollectionView
//
//  Created by lalaleelala on 3/13/16.
//  Copyright © 2016 lalaleelala. All rights reserved.
//

#import "UICollectionViewCustomizedCell.h"

@implementation UICollectionViewCustomizedCell
{
    NSString *priString;
}
-(void)loadCell:(NSString *)cellString {
    self.backgroundColor = [UIColor whiteColor];
    _cellCenterLabel.text = cellString;
    priString = @"Tank so cool";
    _myCellLab.text = priString;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
