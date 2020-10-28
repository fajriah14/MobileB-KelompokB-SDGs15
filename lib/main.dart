import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  
  final tabs = [
    Center(child: Text('Tempat')),
    Center(child: Text('Home')),
    Center(child: Text('Akun')),
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //judul
        title: 'Anu',
        debugShowCheckedModeBanner: false, //menghilangkan tulisan debug

        //aku suka pink
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),

        // HOME
        home: Scaffold(
          //appBar
          appBar: AppBar(
            title: Text('SpidyLib'),
          ),

          //Body
          body: Center(
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment
            //       .center, //ngatur vertikal (disini diaturnya ke tengah)
            //   children: <Widget>[
            //     //nampung widget
            //     Text(
            //       //widget text
            //       'Chulsum Alimah Nahdah - 182410103084',
            //     ),
            //     Text(//widget text
            //         'Mohammad Abuemas Rizq Wijaya - 182410103087'),
            //     Text(//widget text
            //         'Fajriah Ikawati Valentina 182410103013'),
            //     Text(//widget text
            //         'Yunand Nidzar Rifazmi Alihakim 182410103061'),
            //   ],
            // ),
          ),

          //NavBar bawah
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            iconSize: 30,
            items: [
              
              //Founded
              BottomNavigationBarItem(
                icon: Icon(Icons.list), 
                title: Text('Tempat')
                // backgroundColor: Colors.blue
              ),
              
              //
              BottomNavigationBarItem(
                icon: Icon(Icons.home), 
                title: Text('Home')
                // backgroundColor: Colors.blue
              ),

              //home
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), 
                title: Text('Akun')
                // backgroundColor: Colors.blue
              ),
            ],

            //pas disentuh
            onTap: (index) {
              setState((){
                _currentIndex = index;
              });
            },
          ),
        )
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Kelompok B - SDGs 5'),    //mereturn nama di widget untuk bikin judul dil appbar
//       ),
//       body: Center(   //isi (body)
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Chulsum Alimah Nahdah - 182410103084',
//             ),
//             Text(
//               'Mohammad Abuemas Rizq Wijaya - 182410103087'
//             ),
//             Text(
//               'Fajriah Ikawati Valentina 182410103013'
//             ),Text(
//               'Yunand Nidzar Rifazmi Alihakim 182410103061'
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
