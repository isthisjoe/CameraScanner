import AVFoundation
import Foundation
import UIKit

public struct CaptureSessionOptions: Equatable {
  public static func == (lhs: CaptureSessionOptions, rhs: CaptureSessionOptions) -> Bool {
    lhs.photoOutputFormat == rhs.photoOutputFormat
    && lhs.previewLayerVideoGravity == rhs.previewLayerVideoGravity
    && lhs.tapToFocus == rhs.tapToFocus
    && lhs.videoDeviceZoomFactor == rhs.videoDeviceZoomFactor
  }
  
  let backgroundColor: UIColor
  let faceDrivenAutoFocus: Bool
  let photoOutputFormat: PhotoOutputFormat?
  let previewLayerVideoGravity: AVLayerVideoGravity
  let tapToFocus: Bool
  let videoDeviceZoomFactor: CGFloat?
  
  public init(
    backgroundColor: UIColor = .black,
    faceDrivenAutoFocus: Bool = true,
    photoOutputFormat: PhotoOutputFormat? = nil,
    previewLayerVideoGravity: AVLayerVideoGravity = .resizeAspectFill,
    tapToFocus: Bool = true,
    videoDeviceZoomFactor: CGFloat? = nil
  ) {
    self.backgroundColor = backgroundColor
    self.faceDrivenAutoFocus = faceDrivenAutoFocus
    self.photoOutputFormat = photoOutputFormat
    self.previewLayerVideoGravity = previewLayerVideoGravity
    self.tapToFocus = tapToFocus
    self.videoDeviceZoomFactor = videoDeviceZoomFactor
  }
}
