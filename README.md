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

Text Views + Wrapping
=====================
`UILabel`s have a tough time resizing since their width and height can interact. Usually, the Auto Layout system can just calculate the one dimension in one layout pass. But with labels, you will need to do some extra work to make this work as you would expect.

This is the best explanation:
http://devetc.org/code/2014/07/07/auto-layout-and-views-that-wrap.html


LLDB Shortcuts
===============
You can place shortcuts in your `.lldbinit` file to be used when paused in the Xcode debugger.


Ambiguous Layout 
=================
With Interface Builder, ambiguous layouts aren't always immediately obvious because `PrototypingLayoutConstraint`s are creating for any ambiguous sizing or positioning details.

```
<NSIBPrototypingLayoutConstraint:0x7a2472e0 'IB auto generated at build time for view with ambiguity'  H:[UIView:0x78e7c570(258@251)] priority:251>		Marker:0x7a2472e0:IB auto generated at build time for view with ambiguity.posErrorMarker{id: 46}
```
You can see them in logs or when you print out the array of `.constraints` on any `UIView`.


```
# Print an Auto Layout trace
command alias at expr -o -- [[UIWindow keyWindow] _autolayoutTrace]
```



[alignment_screenshot]: https://www.dropbox.com/s/zshs8hsjrgr7iwh/alignmentRect.png?dl=1
[messages_screenshot]: https://www.dropbox.com/s/m5gpmpd227df2i2/Messages%20View%20Controller.png?dl=1
