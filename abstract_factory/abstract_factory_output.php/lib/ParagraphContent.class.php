<?php

class ParagraphContent implements Content{
	public function __construct($content) {
		if(!php_Boot::$skip_constructor) {
		$this->content = "<p>" . _hx_string_or_null($content) . "</p>";
	}}
	public $content;
	public function getContent() {
		return $this->content;
	}
	public function setContent($content) {
		$this->content = "<p>" . _hx_string_or_null($content) . "</p>";
		return $this->content;
	}
	public function __call($m, $a) {
		if(isset($this->$m) && is_callable($this->$m))
			return call_user_func_array($this->$m, $a);
		else if(isset($this->__dynamics[$m]) && is_callable($this->__dynamics[$m]))
			return call_user_func_array($this->__dynamics[$m], $a);
		else if('toString' == $m)
			return $this->__toString();
		else
			throw new HException('Unable to call <'.$m.'>');
	}
	function __toString() { return 'ParagraphContent'; }
}
