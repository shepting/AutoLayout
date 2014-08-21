AutoLayout
==========

Demo app and docs for various Auto Layout issues that crop up during developement.


TableViews
==========
There are a few key points:
 - there must be constraints to all four edges of the `contentView` for iOS to calculate the correct sizing.
 - constrainst should be added to the `contentView`
 - in iOS 8, use `estimatedRowHeight` and sure `rowHeight` is not set (difficult when using NIBs)
