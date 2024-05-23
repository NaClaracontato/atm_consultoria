import 'package:atm_consutoria/tela_cliente.dart';
import 'package:atm_consutoria/tela_contato.dart';
import 'package:atm_consutoria/tela_empresa.dart';
import 'package:atm_consutoria/tela_servico.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaEmpresa(),
      ),
    );
  }

  void _abrirServico() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaServico(),
      ),
    );
  }

  void _abrirCliente() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaCliente(),
      ),
    );
  }

  void _abrirContato() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaContato(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ATM Consultoria',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 42),
              child: Image.asset('assets/images/logo.png'),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset('assets/images/menu_empresa.png'),
                  ),
                ),
                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset('assets/images/menu_servico.png'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset('assets/images/menu_cliente.png'),
                  ),
                ),
                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset('assets/images/menu_contato.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
