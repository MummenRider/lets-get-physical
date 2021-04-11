import 'package:app/screens/profile/user_profile_viewmodel.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class UserProfileView extends StatelessWidget {
  UserProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserProfileViewModel>.reactive(
      onModelReady: (model) => model.loadUserInfo(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: model.user != null
            ? Center(
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              child: ExtendedImage.network(
                            model.user != null
                                ? model.user.displayProfileURL
                                : '',
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.grey[800], width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            loadStateChanged: (ExtendedImageState state) {
                              if (state.extendedImageLoadState ==
                                  LoadState.failed) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  width: 30,
                                  height: 30,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey[800],
                                  ),
                                );
                              } else if (state.extendedImageLoadState ==
                                  LoadState.loading) {
                                return Image.asset(
                                  'assets/loading.gif',
                                  scale: .5,
                                  fit: BoxFit.contain,
                                );
                              } else {
                                return null;
                              }
                            },
                          )),
                          SizedBox(width: 30.0),
                          Text(
                            '${model.user.firstName} ${model.user.lastName}',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          SizedBox(width: 100.0),
                        ],
                      ),
                      Divider(
                        height: 40,
                        thickness: 2,
                        color: Colors.black12,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.call,
                              size: 30.0,
                              color: Colors.green[400],
                            ),
                          ),
                          SizedBox(width: 30.0),
                          Text(
                            '${model.user.phoneNumber}',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      Divider(
                        height: 40,
                        thickness: 2,
                        color: Colors.black12,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.markunread,
                              size: 30.0,
                              color: Colors.green[400],
                            ),
                          ),
                          SizedBox(width: 30.0),
                          Text(
                            '${model.user.email} ',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      Divider(
                        height: 40,
                        thickness: 2,
                        color: Colors.black12,
                      ),
                      ElevatedButton(
                        onPressed: () => model.editUserAccount(),
                        child: Text('Edit'),
                      )
                    ],
                  ),
                ),
              )
            : CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(
                  Theme.of(context).primaryColor,
                ),
              ),
      ),
      viewModelBuilder: () => UserProfileViewModel(),
    );
  }
}
