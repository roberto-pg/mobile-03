import 'package:flutter/material.dart';
import 'package:job_timer/app/modules/home/widgtes/header_projects_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: SafeArea(
          child: ListTile(
            title: Text('Sair'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text('Projetos'),
              expandedHeight: 100,
              toolbarHeight: 100,
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15)),
              ),
            ),
            SliverPersistentHeader(
              delegate: HeaderProjectsMenu(),
              pinned: true,
            )
          ],
        ),
      ),
    );
  }
}
// ElevatedButton(
          //     onPressed: () {},
              // onPressed: () async {
              //   final db = Modular.get<Database>();

              //   final connection = await db.openConnection();
              //   await connection.writeTxn((isar) => connection.clear());
              //   connection.writeTxn((isar) {
              //     var project = Project();
              //     project.name = 'Projeto Teste';
              //     project.status = ProjectStatus.em_andamento;

              //     return connection.projects.put(project);
              //   });
              // },
              // child: const Text('Cadastrar'))