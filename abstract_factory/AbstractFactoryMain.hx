class AbstractFactoryMain {

    public static function main():Void {
        trace("This is an example of an AbstractFactory");
        var factory = new HTMLFactory();
        factory.createText('test');
        
        
    }
}


//Interface for the AbstractFactory
interface AbstractTextFactory {
    public function createText(content:String):Text;
}

interface Text {

}

class HTMLFactory implements AbstractTextFactory {
    public function new(){}
    public function createText(content:String):HTMLText{
        return new HTMLText();
    }
}

class JSONFactory implements AbstractTextFactory {
    public function new(){}
    public function createText(content:String):JSONText{
        return new JSONText();
    }    
}

class HTMLText implements Text {
    public function new(){
        trace('New HTMLText');
    }
}

class JSONText implements Text {
    public function new(){
        trace('New JSONText');
    }
}
