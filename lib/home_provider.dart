import 'package:flutter/material.dart';
import 'package:http_request_api_with_provider/http_provider.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Post PROVIDER"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Consumer<HttpProvider>(
                  builder: (context, value, child) => Text(
                      (value.data["id"] == null)
                          ? "ID : Belum ada data"
                          : "ID : ${value.data["id"]}")),
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Text("Name : "),
            ),
            FittedBox(
              child: Consumer<HttpProvider>(
                  builder: (context, value, child) => Text(
                      (value.data["name"] == null)
                          ? "Belum ada data"
                          : "${value.data["name"]}")),
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Text("Job : "),
            ),
            FittedBox(
              child: Consumer<HttpProvider>(
                  builder: (context, value, child) => Text(
                      (value.data["job"] == null)
                          ? "Belum ada data"
                          : "${value.data["job"]}")),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text("createdAt"),
            ),
            FittedBox(
              child: Consumer<HttpProvider>(
                  builder: (context, value, child) => Text(
                      (value.data["createdAt"] == null)
                          ? "Belum ada data"
                          : "${value.data["createdAt"]}")),
            ),
            OutlinedButton(
                onPressed: () {
                  dataProvider.connectAPI("Budi", "Backend");
                },
                child: Text("POST DATA"))
          ],
        ),
      ),
    );
  }
}
