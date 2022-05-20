import 'package:crosscheckpoint02/src/app/components/giovanna_card.dart';
import 'package:crosscheckpoint02/src/app/components/giovanna_form.dart';
import 'package:crosscheckpoint02/src/app/components/giovanna_page.dart';
import 'package:crosscheckpoint02/src/app/model/pet_name_type.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController petNameController = TextEditingController();
  TextEditingController petTypeController = TextEditingController();
  FocusNode petNameFocus = FocusNode();
  FocusNode petTypeFocus = FocusNode();

  List<PetNameAndPetTypeModel> petNameAndpetTypeList = [];

  addNewPetNameAndPetType({required String petName, required String petType}) {
    setState(() {
      petNameAndpetTypeList.insert(
        0,
        PetNameAndPetTypeModel(petName: petName, petType: petType),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GiovannaPage(
      title: 'PetShop',
      body: SingleChildScrollView(
        child: Column(
          children: [
             GiovannaForm(
                label: 'Digite o nome do seu pet: ',
                focusNode: petNameFocus,
                userInputController: petNameController,
                onEditingComplete: () {
                  petNameFocus.nextFocus();
                },
              ),
              const SizedBox(
              height: 10,
            ),
            GiovannaForm(
                label: 'Digite o tipo do pet:',
                focusNode: petTypeFocus,
                userInputController: petTypeController,
              ),
            Container(
              width: double.infinity,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                shrinkWrap: true,
                itemCount: petNameAndpetTypeList.length,
                itemBuilder: (context, index) {
                  var listItem = petNameAndpetTypeList[index];
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15, top: 15),
                        child: GiovannaCard(
                          petNameText: 'Nome do seu pet: ${listItem.petName!}',
                          petTypeText: 'Tipo do seu pet: ${listItem.petType!}',
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      fab: FloatingActionButton(
          child: Icon(Icons.pets_outlined),
          backgroundColor: Colors.white,
          onPressed: () {
            addNewPetNameAndPetType(
                petName: petNameController.text, petType: petTypeController.text);
          }),
    );
  }
}