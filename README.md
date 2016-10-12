# You Give Love A Bad Name

The method, `animate(withDuration:animations:)`, on `UIView` is great for producing simple animations. However, it doesn't allow for creating a sequence of animations. It's possible to call `animate(withDuration:animations:)` multiple times for each step of the sequence but it's repetitive and difficult to adjust.

Enter keyframes.

Keyframes allow for an animation to have multiple steps (or frames). Each keyframe contains one part of the total frames in the animation. Let's use them to make a "bounce" effect.

## Instructions

This is your goal:

![Animation](https://ironboard-curriculum-content.s3.amazonaws.com/iOS/objc-YouGiveLoveABadName/animation.gif)

[You'll need UIKeyFrameAnimations](http://www.shinobicontrols.com/blog/posts/2013/10/04/ios7-day-by-day-day-11-uiview-key-frame-animations)

You'll need two class functions of `UIView`:
 * [animateKeyframes(withDuration:delay:options:animations:completion:)](https://developer.apple.com/reference/uikit/uiview/1622552-animatekeyframes)
 * [addKeyframe(withRelativeStartTime:relativeDuration:animations:)](https://developer.apple.com/reference/uikit/uiview/1622554-addkeyframe)

Note how Bon Jovi "bounces" when the button is tapped -- the image first shrinks, then expands outward (slightly past its final size), then comes to a rest at a height that fills the screen. When the image shrinks, it goes through the same process in reverse. This sort of multi-step animation is perfect for the keyframe animation methods mentioned above.

**Implement this animation by adjusting constraints on the image view.** Check out the storyboard -- there are currently no constraints controlling the height and y-position of the image view.

So, your process should be something like this:

1. Add constraints that will let you easily animate the image as desired. Think about your options -- you could pin down the image view's height and top, but would that be easy to animate in the desired way?

 * **Hints:**
  * Does the center-y of the image view change across animations? Maybe you could pin it down, and just animate between two height constraints.
  * It's possible in storyboard to apply the same constraint multiple times but with different variations. With a constraint selected in storyboard, you can use the size inspector to checkmark whether a constraint is installed or not.
  * Can you create outlets from constraints in storyboard?

2. Make Bon Jovi grow in the `imageTapped(_:)` method (we'll handle the toggling later). You'll need to build a keyframe animation that implements the "bounce" effect. It will have steps close to this:

 * Shrink slightly below the starting height.
 * Grow slightly beyond the height of the screen.
 * Shrink back down to the exact height of the screen.

 The animation should work on phones of all sizes and orientations. Don't hard-code the screen's height!

 **Hint:**
 How do you inform the view that the layout has changed?

3. Make the `imageTapped(_:)` method toggle between the full-height and normal sizes of the image view. You'll probably have to add a flag property so you know whether to expand or shrink. The shrink animation should be the exact opposite of the expansion one:

 * Grow slightly beyond the height of the screen
 * Shrink down to slightly below the final height of the image
 * Return to the exact starting height

## Advanced

Keyframes are great for a sequence of animations but you can also get a bounce effect another way. Play around with `animate(withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:)` instead of your keyframe animation. Check out [Apple's documentation](https://developer.apple.com/reference/uikit/uiview/1622594-animate) to learn more about how the different parameters work.


<p data-visibility='hidden'>View <a href='https://learn.co/lessons/youGiveLoveABadName' title='You Give Love A Bad Name'>You Give Love A Bad Name</a> on Learn.co and start learning to code for free.</p>
