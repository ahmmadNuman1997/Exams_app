
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import '../model/user.dart';
import '../utils/user_preferences.dart';
import '../widget/appbar_widget.dart';
import '../widget/profile_widget.dart';
import '../widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
    child: Builder(
      builder: (context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
              Directionality(
                textDirection:
                TextDirection.rtl,child:
              TextFieldWidget(
              label: 'اسم الطالب',
              text: user.name,
              onChanged: (name) {}, Figure_academic: '', phone_number: '',
            ),
        ),
            const SizedBox(height: 24),
        Directionality(
          textDirection:
          TextDirection.rtl,child:TextFieldWidget(
              label: 'البريد الالكتروني',
              text: user.email,
              onChanged: (email) {}, phone_number: '', Figure_academic: '',
            ),
        ),
            const SizedBox(height: 24),
            Directionality(
              textDirection:
              TextDirection.rtl,child:
            TextFieldWidget(
              label: 'الرقم الاكاديمي',
              text:  user.Figure_academic,
              onChanged: (Figure_academic) {}, Figure_academic: '', phone_number: '',
            ),
            ),
            const SizedBox(height: 24),
            Directionality(
              textDirection:
              TextDirection.rtl,child:
            TextFieldWidget(
              label: 'رقم الهاتف',
              text:  user.phone_number,
              onChanged: (phone_number) {}, Figure_academic: '', phone_number: '',
            ),
            ),
            const SizedBox(height: 24),
        Directionality(
          textDirection:
          TextDirection.rtl,child: TextFieldWidget(
              label: 'أضافة السيرة الذاتية الى ملفك الشخصي',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {}, Figure_academic: '', phone_number: '',
            ),
        ),
            const SizedBox(height: 10),

          ],
        ),
      ),
    ),
  );
}