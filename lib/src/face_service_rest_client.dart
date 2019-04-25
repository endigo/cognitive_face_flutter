import 'dart:io';

import 'package:cognitive_face_flutter/src/common/request_method.dart';
import 'package:cognitive_face_flutter/src/contract/contract.dart';
import 'package:cognitive_face_flutter/src/contract/face.dart';
import 'package:cognitive_face_flutter/src/face_service_client.dart';
import 'package:cognitive_face_flutter/src/rest/web_service_request.dart';

const String DEFAULT_API_ROOT =
    "https://westus.api.cognitive.microsoft.com/face/v1.0";
const String DETECT_QUERY = "detect";
const String VERIFY_QUERY = "verify";
const String TRAIN_QUERY = "train";
const String TRAINING_QUERY = "training";
const String IDENTIFY_QUERY = "identify";
const String PERSON_GROUPS_QUERY = "persongroups";
const String LARGE_PERSON_GROUPS_QUERY = "largepersongroups";
const String PERSONS_QUERY = "persons";
const String FACE_LISTS_QUERY = "facelists";
const String LARGE_FACE_LISTS_QUERY = "largefacelists";
const String PERSISTED_FACES_QUERY = "persistedfaces";
const String GROUP_QUERY = "group";
const String FIND_SIMILARS_QUERY = "findsimilars";
const String STREAM_DATA = "application/octet-stream";
const String DATA = "data";

/// A FaceServiceClient.
class FaceServiceClient {
  WebServiceRequest mRestCall;
  String serviceHost;

  FaceServiceClient(String subscriptionKey,
      {this.serviceHost = DEFAULT_API_ROOT}) {
    mRestCall = WebServiceRequest(subscriptionKey);
  }

  ///
  /// Face
  ///

  ///
  /// Detects faces in an URL image.
  /// @param url url.
  /// @param returnFaceId Return faceIds of the detected faces or not. The default value is true.
  /// @param returnFaceLandmarks Return face landmarks of the detected faces or not. The default value is false.
  /// @param returnFaceAttributes Analyze and return the one or more specified face attributes in the comma-separated string like "returnFaceAttributes=age,gender". Supported face attributes include age, gender, headPose, smile, facialHair, glasses, emotion, hair, makeup, occlusion, accessories, blur, exposure and noise. Face attribute analysis has additional computational and time cost.
  /// @param returnRecognitionModel Return 'recognitionModel' or not. The default value is false.
  /// @param recognitionModel The 'recognitionModel' associated with the detected faceIds. Supported 'recognitionModel' values include "recognition_01" or "recognition_02". The default value is "recognition_01". "recognition_02" is recommended since its overall accuracy is improved compared with "recognition_01".
  /// @return detected faces.
  ///
  Future<List<Face>> detect({
    String url,
    File image,
    bool returnFaceId = true,
    bool returnFaceLandmarks = false,
    bool returnRecognitionModel = false,
    String recognitionModel = "recognition_01",
    List<FaceAttributeType> returnFaceAttributes,
  }) async {
    assert(url != null || image != null);

    // if (url == null && image == null) {
    //   throw Exception("url or image required");
    // }

    Map<String, dynamic> params = {
      "returnFaceId": returnFaceId,
      "returnFaceLandmarks": returnFaceLandmarks,
      "recognitionModel": recognitionModel,
      "returnRecognitionModel": returnRecognitionModel,
    };

    if (returnFaceAttributes != null && returnFaceAttributes.isNotEmpty) {
      params['returnFaceAttributes'] = returnFaceAttributes
          .map((FaceAttributeType type) => type.toString().split('.')[1])
          .join(',');
    }

    String path = '$serviceHost/$DETECT_QUERY';
    String uri = WebServiceRequest.getUrl(path, params);

    List<dynamic> json;

    if (url != null && image == null) {
      json = await mRestCall.request(
        uri,
        method: RequestMethod.POST,
        data: {'url': url},
      );
    } else if (image != null) {
      json = await mRestCall.request(
        uri,
        method: RequestMethod.POST,
        contentType: STREAM_DATA,
        data: {
          'data': image.readAsBytesSync(),
        },
      );
    }

    List<Face> faces = json
        .map((data) => Face.fromJson((data as Map<String, dynamic>)))
        .toList();

    return faces;
  }

  ///
  /// Verifies whether the specified two faces belong to the same person.
  /// @param faceId1 The face id 1.
  /// @param faceId2 The face id 2.
  /// @param personGroupId The person group Id
  /// @param personId The person Id
  /// @return The verification result.
  /// 
  Future<VerifyResult> verify(
    String faceId1, {
    String faceId2,
    String personGroupId,
    String personId,
  }) async {
    assert(faceId2 != null || (personGroupId != null && personId != null));

    Map<String, Object> params = {
      "faceId1": faceId1,
    };

    if (faceId2 != null && faceId2.isNotEmpty) {
      params['faceId2'] = faceId2;
    } else {
      params["personGroupId"] = personGroupId;
      params["personId"] = personId;
    }
 
    String uri = '$serviceHost/$VERIFY_QUERY';

    var json = await mRestCall.request(
      uri,
      method: RequestMethod.POST,
      data: params,
    );
    return VerifyResult.fromJson((json as Map<String, dynamic>));
  }
}
