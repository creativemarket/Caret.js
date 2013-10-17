Caret.js
========

Get caret postion or offset from inputor

This is the core function that working in [At.js](http://ichord.github.com/At.js).
Now, It just become an simple jquery plugin so that everybody can use it.
And, of course, **At.js** is using this plugin too.

Live Demo
=========

http://ichord.github.com/Caret.js/


Usage
=====

### Regular Inputs

```javascript
// Get caret position
$('#inputor').caret('position'); // => {left: 15, top: 30, height: 20}

// Get caret offset
$('#inputor').caret('offset'); // => {left: 300, top: 400, height: 20}

var fixPos = 20;

// Get position of the 20th char in the inputor.
$('#inputor').caret('position', fixPos);

// Get offset of the 20th char.
$('#inputor').caret('offset', fixPos);

// more

// Get caret position from first char in inputor.
$('#inputor').caret('pos'); // => 15
// Set caret position in the inputor
$('#inputor').caret('pos', 15);
```

### Content Editable

```javascript
// Get caret offset
$('#inputor').caret('offset'); // => {left: 300, top: 400, height: 20}

var deltaPos = 5;

// get position of character 5 characters to the
// right of the current caret position
$('#inputor').caret('position', null, deltaPos);

// get offset of character 5 characters to the
// right of the current caret position
$('#inputor').caret('offset', null, deltaPos);
```