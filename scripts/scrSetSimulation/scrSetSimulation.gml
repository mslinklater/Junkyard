/// @description Sets the state of the physics simulation
/// @param0 active the desired simulation state

var enabled = argument0;

physics_pause_enable(!enabled);

global.physicsEnabled = enabled;

if(enabled)
{
	scrBRMStartSimulation();
}
else
{
	scrBRMStopSimulation();
}
