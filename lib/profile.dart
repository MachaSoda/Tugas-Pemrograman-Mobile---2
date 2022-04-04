import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FormProfile extends StatefulWidget {
  const FormProfile({Key? key}) : super(key: key);

  @override
  State<FormProfile> createState() => _FormProfileState();
}

class _FormProfileState extends State<FormProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Halaman Profile'
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.only(top: 10),
        child: Form(
          child: ListView(
            children: <Widget> [
              Text("Selamat Datang di Universitas Esa Unggul",
                  style: TextStyle(fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center),
              Text("Program Studi Teknik Informatika - Fakultas Ilmu Komputer",
                style: TextStyle(fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(Icons.person, size: 70, color: Colors.white,),
                ),
              ),
              Text("Taruh Foto Disini !", textAlign: TextAlign.center,),

              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'masukkan nama',
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(height: 6.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'masukkan NIM',
                  labelText: 'NIM',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(height: 6.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'masukkan hobby',
                  labelText: 'Hobby',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(height: 6.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'masukkan pekerjaan',
                  labelText: 'Pekerjaan',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(height: 6.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'masukkan status',
                  labelText: 'Status',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(height: 8.0),
              ElevatedButton(
                child: Text('Simpan'),
                onPressed: null,
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue)) ,
              )
            ],
          ),
        ),
      ),
    );
  }

}
