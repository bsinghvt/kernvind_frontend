import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kernvind/features/playground/domain/entities/playground_chat_entity.dart';
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
  final PlaygroundChatEntity message;
  final String botName;
  const ChatBubble({
    super.key,
    this.margin,
    required this.message,
    required this.botName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: alignmentOnType,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                  message.messageUserName != 'Guest'
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 9.0),
                          child: Text(
                            botName,
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
    if (message.messageUserName == 'Guest') {
      return ChatBubbleClipper1(type: BubbleType.sendBubble);
    } else {
      return ChatBubbleClipper1(type: BubbleType.receiverBubble);
    }
  }

  CrossAxisAlignment get crossAlignmentOnType {
    if (message.messageUserName == 'Guest') {
      return CrossAxisAlignment.end;
    } else {
      return CrossAxisAlignment.start;
    }
  }

  MainAxisAlignment get alignmentOnType {
    if (message.messageUserName == 'Guest') {
      return MainAxisAlignment.start;
    } else {
      return MainAxisAlignment.end;
    }
  }

  EdgeInsets get paddingOnType {
    if (message.messageUserName == 'Guest') {
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
