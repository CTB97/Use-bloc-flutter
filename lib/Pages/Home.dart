import 'package:bloc_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Counter bloc page"),
      ),
      body: BlocBuilder<CounterBloc,int>(
        builder:(context,state){
          return Center(
            child:  Text('Counter value => $state'),
          );
        } ),
      floatingActionButton: Row(
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
          FloatingActionButton(
        onPressed: (){
          context.read<CounterBloc>().add(Increment());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      FloatingActionButton(
        onPressed: (){
          context.read<CounterBloc>().add(Decrement());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.minimize),
      ),
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}