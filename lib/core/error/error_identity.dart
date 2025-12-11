class ErrorIdentity {
  /// String representing the type of the error
  final String type;

  /// String representing the location that the error occurred
  final String location;

  /// This determines if the error is severe or not regard to the mobile app's perspective
  final bool isSevere;

  /// This determines if the error should be reported to the server
  final bool needsReport;

  /// Map of additional details about the error
  final Map<String, String?> details;

  /// The title of the error that will be used for logging and reporting.
  ///
  /// Note: This should be a concise title of the error and in a human-readable format.
  String get title => _buildTitle();

  /// The description of the error that will be used for logging and reporting.
  ///
  /// Note: This should be a concise description of the error and in a human-readable format.
  String get description => _buildDescription();

  ErrorIdentity({
    required this.type,
    required this.location,
    required this.isSevere,
    required this.needsReport,
    required this.details,
  });

  String _buildTitle() {
    return "$type | $location";
  }

  String _buildDescription() {
    var desc = _buildKeyValueRow("Type", type);

    desc += _buildKeyValueRow("At", location);

    for (var content in details.entries) {
      desc += _buildKeyValueRow(content.key, content.value ?? "null");
    }

    return desc;
  }

  String _buildKeyValueRow(String key, String value) {
    return "$key: $value | \n";
  }
}
