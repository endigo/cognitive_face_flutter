import 'package:cognitive_face_flutter/src/common/request_method.dart';
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
  Future<List<Face>> detect(
    String url, {
    bool returnFaceId = true,
    bool returnFaceLandmarks = false,
    List<FaceAttributeType> returnFaceAttributes,
  }) async {
    Map<String, dynamic> params = {
      "returnFaceId": returnFaceId,
      "returnFaceLandmarks": returnFaceLandmarks,
    };

    if (returnFaceAttributes != null && returnFaceAttributes.isNotEmpty) {
      params['returnFaceAttributes'] = returnFaceAttributes
          .map((FaceAttributeType type) => type.toString().split('.')[1])
          .join(',');
    }

    String path = '$serviceHost/$DETECT_QUERY';
    String uri = WebServiceRequest.getUrl(path, params);

    List<dynamic> json = await mRestCall.request(
      uri,
      method: RequestMethod.POST,
      data: {'url': url},
    );

    List<Face> faces = json
        .map((data) => Face.fromJson((data as Map<String, dynamic>)))
        .toList();

    return faces;
  }
}
