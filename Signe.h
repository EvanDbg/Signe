#define kIdentifier @"me.kritanta.signeprefs"
#define kSettingsChangedNotification (CFStringRef)@"me.kritanta.signeprefs/Prefs"
#define kSettingsPath @"/var/mobile/Library/Preferences/me.kritanta.signeprefs.plist"
#include "BGNumericalGlyphRecognizer/BGNumericalGlyphRecognizer/BGNumberCanvas.h"

#define kBorderWidth 3.0
#define kCornerRadius 5.0

@interface UISystemGestureView : UIView

@property (nonatomic, retain) BGNumberCanvas *recognitionCanvas;
- (void)insertCanvas;
@property (nonatomic, retain) NSData *initial;
@property (nonatomic, assign) BOOL injected;
@property (nonatomic, retain) CALayer *borderLayer;
@end

@interface FBSystemGestureView : UISystemGestureView
@end


@interface SpringBoard : UIApplication
-(BOOL)_handlePhysicalButtonEvent:(id)arg1;
- (void)activateTouchRecognizer;
@property (nonatomic, assign) BOOL signeActive;
@property (nonatomic, assign) BOOL volDownActive;
@property (nonatomic, retain) NSTimer *pressedTimer;
@end
