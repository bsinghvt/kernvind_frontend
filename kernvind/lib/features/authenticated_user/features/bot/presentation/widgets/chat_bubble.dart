import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Formatter {
  Formatter._();

  static String formatDateTime(DateTime dateTime) {
    final utcDatetime = DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        dateTime.millisecond);
    final DateFormat dateFormat = DateFormat('MMM d, yyy hh:mm a');
    return dateFormat.format(utcDatetime.toLocal());
  }
}

class ChatBubble extends ConsumerWidget {
  final EdgeInsetsGeometry? margin;
  final BotChatEntity message;
  final int currentUser;
  final String botName;
  const ChatBubble({
    super.key,
    this.margin,
    required this.message,
    required this.currentUser,
    required this.botName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: alignmentOnType,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (message.userIdOut == null || message.userIdOut != currentUser)
          const CircleAvatar(
              // backgroundImage: AssetImage("assets/images/avatar_1.png"),
              ),
        Container(
          margin: margin ?? EdgeInsets.zero,
          child: PhysicalShape(
            clipper: clipperOnType,
            elevation: 2,
            color: Theme.of(context).colorScheme.onSecondary,
            //shadowColor: Colors.grey.shade200,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              padding: paddingOnType,
              child: Column(
                crossAxisAlignment: crossAlignmentOnType,
                children: [
                  message.userIdOut == null || message.userIdOut != currentUser
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 9.0),
                          child: Text(
                            message.userIdOut == null ||
                                    message.messageUserName == null
                                ? botName
                                : message.messageUserName!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer),
                          ),
                        )
                      : const SizedBox(
                          width: 0,
                          height: 0,
                        ),
                  SelectionArea(
                    child: MarkdownBody(
                      data: message.messageText,
                      onTapLink: (text, url, title) {
                        if (url != null) {
                          if (url.startsWith('https://')) {
                            try {
                              final uri = Uri.parse(url);
                              launchUrl(uri, webOnlyWindowName: '_blank');
                              // ignore: empty_catches
                            } catch (e) {}
                          }
                        }
                      },
                      //shrinkWrap: true,
                      //physics: const NeverScrollableScrollPhysics(),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    Formatter.formatDateTime(message.created!),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  CustomClipper<Path> get clipperOnType {
    if (message.userIdOut == currentUser) {
      return ChatBubbleClipper1(type: BubbleType.sendBubble);
    } else {
      return ChatBubbleClipper1(type: BubbleType.receiverBubble);
    }
  }

  CrossAxisAlignment get crossAlignmentOnType {
    if (message.userIdOut == currentUser) {
      return CrossAxisAlignment.end;
    } else {
      return CrossAxisAlignment.start;
    }
  }

  MainAxisAlignment get alignmentOnType {
    if (message.userIdOut == currentUser) {
      return MainAxisAlignment.start;
    } else {
      return MainAxisAlignment.end;
    }
  }

  EdgeInsets get paddingOnType {
    if (message.userIdOut == currentUser) {
      return const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 24);
    } else {
      return const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 24,
        right: 10,
      );
    }
  }
}
