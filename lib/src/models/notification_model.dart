class NotificationModel {
  String title;
  String subtitle;
  String notificationType;
  String time;
  int differenceInMinutes;
  String notificationId;
  NotificationModel({
    required this.notificationId,
    required this.differenceInMinutes,
    required this.notificationType,
    required this.title,
    required this.subtitle,
    required this.time,
  });
}

List<String> notificationsTypes = [
  "NewProduct",
  "Anniversary",
  "Update",
];
