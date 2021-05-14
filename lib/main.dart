import 'package:flutter/material.dart';
import 'utils/database_helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: NotListesi(),
    );
  }
}

class NotListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Not Sepeti"),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text(
                        "Kategori Ekle",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      children: [
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (girilenKategoriAdi) {
                                if (girilenKategoriAdi.length < 3) {
                                  return "En az 3 karakter giriniz.";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                labelText: "Kategori Adı",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        ButtonBar(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Vazgeç",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orangeAccent,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Kaydet",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  });
            },
            tooltip: "Kategori Ekle",
            child: Icon(Icons.add_circle),
            mini: true,
          ),
          FloatingActionButton(
            onPressed: () {},
            tooltip: "Not Ekle",
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
