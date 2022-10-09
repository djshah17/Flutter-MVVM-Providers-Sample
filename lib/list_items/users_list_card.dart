import 'package:flutter/material.dart';
import 'package:flutter_mvvm_providers_sample/models/users_list_model.dart';

import '../utilities/constants.dart';

class UsersListCard extends StatefulWidget {
  final List<User> usersList;
  final int index;

  const UsersListCard({Key? key, required this.usersList, required this.index}) : super(key: key);

  @override
  _UsersListCardState createState() => _UsersListCardState();
}

class _UsersListCardState extends State<UsersListCard> {
  @override
  Widget build(BuildContext context) {

    User userInfo = widget.usersList.elementAt(widget.index);

    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(userInfo.name.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",true)),
            Text(userInfo.email.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.address.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.phone.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.website.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.company.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
        ],
      ),
    );
  }
}
