Auto Layout
==========

Demo app and docs for various Auto Layout issues that crop up during developement.

![AlignmentRect][alignment_screenshot]
![Messages Table View][messages_screenshot]


TableViews
==========
There are a few key points:
 - there must be constraints to all four edges of the `contentView` for iOS to calculate the correct sizing.
 - constrainst should be added to the `contentView`
 - in iOS 8, use `estimatedRowHeight` and sure `rowHeight` is not set (difficult when using NIBs)


[alignment_screenshot]: https://www.dropbox.com/s/zshs8hsjrgr7iwh/alignmentRect.png?dl=1
[messages_screenshot]: https://www.dropbox.com/s/m5gpmpd227df2i2/Messages%20View%20Controller.png?dl=1
