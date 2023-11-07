import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                            Text('Remember me'),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {},
                              child: Text('Forgot Password?'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DashboardScreen()));
                              },
                              child: Text('Login'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegistScreen()));
                          },
                          child: Text('Belum Punya Akun? Registrasi Disini'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue, Colors.purple],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'asset/images/bg.jpg'), // Ganti dengan gambar profil Anda
                        radius: 40,
                      ),
                      SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hallo',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Selamat Datang',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari...',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Card(
                color: Colors.white.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Index Masa Tubuh",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.lightBlue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "Ketahui status Gizimu melalui perbandingan berat dan tinggi badan",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MasaTubuh()));
                        },
                        child: Text('Cek Sekarang'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Card(
                color: Colors.white.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Energi Basal",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.lightBlue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "Ini adalah deskripsi singkat tentang Energi Basal.",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Cek Sekarang'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Card(
                color: Colors.white.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Energi Expenditure",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.lightBlue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "Ini adalah deskripsi singkat tentang Energi Expenditure.",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Cek Sekarang'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MasaTubuh extends StatefulWidget {
  @override
  _MasaTubuhState createState() => _MasaTubuhState();
}

class _MasaTubuhState extends State<MasaTubuh> {
  String selectedGender = 'Laki-Laki';
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String bmiResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue, Colors.purple],
          ),
        ),
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                "Hitung Index Masa Tubuh",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Card(
                color: Colors.white.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jenis Kelamin",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.lightBlue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RadioListTile(
                        title: Text('Laki-Laki'),
                        value: 'Laki-Laki',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Perempuan'),
                        value: 'Perempuan',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                      ),
                      SizedBox(height: 24.0),
                      Text(
                        "Berat Badan",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.lightBlue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        controller: weightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Masukkan berat badan (kg)',
                        ),
                      ),
                      SizedBox(height: 24.0),
                      Text(
                        "Tinggi Badan",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.lightBlue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        controller: heightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Masukkan tinggi badan (cm)',
                        ),
                      ),
                      SizedBox(height: 24.0),
                      Text(
                        "Usia",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.lightBlue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Masukkan usia',
                        ),
                      ),
                      SizedBox(height: 24.0),
                      ElevatedButton(
                        onPressed: () {
                          double weight =
                              double.tryParse(weightController.text) ?? 0.0;
                          double height =
                              double.tryParse(heightController.text) ??
                                  0.0 / 100.0;
                          int age = int.tryParse(ageController.text) ?? 0;
                          String gender = selectedGender;

                          double bmr = 0.0;
                          double caloriesNeeded = 0.0;
                          double carbNeeded = 0.0;
                          double fatNeeded = 0.0;
                          double proteinNeeded = 0.0;

                          if (gender == 'Laki-Laki') {
                            bmr = 88.362 +
                                (13.397 * weight) +
                                (4.799 * height * 100) -
                                (5.677 * age);
                          } else if (gender == 'Perempuan') {
                            bmr = 447.593 +
                                (9.247 * weight) +
                                (3.098 * height * 100) -
                                (4.330 * age);
                          }

                          double activityFactor = 1.2;

                          caloriesNeeded = bmr * activityFactor;

                          carbNeeded = (caloriesNeeded * 0.55 / 4.0);
                          fatNeeded = (caloriesNeeded * 0.30 / 9.0);
                          proteinNeeded = (caloriesNeeded * 0.15 / 4.0);

                          setState(() {
                            bmiResult = 'BMR: ${bmr.toStringAsFixed(2)} Kkal\n' +
                                'Kebutuhan Kalori Harian: ${caloriesNeeded.toStringAsFixed(2)} Kkal\n' +
                                'Kebutuhan Karbohidrat: ${carbNeeded.toStringAsFixed(2)} gram\n' +
                                'Kebutuhan Lemak: ${fatNeeded.toStringAsFixed(2)} gram\n' +
                                'Kebutuhan Protein: ${proteinNeeded.toStringAsFixed(2)} gram';
                          });
                        },
                        child: Text('Lihat Hasil'),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DashboardScreen()));
                        },
                        child: Text("Back"),
                      ),
                      Text(
                        bmiResult ?? "",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Create Username',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Create Password',
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Repeat Password',
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: true,
                              onChanged: (bool? value) {},
                            ),
                            Text(
                                "I'am Agree with the privacy of the application"),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                              },
                              child: Text('Already Have an Account'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DashboardScreen()));
                              },
                              child: Text('Register'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
