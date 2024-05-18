// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/pages/home_page.dart';

class ContactWidget extends StatelessWidget {
  ContactWidget({super.key});

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white12,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 224,
                height: 224,
                child: Image(
                  image: AssetImage('assets/images/contact-us.png'),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'email@email.com',
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                validator: (email) {
                  if (email == null || email.isEmpty) {
                    return 'Digite seu e-mail';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: _senhaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Digite seu nome',
                  labelText: 'Nome',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                validator: (senha) {
                  if (senha == null || senha.isEmpty) {
                    return 'Digite sua senha';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.3, 1],
                    colors: const [
                      Color.fromARGB(100, 86, 171, 47),
                      Color.fromARGB(100, 168, 224, 99),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: SizedBox.expand(
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text(
                          ' Solicitar Contato',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 28,
                          width: 28,
                          child: Icon(Icons.done),
                        ),
                      ],
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ),
                    },
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
