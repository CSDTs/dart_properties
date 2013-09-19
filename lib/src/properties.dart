part of dart_properties;

class Properties {
  Map<String, String> _map;
  
  /**
   * Creates a properties objects.
   * 
   * If no default map is provided, an empty one is created.
   */
  Properties([this._map]) {
    if(_map == null) {
      _map = new Map<String, String>();
    }
  }
  
  /**
   * Returns the value of property [key], or [default].
   * 
   * Searches the available properties for a value
   *  called [key]. If it not found, return def. If
   *  def is ommitted, return null
   */
  String getProperty(String key, [String def]) {
    return null;
  }
  
  /**
   * Updates property [key] to value [value] and returns the previous value.
   * 
   * If there is no previous value, return null.
   */
  String setProperty(String key, String value) {
    return null;
  }
  
  /**
   * Returns an iterable consisting of all property names.
   * 
   * Or an iterable with zero elements if there are no property names.
   */
  Iterable propertyNames() {
    return null;
  }
  
  /* !! I was having trouble getting this to run the unit tests...
   *  The reliance on dart:html would not work without a browser.
   * Loads properties from request file.
   * 
   * If blocking is true, this function will wait for the
   *  request to complete and return before returning.
   * 
   * Supported file formats are:
   *  - XML
   *  - JSON
   * These file formats should be set by the MIME type of the document.
   *  
   * Example: 
   *  Properties.getProperties().load(HttpRequest.request("http://127.0.0.1/config"))
   */
  /*void load(Future<EventTarget> request, [bool blocking = false]) {
    
  }*/
  
  /**
   * Populates the properties with data from [data]
   */
  void loadJSON(String data) {
    
  }

  /**
   * Populates the properties with data from [data]
   */
  void loadXML(String data) {
    
  }
  
  /**
   * Returns a JSON string of all the current properties.
   */
  String printJSON() {
    return null;
  }
  
  /**
   * Returns a XML string of all the current properties
   */
  String printXML() {
    return null;
  }
  
  /**
   * Singleton that should be used in most cases.
   */
  static Properties properties = new Properties();
}