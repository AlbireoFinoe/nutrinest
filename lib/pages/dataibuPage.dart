import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dataibupage extends StatefulWidget {
  const Dataibupage({super.key});

  @override
  State<Dataibupage> createState() => _DataibupageState();
}

class _DataibupageState extends State<Dataibupage> {
  // Define the controller for the DatePicker field
  TextEditingController _dateController = TextEditingController();
  String? _selectedStatus; // Variable to hold the selected dropdown value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text('Data Ibu'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 24.0, vertical: 10.0), // Padding for the entire body
          child: Column(
            children: [
              // No Telepon
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'No. Telepon',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                  height: 8.0), // Space between the label and the text field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan No. Telepon',
                  hintStyle:
                      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF83758), // Warna border saat fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0, // Warna border saat tidak fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0, // Mengatur ukuran font teks input
                ),
                keyboardType: TextInputType.number, // Memungkinkan hanya angka
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly, // Membatasi input hanya angka
                ],
              ),
              SizedBox(height: 16.0), // Space between text field and button

              // Tanggal Lahir
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Tanggal Lahir',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                  height: 8.0), // Space between the label and the text field
              TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  hintText: 'Tanggal Lahir (DD-MM-YYYY)',
                  hintStyle:
                      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(
                          255, 99, 61, 67), // Warna border saat fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0, // Warna border saat tidak fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight:
                      FontWeight.w400, // Mengatur ukuran font teks input
                ),
                readOnly: true, // Menghindari keyboard muncul
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (pickedDate != null) {
                    _dateController.text =
                        "${pickedDate.day.toString().padLeft(2, '0')}/${pickedDate.month.toString().padLeft(2, '0')}/${pickedDate.year}";
                  }
                },
              ),
              SizedBox(height: 16.0), // Space between text field and button

              // Alamat Lengkap
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Alamat Lengkap',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                  height: 8.0), // Space between the label and the text field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Alamat',
                  hintStyle:
                      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF83758), // Warna border saat fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0, // Warna border saat tidak fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight:
                      FontWeight.w400, // Mengatur ukuran font teks input
                ),
              ),
              SizedBox(height: 16.0), // Space between text field and button

              // Status Ibu - Dropdown
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Status Ibu',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(height: 8.0), // Space between the label and the dropdown
              DropdownButtonFormField<String>(
                value: _selectedStatus,
                decoration: InputDecoration(
                  hintText: 'Pilih Status',
                  hintStyle:
                      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF83758), // Warna border saat fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0, // Warna border saat tidak fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight:
                      FontWeight.w400, // Mengatur ukuran font teks input
                ),
                items: <String>[
                  'Hamil',
                  'Sudah Punya Anak',
                  'Merencanakan Kehamilan'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedStatus = newValue;
                  });
                },

                // Customizing the dropdown appearance
                dropdownColor: Colors.white, // Background color of the dropdown
              ),
              SizedBox(height: 16.0), // Space between dropdown and other fields
              // Alamat Lengkap
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Jumlah Anak',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                  height: 8.0), // Space between the label and the text field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Number',
                  hintStyle:
                      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF83758), // Warna border saat fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0, // Warna border saat tidak fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight:
                      FontWeight.w400, // Mengatur ukuran font teks input
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Pekerjaan Ibu',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                  height: 8.0), // Space between the label and the text field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Pekerjaan Ibu',
                  hintStyle:
                      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF83758), // Warna border saat fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0, // Warna border saat tidak fokus
                    ),
                    borderRadius:
                        BorderRadius.circular(12.0), // Radius sudut border
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight:
                      FontWeight.w400, // Mengatur ukuran font teks input
                ),
              ),
              SizedBox(height: 24.0), // Space between text field and button
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(275, 40),
                    backgroundColor: Color(0xFFF83758),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: const Text(
                    'Lanjutkan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
