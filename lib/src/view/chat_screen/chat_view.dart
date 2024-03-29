import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/constant/image_string.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/widget/widget_circular_avatar.dart';
import 'package:ignition_lab4/src/widget/widget_custom_appbar.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: Visibility(
          visible: isVisible,
          child: FloatingActionButton(
            backgroundColor: Colors.purple,
            shape: const CircleBorder(),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          leading: const CircularAvatarView(),
          title: const Text(
            'ChatBox',
            style: appBarTextStyle,
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            onTap: (value) {
              if (value == 1) {
                setState(() {
                  isVisible = true;
                });
              } else {
                setState(() {
                  isVisible = false;
                });
              }
            },
            tabs: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: isVisible ? Colors.black : Colors.purple),
                child: const Tab(
                  text: 'Chat',
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: isVisible ? Colors.purple : Colors.black),
                child: const Tab(
                  text: 'Group',
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [MessagesList(), GroupMessage()],
        ),
      ),
    );
  }
}

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(8.0),
          leading: Image.asset(ImageString.circularAvatar),
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Message Preview',
                style: TextStyle(color: Colors.grey),
              ),
              Divider(
                color: Colors.grey,
              )
            ],
          ),
          trailing: const Text(
            '8:40pm',
            style: TextStyle(color: Colors.white54),
          ),
        );
      },
      itemCount: 5,
    );
  }
}

class GroupMessage extends StatelessWidget {
  const GroupMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        return const ListTile(
          leading: Icon(Icons.group),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Message Preview',
                style: TextStyle(color: Colors.grey),
              ),
              Divider(
                color: Colors.grey,
              )
            ],
          ),
          trailing: Text(
            '8:40pm',
            style: TextStyle(color: Colors.white54),
          ),
        );
      },
      itemCount: 5,
    );
  }
}

var kActiveButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.purple,
    shape: const ContinuousRectangleBorder(
      side: BorderSide(
        style: BorderStyle.solid,
        color: Colors.white,
        width: 1,
      ),
    ));

var kInActiveButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.black,
  shape: const ContinuousRectangleBorder(
    side: BorderSide(
      style: BorderStyle.solid,
      color: Colors.white,
      width: 1,
    ),
  ),
);

/*
class OldChatView extends StatefulWidget {
  const OldChatView({super.key});

  @override
  State<OldChatView> createState() => _OldChatViewState();
}

class _OldChatViewState extends State<OldChatView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ChatView.choice = !ChatView.choice;
                    });
                  },
                  style: ChatView.choice
                      ? kActiveButtonStyle
                      : kInActiveButtonStyle,
                  child: const Text(
                    'Message',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ChatView.choice = !ChatView.choice;
                    });
                  },
                  style: !ChatView.choice
                      ? kActiveButtonStyle
                      : kInActiveButtonStyle,
                  child: const Text(
                    'Group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 175,
          child: ChatView.choice ? const MessagesList() : const GroupMessage(),
        ),
      ],
    );
  }
}
*/
