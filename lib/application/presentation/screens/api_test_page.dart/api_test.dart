import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiTestScreen extends StatefulWidget {
  const ApiTestScreen({super.key});

  @override
  State<ApiTestScreen> createState() => _ApiTestScreenState();
}

class _ApiTestScreenState extends State<ApiTestScreen> {
  String testRsposnse = 'response data';

  String testRsposnseCode = 'status code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('api tester'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                print('pressed');
                String token =
                    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJkaWJpbkBnbWFpbC5jb20iLCJyb2xlIjoiY2xpZW50IiwiZXhwIjoxNjk3MTczOTg4LCJpYXQiOjE2OTcwMDExODh9.NtqnQykbjsDQVVrH2f57sQp0cqm3GprMCxMqJPeq8UA';
                Dio dio = Dio();
                try {
                  // dio.options.baseUrl='http://192.168.195.227:3000';
                  dio.options.headers['content-Type'] = 'application/json';
                  dio.options.headers["authorization"] = token;
                  //  dio.options.headers[''];
                  Response response = await dio.get(
                    'http://192.168.195.227:3000/users/profile/address?id=0',
                  );
                  print(response.statusCode);
                  testRsposnseCode = response.statusCode.toString();
                  testRsposnse = response.data.toString();

                  print(testRsposnse);
                } on DioException catch (d) {
                  print(d.error.toString());
                  print(d.message);
                } catch (e) {
                  print(e.toString());
                }
                setState(() {});
              },
              child: const Text('test api'),
            ),
            Text(testRsposnse),
            Text(testRsposnseCode)
          ],
        ),
      )),
    );
  }
}
