class DecoratorMain {

    public static function main():Void {
        var email = new Email();
        email.loadBody();
         
        /*
         *  Email with Xmas Greetings
         */
         
        var email = new Email();
        var christmasEmailBodyemail = new ChristmasEmailBody(email);
        christmasEmailBodyemail.loadBody();
    }
}


interface EmailBody {
    public function loadBody():Void;
}
 
class Email implements EmailBody {
    public function new (){}
    public function loadBody() {
        trace("This is Main Email body.<br />");
    } 
}
 
class EmailBodyDecorator implements EmailBody {
     
    private var emailBody:EmailBody;
     
    public function new(emailBody:EmailBody) {
        this.emailBody = emailBody;
    }
     
    public function loadBody(){};
     
} 
 
class ChristmasEmailBody extends EmailBodyDecorator {
     
    override public function loadBody() {
         
        trace("This is Extra Content for Christmas<br />"); 
    }
     
}
