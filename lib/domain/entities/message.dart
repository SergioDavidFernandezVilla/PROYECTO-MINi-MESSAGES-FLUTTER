enum ChatUser { bot, yo }

class Message {
  final String text;
  final String? imageUrl;
  final ChatUser chatUser;

  Message({
  required this.text, 
  this.imageUrl, 
  required this.chatUser});
}
