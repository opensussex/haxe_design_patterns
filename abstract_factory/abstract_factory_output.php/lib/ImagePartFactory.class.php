<?php

class ImagePartFactory implements AbstractPartFactory{
	public function __construct() {}
	public function createContent($content) { if(!php_Boot::$skip_constructor) {
		return new ImageContent($content);
	}}
	public function createWrapper($wrapper) {
		return new ImageWrapper($wrapper);
	}
	function __toString() { return 'ImagePartFactory'; }
}
