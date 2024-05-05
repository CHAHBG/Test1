import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../core/app_export.dart';

class TicketsScreen extends ConsumerStatefulWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  TicketsScreenState createState() => TicketsScreenState();
}

class TicketsScreenState extends ConsumerState<TicketsScreen> {
  String? _selectedFrom;
  String? _selectedTo;
  DateTime? _selectedDate;
  List<Ticket>? _tickets;

  List<String> _stations = [
    'Dakar',
    'Colobane',
    'Hann',
    'Dalifort',
    'Beaux Maraichers',
    'Thiaroye',
    'Pikine',
    'Yembeul',
    'Keur Mbaye Fall',
    'PNR',
    'Rufisque',
    'Bargny',
    'Diamniadio',
    'AIBD'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 17,
                              width: 10,
                              margin: EdgeInsets.symmetric(vertical: 6),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9),
                              child: Text(
                                "lbl_tickets".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 43),
                      Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Row(
                          children: [
                            Text(
                              "lbl_from2".tr,
                              style: TextStyle(fontSize: 24, color: Colors.black),
                            ),
                            SizedBox(width: 100),
                            Text(
                              "lbl_to2".tr,
                              style: TextStyle(fontSize: 24, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      _buildSelectableList(
                        context,
                        labelText: "From",
                        items: _stations,
                        onSelected: (value) {
                          setState(() {
                            _selectedFrom = value;
                          });
                        },
                      ),
                      SizedBox(height: 17),
                      _buildSelectableList(
                        context,
                        labelText: "To",
                        items: _stations,
                        onSelected: (value) {
                          setState(() {
                            _selectedTo = value;
                          });
                        },
                      ),
                      SizedBox(height: 17),
                      Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Text(
                          "lbl_date".tr,
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 12),
                      _buildDatePicker(context),
                      SizedBox(height: 150),
                      _buildTickets(context), // Added this line to display tickets
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectableList(BuildContext context, {
    required String labelText,
    required List<String> items,
    required Function(String) onSelected,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          filled: true,
          fillColor: appTheme.whiteA700,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        value: labelText == "From" ? _selectedFrom : _selectedTo,
        hint: Text(labelText),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            onSelected(newValue);
          }
        },
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: TextButton(
        onPressed: () {
          showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2100),
          ).then((value) {
            if (value != null) {
              setState(() {
                _selectedDate = value;
              });
            }
          });
        },
        child: Text(
          _selectedDate != null
              ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
              : "Select Date",
          style: TextStyle(fontSize: 24.0, color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildTickets(BuildContext context) {
    if (_tickets == null) {
      return Center(child: CircularProgressIndicator());
    } else if (_tickets!.isEmpty) {
      return Center(child: Text('No tickets available'));
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: _tickets!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_tickets![index].commercialName), // Use commercialName instead of productName
            subtitle: Text('Price: ${_tickets![index].price} FCFA'),
          );
        },
      );
    }
  }


  void onTapImgArrowLeft(BuildContext context) {
    if (_selectedFrom != null && _selectedTo != null) {
      final url = 'https://api-hackathon.seter.sn/api/gamme-tarifaire/qr-code';
      final body = {
        'from': _selectedFrom!,
        'to': _selectedTo!,
      };

      http.post(Uri.parse(url), body: body).then((response) {
        if (response.statusCode == 200) {
          final jsonResponse = jsonDecode(response.body);
          List<Ticket> tickets = [];
          for (var ticketData in jsonResponse['data']) {
            tickets.add(Ticket.fromJson(ticketData));
          }
          setState(() {
            _tickets = tickets;
          });
        } else {
          print('Failed to load tickets data: ${response.statusCode}');
        }
      }).catchError((error) {
        print('Error loading tickets data: $error');
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please select both "From" and "To" stations.'),
      ));
    }
  }
}

class Ticket {
  final String productId;
  final String commercialName;
  final String validityLimit;
  final int numberOfPeriods;
  final String periodType;
  final String antiPassbackTime;
  final String multiValidationTime;
  final String singleCourseValidity;
  final int totalTrips;
  final String switchDate;
  final String supports;
  final String profiles;
  final int price;

  Ticket({
    required this.productId,
    required this.commercialName,
    required this.validityLimit,
    required this.numberOfPeriods,
    required this.periodType,
    required this.antiPassbackTime,
    required this.multiValidationTime,
    required this.singleCourseValidity,
    required this.totalTrips,
    required this.switchDate,
    required this.supports,
    required this.profiles,
    required this.price,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return Ticket(
      productId: json['code_produit'],
      commercialName: json['nom_commercial'],
      validityLimit: json['limite_validite'],
      numberOfPeriods: json['nombre_periodes'],
      periodType: json['type_periode'],
      antiPassbackTime: json['temps_anti_passback'],
      multiValidationTime: json['temps_multi_validation'],
      singleCourseValidity: json['validite_course_simple'],
      totalTrips: json['voyages_totaux'],
      switchDate: json['date_basculement'],
      supports: json['supports'],
      profiles: json['profils'],
      price: json['prix'],
    );
  }
}
