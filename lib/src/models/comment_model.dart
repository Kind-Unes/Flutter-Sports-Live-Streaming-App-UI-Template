class CommentModel {
  final String text;
  final String time;
  final int timeInMinutes;
  final List likedUserId;
  final String commentId;
  final String userId;
  final String imageURL;
  CommentModel( {required this.imageURL,
    required this.userId,
    required this.commentId,
    required this.timeInMinutes,
    required this.text,
    required this.time,
    required this.likedUserId,
  });
}
