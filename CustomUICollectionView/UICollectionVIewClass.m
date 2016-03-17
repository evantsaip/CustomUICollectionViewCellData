//
//  UICollectionVIewClass.m
//  CustomUICollectionView
//
//  Created by lalaleelala on 3/13/16.
//  Copyright © 2016 lalaleelala. All rights reserved.
//

#import "UICollectionVIewClass.h"

@implementation UICollectionVIewClass

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
- (void)awakeFromNib {
    myArray = [NSArray arrayWithObjects:@"Evan",@"Tank",@"Sean",@"Eric", nil] ;
    
    [_myCollectionView registerNib:[UINib nibWithNibName:@"UICollectionViewCustomizedCellXib" bundle:nil] forCellWithReuseIdentifier:@"UICollectionViewCustomizedCellXib"];
}


//Create CollectionView
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return myArray.count - 1;
}

- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCustomizedCell * cell = (UICollectionViewCustomizedCell*) [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCustomizedCellXib" forIndexPath:indexPath];
    [cell loadCell:myArray[indexPath.row]];
    NSString *myString;
    myString = [NSString stringWithFormat:@"%@", cell.cellCenterLabel];
    NSLog(@"%@",myString);
    
    return cell;
}

//- (UIEdgeInsets)collectionView:(UICollectionView*) collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
//    return  UIEdgeInsetsMake(30, 30, 30, 30);
//}
//
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
//    return 30;
//}



@end
