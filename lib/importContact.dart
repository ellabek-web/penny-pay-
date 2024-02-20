import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'config/route.dart';
import 'config/theme.dart';

class ImportContact extends StatefulWidget {
  const ImportContact({super.key});

  @override
  State<ImportContact> createState() => _ImportContactState();
}

class _ImportContactState extends State<ImportContact> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

 


    return Scaffold(
     body: Container(
      
      padding:EdgeInsets.fromLTRB(mediaQueryData.size.width*0.06,  mediaQueryData.size.height*0.09, mediaQueryData.size.width*0.06, 0),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: Text("Import contact",
              style:CustomTheme.headline,
              ),
            ),

            SizedBox(
              height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
              ),

            Container(
              alignment: Alignment.topLeft,
              child: Text("A total of  people using penny pay has \nfound ",
              style:TextStyle(color: Colors.black),
              ),
            ),

            SizedBox(
              height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
              ),




           Container(
                height: 400, // Set a specific height for the container
                child: FutureBuilder(
                  future: getContacts(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          Expanded(
                            child: ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                Contact contact = snapshot.data[index];
                                return ListTile(
                                  leading: CircleAvatar(
                                    radius: 20,
                                    child: Icon(Icons.person),
                                  ),
                                  title: Text(contact.displayName),
                                  subtitle: Text(contact.phones[0].number),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
               SizedBox(
              height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
              ),

        Container(
                    alignment: Alignment.center,
                    child: TextButton(
                    style:  CustomTheme.getButtonStyle(mediaQueryData), // Set the size here
                         
                    onPressed: () {
                       Navigator.pushNamed(context, '/SetPassCode');
                      
                    },
                             
                      child: Text('Import',
                     style: TextStyle(
                      fontWeight:FontWeight.bold,
                     )
                           ),
                          ),
                  ),
                   SizedBox(
              height: mediaQueryData.size.height*0.01, // Set the height to 50 pixels
              ),
          
           GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/SetPassCode');
                  
                },
                child: Text(
                  'Skip',
                  
                ),
              ),



        ],
      ),


     )
    );
  }

 Future<List<Contact>> getContacts() async {
    bool isGranted = await Permission.contacts.status.isGranted;
    if (!isGranted) {
      isGranted = await Permission.contacts.request().isGranted;
    }
    if (isGranted) {
      return await FastContacts.getAllContacts();
    }
    
    return [];
   
  }




}