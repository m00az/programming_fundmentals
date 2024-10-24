import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmig_fundmentals_main/view/setting_views/faq.dart';
import 'package:programmig_fundmentals_main/view/widgets/build_tablet.dart';
import '../../generated/l10n.dart';
import '../../logic/shared_preferences.dart';
import 'about_us.dart';
import 'help_and_support.dart';
import 'privacy_and_security.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF284B63),
        title: Text(S.of(context).settings,
            style: TextStyle(color: Colors.white, fontSize: 20)),
        centerTitle: true,
      ),
      body: SettingsListState(),
    );
  }
}

class SettingsListState extends StatefulWidget {
  const SettingsListState({super.key});

  @override
  _SettingsListStateState createState() => _SettingsListStateState();
}

class _SettingsListStateState extends State<SettingsListState> {
  String selectedLanguage = 'en';
  bool isDarkMode = false;

  final SharePrefrenceClass sharePrefrenceClass = SharePrefrenceClass();

  @override
  void initState() {
    super.initState();
    _loadSavedPreferences();
  }

  Future<void> _loadSavedPreferences() async {
    final savedLanguage =
        await sharePrefrenceClass.getVlue(key: 'language', defaultValue: 'en');
    final savedTheme = await sharePrefrenceClass.getVlue(
        key: 'themeMode', defaultValue: false);

    setState(() {
      selectedLanguage = savedLanguage;
      isDarkMode = savedTheme;
    });
  }

  Future<void> _savePreferences(String language, bool theme) async {
    await sharePrefrenceClass.saveValueString(key: 'language', value: language);
    await sharePrefrenceClass.saveValuebool(key: 'themeMode', value: theme);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildLanguageTile(context),
        const Divider(),
        _buildThemeTile(context), // وضع التبديل للوضع الليلي
        const Divider(),
        build_tablet(
          title: S.of(context).PrivacyAndSecurity,
          onTap: () => Get.to(const PrivacyAndSecurityPage()),
          icon: Icons.security,
        ),

        const Divider(),
        build_tablet(
          title: S.of(context).HelpSupport,
          onTap: () => Get.to(const HelpAndSupportPage()),
          icon: Icons.help,
        ),
        const Divider(),
        build_tablet(
          title: S.of(context).AboutUs,
          onTap: () => Get.to(const AboutUsPage()),
          icon: Icons.info,
        ),
        const Divider(),
        build_tablet(
          title: S.of(context).FAQ,
          onTap: () => Get.to(const FAQSection()),
          icon: Icons.question_answer,
        ),
      ],
    );
  }

  // Language Dropdown Tile
  ListTile _buildLanguageTile(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(S.of(context).settings),
      trailing: DropdownButton<String>(
        value: selectedLanguage,
        onChanged: (String? newValue) {
          setState(() {
            selectedLanguage = newValue!;
            _savePreferences(newValue, isDarkMode); // حفظ اللغة والوضع
          });
        },
        items: ['en', 'ar'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(_getLanguageName(value)),
          );
        }).toList(),
      ),
    );
  }

  // Theme Mode Toggle
  ListTile _buildThemeTile(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.brightness_6),
      title: Text(S.of(context).darkMode),
      trailing: Switch(
        activeColor: Colors.blue[800],
        value: isDarkMode,
        onChanged: (bool value) {
          setState(() {
            isDarkMode = value;
            _savePreferences(selectedLanguage, value);
          });
        },
      ),
    );
  }

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return S.of(context).english;
      case 'ar':
        return S.of(context).arabic;
      default:
        return 'Unknown';
    }
  }
}
