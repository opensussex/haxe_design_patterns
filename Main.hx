class Main {

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
    public static function create(widgetType:String):Dynamic {
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

// Widget Class
class SquareWidget {
    public function new() {
        trace('New Widget Created');
    }
}

class RoundWidget {
    public function new() {
        trace('New Wodget Created');
    }
}

class OvalWidget {
    public function new() {
        trace('New Wadget Created');
    }
}

class BasicWidget {
    public function new() {
        trace('New Wedget Created');
    }
}
