<?php

class ParagraphPartFactory implements AbstractPartFactory{
	public function __construct() {}
	public function createContent($content) { if(!php_Boot::$skip_constructor) {
		return new ParagraphContent($content);
	}}
	public function createWrapper($wrapper) {
		return new ParagraphWrapper($wrapper);
	}
	function __toString() { return 'ParagraphPartFactory'; }
}
