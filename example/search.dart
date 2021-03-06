import 'package:dialogue_wise/dialogue_wise.dart';
import 'package:dialogue_wise/search_contents_request.dart';
import 'dart:convert';
void main() async {
//Prepare the payload
  var request = new SearchContentsRequest();
  request.slug = 'my-fab-food-store';
  request.apiKey = '[API Key]';
  request.emailHash = '[Email Hash]';
  request.keyword = 'ken';
  request.isPilot=true;
  request.imageTransformation='SDFSDFS';
  request.variables = new Map<String, dynamic>();
  request.variables ={
    "@testVar":"test var val",
    "@myExpVar":"my exp val"
  };
// Call the Dialogue Wise API
  var dialogueWiseService = new DialogueWiseService();
  var res = await dialogueWiseService.searchContents(request);

//Print the Output to Console
  print(jsonEncode(res));
}
