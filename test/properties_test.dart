import "package:unittest/unittest.dart";
import "package:dart_properties/dart_properties.dart";

main() {
  test("able to set a property", () {
    Properties p = new Properties();
    
    p.setProperty("featureA", "enabled");
    
    Map<String, String> map = p.map;
    
    expect(map.containsKey("featureA"), true);
    expect(map['featureA'], "enabled");
  });
  test("able to get a property", () {
    Map<String, String> map = new Map<String, String>();
    map['featureA'] = "enabled";
    
    Properties p = new Properties(map);
    
    expect(p.getProperty("featureA"), "enabled");
  });
  test("getting property that doesn't exist returns default", () {
    
    Properties p = new Properties();
    
    expect(p.getProperty("featureB"), null);
    expect(p.getProperty("featureB", "enabled"), "enabled");
  });
  test("able to load properties from JSON", () {
    String json = "{'featureA': 'enabled'}";
    
    Properties p = new Properties();
    p.loadJSON(json);
    
    expect(p.getProperty("featureA"), "enabled");
  });
  test("able to load properties from XML", () {
    String xml = '''
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
<properties>
<comment>Hi</comment>
<entry key="featureA">enabled</entry>
</properties>
''';
    
    Properties p = new Properties();
    p.loadXML(xml);
    
    expect(p.getProperty("featureA"), "enabled");
  });
  test("able to print properties to JSON", () {
    String json = "{'featureA': 'enabled'}";
    
    Map<String, String> map = new Map<String, String>();
    map['featureA'] = "enabled";
    
    Properties p = new Properties(map);
    
    expect(p.printJSON(), json);
  });
  test("able to print properties to XML", () {
    String xml = '''
<properties>
<entry key="featureA">enabled</entry>
</properties>
''';
   
    Map<String, String> map = new Map<String, String>();
    map['featureA'] = "enabled";
    
    Properties p = new Properties(map);
    
    expect(p.printXML(), xml);
  });
  test("able to get a list of all defined properties", () {
    Map<String, String> map = new Map<String, String>();
    map['featureA'] = "enabled";
    map['featureB'] = "enabled";
    
    Properties p = new Properties(map);
    
    List<String> strings = new List<String>();
    
    for(String s in p.propertyNames()) {
      expect(map.containsKey(s), true);
      strings.add(s);
    }
    
    // Verify that all properties were available
    for(String s in map.keys) {
      expect(strings.contains(s), true);
    }
  });
}