package mobile.objects;

/**
 * ...
 * @author: Karim Akra
 */
interface IMobileControls
{
    public var buttonLeft:TouchButton;
	public var buttonUp:TouchButton;
	public var buttonRight:TouchButton;
	public var buttonDown:TouchButton;
    public var buttonExtra:TouchButton;
    public var buttonExtra2:TouchButton;
    public var instance:MobileInputManager;
    public inline function anyPressed(buttonsArray:Array<MobileInputID>):Bool;
    public inline function anyJustPressed(buttonsArray:Array<MobileInputID>):Bool;
    public inline function anyJustReleased(buttonsArray:Array<MobileInputID>):Bool;

    // basic vars & functions
    public var alpha:Float;
    public var visible:Bool;
    public var camera(get, set):FlxCamera;
    public var cameras(get, set):Array<FlxCamera>;
    public var members(get, never):Array<TouchButton>;
    public inline function forEachAlive(Function:TouchButton->Void, Recurse:Bool = false):Void;
}