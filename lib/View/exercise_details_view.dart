import 'package:fitzone/Controller/exercise_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciseDetailsView extends StatefulWidget {
  const ExerciseDetailsView({super.key});

  @override
  State<ExerciseDetailsView> createState() => _ExerciseDetailsViewState();
}

class _ExerciseDetailsViewState extends State<ExerciseDetailsView> {
  Map data = Get.arguments;
  ExerciseDetailsController exerciseDetailsController =
      Get.put(ExerciseDetailsController());
  @override
  void initState() {
    exerciseDetailsController.getExerciseDetails(data['id']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(data['name']),
        centerTitle: true,
      ),
      body: GetBuilder<ExerciseDetailsController>(
          builder: (exerciseDetailsController) {
        YoutubePlayerController videocontroller = YoutubePlayerController(
          initialVideoId:
              exerciseDetailsController.exercisedetails?[0].url ?? '',
          flags: YoutubePlayerFlags(
            autoPlay: false,
            hideControls: false,
          ),
        );
        return exerciseDetailsController.exercisedetails == null
            ? Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      exerciseDetailsController.exercisedetails![0].image ?? '',
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                exerciseDetailsController
                                        .exercisedetails![0].name ??
                                    '',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                data['category'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            exerciseDetailsController
                                    .exercisedetails?[0].timimg ??
                                '',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Image.asset(
                              "assets/Featured Exercise 11/Group 1000005411@4x.png"),
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            exerciseDetailsController
                                    .exercisedetails![0].description ??
                                '',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Video tutorial',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: YoutubePlayer(
                                  controller: videocontroller,
                                  showVideoProgressIndicator: true,
                                  onReady: () {}),
                            ),
                          ),
                          Text(
                            'Steps',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            exerciseDetailsController
                                    .exercisedetails![0].steps ??
                                '',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
      }),
    );
  }
}
