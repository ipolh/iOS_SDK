
#import "UDDir.h"
#import "UDAudio.h"
#import "RCAudioPlayer.h"


@implementation UDAudio

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (NSNumber *)duration:(NSString *)path
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	AVURLAsset *asset = [AVURLAsset URLAssetWithURL:[NSURL fileURLWithPath:path] options:nil];
	NSInteger duration = (NSInteger) round(CMTimeGetSeconds(asset.duration));
	return @(duration);
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (void)playMessageIncoming
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	NSString *path = [UDDir application:@"rcmessage_incoming.aiff"];
	[[RCAudioPlayer sharedPlayer] playSound:path];
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (void)playMessageOutgoing
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	NSString *path = [UDDir application:@"rcmessage_outgoing.aiff"];
	[[RCAudioPlayer sharedPlayer] playSound:path];
}

@end
