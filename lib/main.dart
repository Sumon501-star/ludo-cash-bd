import 'package:flutter/material.dart';

void main() => runApp(LudoCashApp());

class LudoCashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ludo Cash BD',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}

// Dummy Login Page
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Login as Demo User'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (_) =>
                      HomeScreen(username: 'demoUser', balance: 150)),
            );
          },
        ),
      ),
    );
  }
}

// Home Screen
class HomeScreen extends StatefulWidget {
  final String username;
  final int balance;

  HomeScreen({required this.username, required this.balance});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _balance = 0;

  @override
  void initState() {
    super.initState();
    _balance = widget.balance;
  }

  List<Map<String, dynamic>> matches = [
    {'title': 'Ludo Match 1', 'entry': 50, 'win': 90},
    {'title': 'Ludo Match 2', 'entry': 100, 'win': 180},
  ];

  void joinMatch(int entryFee) {
    if (_balance >= entryFee) {
      setState(() {
        _balance -= entryFee;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You joined the match! Entry fee deducted.')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Not enough balance! Please recharge.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome, ${widget.username}')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance: $_balance Tk',
                    style: TextStyle(fontSize: 18)),
                ElevatedButton(
                  child: Text('Recharge'),
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Send money to Bkash: 01XXXXXXXXX')),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: matches.length,
              itemBuilder: (context, index) {
                final match = matches[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(match['title']),
                    subtitle: Text(
                        'Entry: ${match['entry']} Tk | Win: ${match['win']} Tk'),
                    trailing: ElevatedButton(
                      child: Text('Join'),
                      onPressed: () => joinMatch(match['entry']),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}import 'package:flutter/material.dart';

void main() => runApp(LudoCashApp());

class LudoCashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ludo Cash BD',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}

// Dummy Login Page
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Login as Demo User'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (_) =>
                      HomeScreen(username: 'demoUser', balance: 150)),
            );
          },
        ),
      ),
    );
  }
}

// Home Screen
class HomeScreen extends StatefulWidget {
  final String username;
  final int balance;

  HomeScreen({required this.username, required this.balance});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _balance = 0;

  @override
  void initState() {
    super.initState();
    _balance = widget.balance;
  }

  List<Map<String, dynamic>> matches = [
    {'title': 'Ludo Match 1', 'entry': 50, 'win': 90},
    {'title': 'Ludo Match 2', 'entry': 100, 'win': 180},
  ];

  void joinMatch(int entryFee) {
    if (_balance >= entryFee) {
      setState(() {
        _balance -= entryFee;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You joined the match! Entry fee deducted.')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Not enough balance! Please recharge.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome, ${widget.username}')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance: $_balance Tk',
                    style: TextStyle(fontSize: 18)),
                ElevatedButton(
                  child: Text('Recharge'),
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Send money to Bkash: 01XXXXXXXXX')),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: matches.length,
              itemBuilder: (context, index) {
                final match = matches[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(match['title']),
                    subtitle: Text(
                        'Entry: ${match['entry']} Tk | Win: ${match['win']} Tk'),
                    trailing: ElevatedButton(
                      child: Text('Join'),
                      onPressed: () => joinMatch(match['entry']),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
