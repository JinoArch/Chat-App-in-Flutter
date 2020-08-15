import 'package:chat_app_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: elon,
    time: '5:30 PM',
    text: 'Hey Jino! whats up?',
    unread: true,
  ),
  Message(
    sender: ece,
    time: '4:30 PM',
    text: 'Guyzz! Hows my new status?',
    unread: true,
  ),
  Message(
    sender: gnu,
    time: '3:30 PM',
    text: 'No offtopics..just learn linux and conquer the world',
    unread: false,
  ),
  Message(
    sender: jeff,
    time: '2:30 PM',
    text: 'Good to hear that',
    unread: true,
  ),
  Message(
    sender: linus,
    time: '1:30 PM',
    text: 'HULK SMASH!!',
    unread: false,
  ),
  Message(
    sender: prinz,
    time: '12:30 PM',
    text: 'I\'m hitting gym bro. I\'m immune to mortal diseases. Are you coming?',
    unread: false,
  ),
  Message(
    sender: rs,
    time: '11:30 AM',
    text: 'I am coming to India..we will meet soon',
    unread: false,
  ),
  Message(
    sender: ronaldo,
    time: '12:45 AM',
    text: 'Kick that one!',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: elon,
    time: '5:30 PM',
    text: 'Hey Jino! whats up?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'I am curious to meet you',
    unread: true,
  ),
  Message(
    sender: elon,
    time: '3:45 PM',
    text: 'Great',
    unread: true,
  ),
  Message(
    sender: elon,
    time: '3:15 PM',
    text: 'Once I will visit',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Thanks you sir! actually you are my inspiration',
    unread: true,
  ),
  Message(
    sender: elon,
    time: '2:30 PM',
    text: 'You are awesome',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Yup',
    unread: true,
  ),
  Message(
    sender: elon,
    time: '2:00 PM',
    text: 'You made your own company?',
    unread: true,
  ),
];