class SimpleFactoryMain {

    public static function main():Void {
        trace("This is an example of a SimpleFactory");
        
        var widget = SimpleFactory.create('square_widget');
    }
}

// SimpleFactory - An Object that Creates other Objects 
// The SimpleFactory is the simplest form.
class SimpleFactory {
    public function new() { }
    
    /*
        We pass in a string and the return is Dynamic as we don't know what type
        of object will be passed out.
     */
    public static function create(widgetType:String):Widget {
        switch(widgetType) {
            case 'square_widget':
                return new SquareWidget();
            case 'round_widget':
                return new RoundWidget();
            case 'oval_widget':
                return new OvalWidget();
            default:
                return new BasicWidget();
        }
    }
}


interface Widget{
    
}

// Widget Class
class SquareWidget implements Widget{
    public function new() {
        trace('New Square Widget');
    }
}

class RoundWidget implements Widget{
    public function new() {
        trace('New Round Widget');
    }
}

class OvalWidget implements Widget{
    public function new() {
        trace('New Oval Widget');
    }
}

class BasicWidget implements Widget{
    public function new() {
        trace('New Wedget Created');
    }
}
