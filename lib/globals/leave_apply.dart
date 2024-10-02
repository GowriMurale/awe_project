class LeaveApplication {
  String leaveType;
  DateTime fromDate;
  DateTime toDate;
  int numberOfDays;
  String applyTo; // This should be included
  String reason;

  LeaveApplication({
    required this.leaveType,
    required this.fromDate,
    required this.toDate,
    required this.numberOfDays,
    required this.applyTo, // Include applyTo in the constructor
    required this.reason,
  });

  // Add a method to convert to a map if needed for AWS
  Map<String, dynamic> toMap() {
    return {
      'leaveType': leaveType,
      'fromDate': fromDate.toIso8601String(),
      'toDate': toDate.toIso8601String(),
      'numberOfDays': numberOfDays,
      'applyTo': applyTo,
      'reason': reason,
    };
  }
}
