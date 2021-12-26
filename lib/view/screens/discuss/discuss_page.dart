import 'package:course/components/importing_packages.dart';
import 'package:course/services/cloud/discuss_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/constants/size_config.dart';

class DiscussPage extends StatefulWidget {
  final String _lessonId;

  const DiscussPage(this._lessonId, {Key? key}) : super(key: key);

  @override
  State<DiscussPage> createState() => _DiscussPageState();
}

class _DiscussPageState extends State<DiscussPage> {
  final Uuid _uuid = const Uuid();
  final DiscussService _discussService = DiscussMethods();
  final TextEditingController _messageController = TextEditingController();
  final _uid = FirebaseAuth.instance.currentUser!.uid;
  late String _lessonId;
  late double _width;

  @override
  void initState() {
    super.initState();
    _lessonId = widget._lessonId;
  }

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: getUniqueH(572.0),
        child: Column(
          children: [
            _buildMessageList(),
            _showMessageField(),
          ],
        ),
      ),
    );
  }

  Expanded _buildMessageList() {
    return Expanded(
        child: FutureBuilder(
      future: _discussService.getDiscussList(_lessonId),
      builder: (context, AsyncSnapshot<List<Discuss>> snap) {
        if (snap.hasData) {
          if (snap.data!.isEmpty) {
            return Image.asset(MyIcons.questions);
          }
          return ListView.builder(
              itemCount: snap.data!.length,
              itemBuilder: (context, index) {
                Discuss discuss = snap.data![index];
                return Container(
                  alignment: discuss.userId == _uid
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: _setMessageLayout(discuss),
                );
              });
        } else if (snap.hasError) {
          return Image.asset(MyIcons.addCircle);
        }
        return CupertinoActivityIndicator(radius: getUniqueW(24.0));
      },
    ));
  }

  _showMessageField() => Container(
        decoration: BoxDecoration(
            color: redConst,
            border: Border.all(color: redConst, width: 0.5),
            borderRadius: BorderRadius.circular(getUniqueW(6.0))),
        child: Row(
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: getUniqueH(160.0)),
                child: TextField(
                  controller: _messageController,
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  textCapitalization: TextCapitalization.sentences,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: "Message", border: _setBorder()),
                ),
              ),
            ),
            CustomIconButton(
                onPressed: _onSendButtonPressed, svgIcon: MyIcons.add)
          ],
        ),
      );

  void _onSendButtonPressed() async {
    String id = _uuid.v4();
    String message = _messageController.text;
    if (message.isEmpty) return;
    _messageController.clear();
    Discuss discuss = Discuss(id, _uid, _lessonId, message, DateTime.now());
    await _discussService.setDiscuss(discuss).whenComplete(() {
      setState(() {});
    });
  }

  _setMessageLayout(Discuss discuss) => Container(
        margin: EdgeInsets.symmetric(vertical: getUniqueH(3.0)),
        padding: EdgeInsets.symmetric(
          horizontal: getUniqueW(8.0),
          vertical: getUniqueH(6.0),
        ),
        constraints: BoxConstraints(maxWidth: _width * 0.8),
        child: CustomTextWidget(
          discuss.message,
          color: _uid == discuss.userId ? whiteConst : greyConst,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: redConst,
            width: getUniqueW(0.5),
          ),
          borderRadius: BorderRadius.circular(getUniqueW(6.0)),
          color: _uid == discuss.userId
              ? redConst
              : whiteConst,
        ),
      );

  OutlineInputBorder _setBorder() =>
      const OutlineInputBorder(borderSide: BorderSide.none);
}
