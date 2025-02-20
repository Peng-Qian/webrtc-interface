import 'media_recorder.dart';
import 'media_stream.dart';
import 'navigator.dart';
import 'rtc_peerconnection.dart';
import 'rtc_rtp_capabilities.dart';
import 'rtc_video_renderer.dart';

abstract class RTCFactory {
  Future<RTCPeerConnection> createPeerConnection(
      Map<String, dynamic> configuration,
      [Map<String, dynamic> constraints]);

  Future<MediaStream> createLocalMediaStream(String label);

  Future<RTCRtpCapabilities> getRtpSenderCapabilities(String kind);

  Future<RTCRtpCapabilities> getRtpReceiverCapabilities(String kind);

  MediaRecorder mediaRecorder();

  VideoRenderer videoRenderer();

  Navigator get navigator;
}
