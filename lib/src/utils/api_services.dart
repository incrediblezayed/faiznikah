class ApiServices {
  Uri baseUri(String path, {Map<String, dynamic>? params}) =>
      Uri.https("api.faiznikah.com", path, params);
  Uri login() => baseUri('/accounts/login/');
  Uri otp() => baseUri('/accounts/verify/');
  Uri profiles({Map<String, dynamic>? params}) =>
      baseUri('/profiles/', params: params);
  Uri profileDetail(String number) => baseUri('/profile/$number');
  Uri createProfile() => baseUri('/create-profile/');
  Uri updateProfile() => baseUri('/update-profile/');
  Uri blogs() => baseUri('/blogs/');
  Uri events() => baseUri('/events/');
  Uri advertisement() => baseUri('/advertisements/');
  Uri successStories() => baseUri('/success-stories/');
  Uri teamMembers() => baseUri('/team-members/');
}
