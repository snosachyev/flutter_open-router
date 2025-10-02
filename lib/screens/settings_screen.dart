import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _openRouterKeyController = TextEditingController();
  final _vseGPTKeyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadKeys();
  }

  Future<void> _loadKeys() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _openRouterKeyController.text = prefs.getString('openRouterKey') ?? '';
      _vseGPTKeyController.text = prefs.getString('vseGPTKey') ?? '';
    });
  }

  Future<void> _saveKeys() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('openRouterKey', _openRouterKeyController.text);
    await prefs.setString('vseGPTKey', _vseGPTKeyController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Ключи сохранены')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки провайдера')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _openRouterKeyController,
              decoration: const InputDecoration(
                labelText: 'OpenRouter API Key',
              ),
            ),
            TextField(
              controller: _vseGPTKeyController,
              decoration: const InputDecoration(
                labelText: 'VSEGPT API Key',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveKeys,
              child: const Text('Сохранить'),
            ),
          ],
        ),
      ),
    );
  }
}
