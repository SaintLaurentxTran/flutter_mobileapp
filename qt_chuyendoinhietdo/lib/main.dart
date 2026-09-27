import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chuyển đổi nhiệt độ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CHUYỂN ĐỔI ĐƠN VỊ NHIỆT ĐỘ'),
      debugShowCheckedModeBanner: false, // Ẩn banner debug
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controller để lấy giá trị từ TextField
  final TextEditingController _celsiusController = TextEditingController();
  
  // Biến lưu trữ trạng thái kết quả hiển thị
  String _result = '';

  // Hàm xử lý logic chuyển đổi khi nhấn FloatingActionButton
  void _convertTemperature() {
    setState(() {
      // Ép kiểu dữ liệu nhập vào sang double
      double? celsius = double.tryParse(_celsiusController.text);
      
      if (celsius != null) {
        // Công thức: F = (C * 9/5) + 32
        double fahrenheit = (celsius * 9 / 5) + 32;
        // Format hiển thị 1 chữ số thập phân
        _result = '${fahrenheit.toStringAsFixed(1)} độ';
      } else {
        _result = 'Lỗi nhập liệu';
      }
    });
  }

  @override
  void dispose() {
    _celsiusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Nhập nhiệt độ C:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _celsiusController,
                // Hiển thị bàn phím số
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Nhiệt độ F là:',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              const SizedBox(height: 8),
              Text(
                _result,
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _convertTemperature,
        tooltip: 'Chuyển đổi',
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.swap_vert),
      ),
    );
  }
}