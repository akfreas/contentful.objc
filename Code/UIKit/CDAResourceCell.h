//
//  CDAResourceCell.h
//  ContentfulSDK
//
//  Created by Boris Bügling on 19/03/14.
//
//

@import UIKit;

#import <ContentfulDeliveryAPI/CDANullabilityStubs.h>

NS_ASSUME_NONNULL_BEGIN

/** UICollectionViewCell subclass for displaying Resources. */
@interface CDAResourceCell : UICollectionViewCell

/** @name Accessing Subviews */

/** An image view which will display the image at `imageURL`, eventually. */
@property (nonatomic, readonly) UIImageView* imageView;

/** @name Specifying Content */

/** URL of an image which should be displayed in the `imageView` of this cell. */
@property (nonatomic) NSURL* imageViewImageURL;

@end

NS_ASSUME_NONNULL_END
