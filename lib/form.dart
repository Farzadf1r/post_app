import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _originCountry;
  String _originCity;
  String _destinationCountry;
  String _destinationCity;
  String _date;
  String _time;
  String _maxCapacity;
  String _ratePerKilo;
  String _currency;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildOriginCountry() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Country of Origin'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Country of Origin is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _originCountry = value;
      },
    );
  }

  Widget _buildOriginCity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'City of Origin'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'City of Origin is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _originCity = value;
      },
    );
  }

  Widget _buildDestinationCountry() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Country of Origin'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Destination Country is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _destinationCountry = value;
      },
    );
  }

  Widget _buildDestinationCity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'City of Destination'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'City of Destination is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _destinationCity = value;
      },
    );
  }

  Widget _buildDate() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Date of Departure'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Date of Departure is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _date = value;
      },
    );
  }

  Widget _buildTime() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Time of Departure'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Time of Departure is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _time = value;
      },
    );
  }


  Widget _buildMaxCapacity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Max Capacity'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Max Capacity must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _maxCapacity = value;
      },
    );
  }


  Widget _buildRatePerKilo() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Ratio per Kilo'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Ratio per Kilo must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _ratePerKilo = value;
      },
    );
  }


  Widget _buildCurrency() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Currency'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Currency must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _currency = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child:ListView(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildOriginCountry(),
              _buildOriginCity(),
              _buildDestinationCountry(),
              _buildDestinationCity(),
              _buildDate(),
              _buildTime(),
              _buildMaxCapacity(),
              _buildRatePerKilo(),
              _buildCurrency(),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_originCountry);
                    print(_originCity);
                    print(_date);
                    print(_destinationCity);
                    print(_destinationCountry);
                    print(_time);
                    print(_maxCapacity);
                    print(_ratePerKilo);
                    print(_currency);

                    //Send to API
                  },
                ),
              )
            ],

      ),
        ),
      ),
    );
  }
}



/*String _originCountry;---
  String _originCity;--
  String _destinationCountry;--
  String _destinationCity;--
  String _date;--
  String _time;--
  String _maxCapacity;--
  String _ratePerKilo;--
  String _currency;--
  */