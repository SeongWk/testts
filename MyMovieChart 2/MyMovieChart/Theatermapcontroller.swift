//
//  Theatermapcontroller.swift
//  MyMovieChart
//
//  Created by seong_wook_lim on 2021/12/27.
//  Copyright © 2021 SQLPRO. All rights reserved.
//

import UIKit
import MapKit

class Theatermapcontroller: UIViewController
{
    var param:NSDictionary!
    @IBOutlet var map: MKMapView!
    override func viewDidLoad() {
        self.navigationItem.title = self.param["상영관명"] as? String
        let lat = (param?["위도"] as! NSString).doubleValue
        let lng = (param?["경도"] as! NSString).doubleValue
        
        // 2. 위도와 경도를 인수로 하는 2D 위치 정보 객체 정의
        let location = CLLocationCoordinate2D(latitude: lat, longitude:lng)
        
        // 3. 지도에 표현될 거리: 값의 단위는 m
        let regionRadius: CLLocationDistance = 100
        
        // 4. 거리를 반영한 지역 정보를 조합한 지도 데이터를 생성
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location, regionRadius, regionRadius)
        
        // 5. map 변수에 연결된 지도 객체에 데이터를 전달하여 화면에 표시
        self.map.setRegion(coordinateRegion, animated: true)
        
      }
    
    
}
