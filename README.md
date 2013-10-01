dart\_properties
=======================

This is a very simply Dart library to provide "properties" in a similiar manner to way it is done with the Java.util.Properties.

It currently does not look anywhere for properties, and must be told to look by the main program. This behavior may change in a later version.

At the moment, this library is only capable of loading properties from JSON. This may be fixed in the future, and will be if you need it (just create a ticket), but for the demand for that feature is very low.

[![Build Status](https://drone.io/github.com/GK-12/dart_properties/status.png)](https://drone.io/github.com/GK-12/dart_properties/latest)

Sample usage
============

```dart
main() {
	// Load a data string from source
	// For this demo, it's hard coded
	String data = "{'bar': 'foo', 'wham': 'bang'}";
	
	Properties p = Properties.properties;
	
	p.loadJSON(data);
	
	p.getProperty('bar'); // Returns 'foo'
	p.getProperty('hi', 'nope'); // Returns nope
	
	p.setProperty('hi', 'world');
	p.getProperty('hi', 'nope'); // Returns world
	
	p.printJSON(); // Returns "{'bar': 'foo', 'wham': 'bang', 'hi': 'world'}"
}
```
