<?php

interface AbstractPartFactory {
	function createContent($content);
	function createWrapper($wrapper);
}
