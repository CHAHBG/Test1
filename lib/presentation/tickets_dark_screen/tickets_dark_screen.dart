import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class TicketsDarkScreen extends ConsumerStatefulWidget {
  const TicketsDarkScreen({Key? key}) : super(key: key);

  @override
  TicketsDarkScreenState createState() => TicketsDarkScreenState();
}

class TicketsDarkScreenState extends ConsumerState<TicketsDarkScreen> {
  String? _selectedFrom;
  String? _selectedTo;
  DateTime? _selectedDate;
  bool _loading = false;
  List<dynamic>? _ticketInfo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 17.v,
                              width: 10.h,
                              margin: EdgeInsets.symmetric(vertical: 6.v),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text(
                                "lbl_tickets".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 43.v),
                      Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: Row(
                          children: [
                            Text(
                              "Départ".tr,
                              style: CustomTextStyles.titleLargeWhiteA70001_1,
                            ),
                            SizedBox(width: 100.h),
                            Text(
                              "Arrivé".tr,
                              style: CustomTextStyles.titleLargeWhiteA70001_1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildSelectableList(
                        context,
                        labelText: "Départ",
                        items: [
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
                        ],
                        onSelected: (value) {
                          setState(() {
                            _selectedFrom = value;
                          });
                        },
                      ),
                      SizedBox(height: 17.v),
                      _buildSelectableList(
                        context,
                        labelText: "Arrivée",
                        items: [
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
                        ],
                        onSelected: (value) {
                          setState(() {
                            _selectedTo = value;
                          });
                        },
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: Text(
                          "lbl_date".tr,
                          style: CustomTextStyles.titleLargeWhiteA70001_1,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildDatePicker(context),
                      SizedBox(height: 40.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _makeApiRequest(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.brown[463], // Match the brown color of the Prix button
                              textStyle: TextStyle(fontSize: 20.0), // Increase the font size
                              padding: EdgeInsets.symmetric(vertical: 35.v, horizontal: 20.h), // Adjust padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0), // Increase the border radius
                              ),
                            ),
                            child: Text("Chercher Ticket", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(height: 50.v),
                      _buildTicketInfo(context),
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
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          filled: true,
          fillColor: appTheme.whiteA700,
          contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15
              .v),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        value: labelText == "Départ" ? _selectedFrom : _selectedTo,
        hint: Text(labelText),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        style: TextStyle(color: Colors.black),
        // Change text color to black
        dropdownColor: Colors.grey[200],
        // Change dropdown menu background color to gray
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
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
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
                  ? "${_selectedDate!.day}/${_selectedDate!
                  .month}/${_selectedDate!.year}"
                  : "Selectionner Date",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTicketInfo(BuildContext context) {
    if (_loading) {
      return Center(child: CircularProgressIndicator());
    } else if (_ticketInfo != null && _ticketInfo!.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var ticket in _ticketInfo!)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "${ticket['Nom Commercial']}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.h),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button click
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 35.v, horizontal: 8.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          primary: Colors.brown[463],
                        ),
                        child: Column(
                          children: [
                            Text(
                              "${ticket['Prix'] } FCFA",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.h),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  void _makeApiRequest(BuildContext context) {
    if (_selectedFrom != null && _selectedTo != null) {
      setState(() {
        _loading = true;
      });

      const url = 'https://api-hackathon.seter.sn/api/gamme-tarifaire/qr-code';
      const token = 'p19bkCMOjd4vWyDKI64joB0AyGbosKRZLHrklpdVctfu9WvIvLAVfwi0VRVv6yvf';

      http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'token': token,
        },
      ).then((response) {
        if (response.statusCode == 200) {
          final List<dynamic> responseData = json.decode(response.body);
          List<dynamic> matchingTickets = [];

          String? from = _selectedFrom?.toLowerCase();
          String? to = _selectedTo?.toLowerCase();

          int? codeProduit;

          if ((from == 'dakar' && to == 'thiaroye') || (from == 'thiaroye' && to == 'dakar') ||
              (from == 'thiaroye' && to == 'yeumbeul') || (from == 'yeumbeul' && to == 'thiaroye') ||
              (from == 'yeumbeul' && to == 'bargny') || (from == 'bargny' && to == 'yeumbeul')) {
            // 1 zone
            codeProduit = 53;
          } else if ((from == 'dakar' && to == 'bargny') || (from == 'bargny' && to == 'dakar') ||
              (from == 'yeumbeul' && to == 'diamniadio') || (from == 'diamniadio' && to == 'yeumbeul')) {
            // 2 zones
            codeProduit = 56;
          } else if ((from == 'dakar' && to == 'diamniadio') || (from == 'diamniadio' && to == 'dakar')) {
            // 3 zones
            codeProduit = 59;
          } else {
            // Display all other Code Produit values
            codeProduit = null; // Set to null to indicate displaying all other values
          }

          for (var data in responseData) {
            if (codeProduit != null && data['Code Produit'] == codeProduit) {
              matchingTickets.add(data);
            }
          }

          setState(() {
            _ticketInfo = matchingTickets.isNotEmpty ? matchingTickets : null;
            _loading = false;
          });

          if (_ticketInfo != null && _ticketInfo!.isNotEmpty) {
            print('Matching Ticket Information:');
            for (var ticket in _ticketInfo!) {
              print(ticket);
            }
          } else {
            print('No matching ticket information found');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('No matching ticket information found')),
            );
          }
        } else {
          // Handle error
          setState(() {
            _loading = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to load ticket information: ${response.body}')),
          );
        }
      }).catchError((error) {
        // Handle error
        setState(() {
          _loading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load ticket information: $error')),
        );
      });
    }
  }


  void onTapImgArrowLeft(BuildContext context) {
    Navigator.of(context).pop();
  }
}
