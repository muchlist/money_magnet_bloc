class Validator {
  Validator();

  final ipPortRegex =
      RegExp(r'^http[s]?:\/\/(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:\d{1,5})\/?$');
  final dnsRegex = RegExp(r'^http[s]?:\/\/([a-zA-Z0-9-.]+)\/?$');
  final RegExp _emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  // validate email
  bool isValidEmail(String input) => _emailRegex.hasMatch(input);

  // validate dns
  bool isValidDNS(String input) {
    if (ipPortRegex.hasMatch(input)) {
      return true;
    }

    if (dnsRegex.hasMatch(input)) {
      return true;
    }

    return false;
  }
}
