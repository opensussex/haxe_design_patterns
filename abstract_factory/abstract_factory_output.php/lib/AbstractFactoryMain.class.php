<?php

class AbstractFactoryMain {
	public function __construct(){}
	static function main() {
		haxe_Log::trace("This is an example of an AbstractFactory", _hx_anonymous(array("fileName" => "AbstractFactoryMain.hx", "lineNumber" => 4, "className" => "AbstractFactoryMain", "methodName" => "main")));
		haxe_Log::trace("We first create the Factory we want to use", _hx_anonymous(array("fileName" => "AbstractFactoryMain.hx", "lineNumber" => 5, "className" => "AbstractFactoryMain", "methodName" => "main")));
		$part = new ParagraphPartFactory();
		haxe_Log::trace("We first Create an Part, and at the same time we set the content of that part", _hx_anonymous(array("fileName" => "AbstractFactoryMain.hx", "lineNumber" => 7, "className" => "AbstractFactoryMain", "methodName" => "main")));
		$partContent = $part->createContent("test");
		haxe_Log::trace($partContent->getContent(), _hx_anonymous(array("fileName" => "AbstractFactoryMain.hx", "lineNumber" => 9, "className" => "AbstractFactoryMain", "methodName" => "main")));
		$partContent->setContent("changed the content");
		haxe_Log::trace($partContent->getContent(), _hx_anonymous(array("fileName" => "AbstractFactoryMain.hx", "lineNumber" => 11, "className" => "AbstractFactoryMain", "methodName" => "main")));
		$partWrapper = $part->createWrapper("<div class=\"some_class\"></div>");
		haxe_Log::trace($partWrapper->getWrapper(), _hx_anonymous(array("fileName" => "AbstractFactoryMain.hx", "lineNumber" => 13, "className" => "AbstractFactoryMain", "methodName" => "main")));
	}
	function __toString() { return 'AbstractFactoryMain'; }
}
