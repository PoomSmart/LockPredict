#import <substrate.h>

BOOL override = NO;

%hook UIKeyboardPredictionView

- (void)touchesMoved:(id)arg1 withEvent:(id)arg2
{
	override = YES;
	%orig;
	override = NO;
}

- (void)setShow:(BOOL)show
{
	if (!show && override)
		return;
	%orig;
}

%end

%hook UIKeyboardLayoutStar

- (void)predictionGestureDetectedForTouchInfo:(id)arg1
{
	override = YES;
	%orig;
	override = NO;
}

%end

