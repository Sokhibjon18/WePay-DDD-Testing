import 'package:dartz/dartz.dart' as z;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/crud/crud_apartment_bloc.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/presentation/home/widgets/bottom_sheet.dart';
import 'package:we_pay/presentation/home/widgets/task_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Houses'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.read<CRUDApartmentBloc>().add(const CRUDApartmentEvent.initial());
              bottomsheet(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder<z.Either<ApartmentFailure, List<Apartment>>>(
        stream: context.read<CRUDApartmentBloc>().apartmentStream.stream,
        builder: (context, snapshot) {
          return snapshot.data!.fold(
            (l) => Container(),
            (r) => ListView.builder(
              itemCount: r.length,
              itemBuilder: (context, index) {
                return TaskContainer(apartment: r[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
