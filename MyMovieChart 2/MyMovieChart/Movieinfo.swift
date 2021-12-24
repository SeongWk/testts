//
//  Movieinfo.swift
//  MyMovieChart
//
//  Created by seong_wook_lim on 2021/12/24.
//  Copyright © 2021 SQLPRO. All rights reserved.
//

import UIKit

class Movieinfo: UITableViewCell {

  @IBOutlet var title: UILabel! // 영화제목
  
  @IBOutlet var desc: UILabel! // 영화 설명
  
  @IBOutlet var opendate: UILabel! // 개봉일
  
  @IBOutlet var rating: UILabel! // 평점

  @IBOutlet var thumbnail: UIImageView! // 섬네일 이미지
}
