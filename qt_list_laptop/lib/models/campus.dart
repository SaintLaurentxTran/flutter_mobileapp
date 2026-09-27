import 'package:flutter/material.dart';

/// Lớp Campus lưu trữ thông tin cho từng cơ sở HUTECH
class Campus {
  final String name; // Tên campus
  final String address; // Địa chỉ
  final String image; // Link ảnh
  final Color color; // Màu nền đại diện

  Campus({
    required this.name,
    required this.address,
    required this.image,
    required this.color,
  });

  /// Hàm static trả về danh sách campus mẫu
  static List<Campus> getCampuses() {
    return [
      Campus(
        name: 'DELL XPS 16',
        address: 'Intel Core Ultra 7 356H',
        image:
            'https://imagor.owtg.one/unsafe/1536x0/filters:quality(90)/https%3A%2F%2Fd28jzcg6y4v9j1.cloudfront.net%2Fmedia%2Fcore%2Fproducts%2F2026%2F1%2F7%2Fdell-xps-16-2026-da16260-zmq.jpg',
        color: Colors.blue,
      ),
      Campus(
        name: 'LENOVO THINKPAD X1 CARBON GEN 13',
        address: 'Intel Core Ultra 7 258V',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTLw7hVhNR012DspSV927WFmBq8DGfuzk7Uab24Noykg&s=10',
        color: Colors.purple,
      ),
      Campus(
        name: 'MACBOOK PRO M5',
        address: 'Apple M5 Max',
        image:
            'https://image.anhducdigital.vn/di-dong/may-tinh/macbook/macbook-pro/macbook-pro-m5-pro/macbook-pro-m5-pro-space-black-14-inch-2.jpg',
        color: Colors.red,
      ),
      Campus(
        name: 'ASUS ZEPHYRUS G16',
        address: 'Intel Core Ultra 9 285HX',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx_AJB34yhYuq7fIXFgJKcFPFZGBQgX6QvORGjLvGKvg&s=10',
        color: Colors.green,
      ),
    ];
  }
}
