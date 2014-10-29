#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    timeSinceObstacle = 0.0f;
    
    
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    
    if (timeSinceObstacle > 2.0f)
        {
        //add new obstacle
        [self addObstacle];
        
        //reset timer
        timeSinceObstacle = 0.0f;
        }
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    [character flap];
    
    [self addObstacle];
    
}

@end
