class ApiServices {
  Uri baseUri(String path, {Map<String, dynamic>? params}) =>
      Uri.https("api.faiznikah.com", path, params);
  
}
