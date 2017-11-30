class AbstractFactoryMain {

    public static function main():Void {
        trace("This is an example of an AbstractFactory");
        trace("We first create the Factory we want to use");
        var part = new ParagraphPartFactory();
        trace("We first Create an Part, and at the same time we set the content of that part");
        var partContent = part.createContent('test');
        trace(partContent.getContent());
        partContent.setContent('changed the content');
        trace(partContent.getContent());
        var partWrapper = part.createWrapper('<div class="some_class"></div>');
        trace(partWrapper.getWrapper());
    }
}

///////////////////////////////
/*   THE INTERFACES         */
/////////////////////////////

//Interface for the AbstractFactory
interface AbstractPartFactory {
    public function createContent(content:String):Content;
    public function createWrapper(wrapper:String):Wrapper;
}

// The Content Part 
interface Content {
    public function getContent():String;
    public function setContent(content:String):String;
}

// The Wrapper
interface Wrapper {
    public function getWrapper():String;
    public function setWrapper(content:String):String;
}

///////////////////////////////
/*   THE IMPLEMENTATIONS    */
/////////////////////////////


class ImagePartFactory implements AbstractPartFactory {
    public function new(){}
    public function createContent(content:String):ImageContent{
        return new ImageContent(content);
    }
    public function createWrapper(wrapper:String):ImageWrapper{
        return new ImageWrapper(wrapper);
    }
}

class ParagraphPartFactory implements AbstractPartFactory {
    public function new(){}
    public function createContent(content:String):ParagraphContent{
        return new ParagraphContent(content);
    } 
    public function createWrapper(wrapper:String):ParagraphWrapper{
        return new ParagraphWrapper(wrapper);
    }   
}

class ImageContent implements Content {
    private var content:String;
    public function new(content){
        this.content = '<img>'+content+'</img>';
    }
    
    public function getContent() {
        return this.content;
    }
    
    public function setContent(content:String) {
        this.content = '<img>'+content+'</img>';
        return this.content;
    }
}

class ParagraphContent implements Content {
    private var content:String;
    public function new(content){
        this.content = '<p>'+content+'</p>';
    }
    
    public function getContent() {
        return this.content;
    }
    
    public function setContent(content:String) {
        this.content = '<p>'+content+'</p>';
        return this.content;
    }
}

class ParagraphWrapper implements Wrapper {
    private var wrapper:String;
    public function new(wrapper){
        this.wrapper = wrapper;
    }
    
    public function getWrapper() {
        return (this.wrapper);
    }
    
    public function setWrapper(wrapper:String) {
        this.wrapper = wrapper;
        return this.wrapper;
    }
}

class ImageWrapper implements Wrapper {
    private var wrapper:String;
    public function new(wrapper){
        this.wrapper = wrapper;
    }
    
    public function getWrapper() {
        return (this.wrapper);
    }
    
    public function setWrapper(wrapper:String) {
        this.wrapper = wrapper;
        return this.wrapper;
    }
}
