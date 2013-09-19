dart\_properties
=======================

This is a very simply Dart library to provide "properties" in a similiar manner to way it is done with the Java.util.Properties.

It currently does not look anywhere for properties, and must be told to look by the main program. This behavior may change in a later version.

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