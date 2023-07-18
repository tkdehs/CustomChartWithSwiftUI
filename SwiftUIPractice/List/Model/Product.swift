//
//  Product.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import Foundation

struct Product {
    let name: String
    let summary: String
    let category: String
    let price: Int
}

extension Product {
    static var sampleList: [Product] {
        [Product(name: "MackBook Air"
                 , summary: """
시스템 온 칩(SoC, System on Chip)
M2 칩
8코어 CPU(성능 코어 4개 및 효율 코어 4개)
10코어 GPU
16코어 Neural Engine
100GB/s 메모리 대역폭
"""
                 , category: "Mac"
                 , price: 1_890_000),
         Product(name: "MackBook Pro 16"
                  , summary: """
 시스템 온 칩(SoC, System on Chip)
 M2 Pro 칩
 12코어 CPU(성능 코어 8개 및 효율 코어 4개)
 19코어 GPU
 16코어 Neural Engine
 200GB/s 메모리 대역폭
 """
                  , category: "Mac"
                  , price: 3_490_000),
         Product(name: "iPad Pro 12.9"
                  , summary: """
 Liquid Retina XDR 디스플레이
 32.8cm(대각선) 미니 LED 백라이트 Multi‑Touch 디스플레이(IPS 기술)
 2596개의 풀 어레이 로컬 디밍 존을 갖춘 2D 백라이팅 시스템
 2732 x 2048 픽셀 해상도(264ppi)
 ProMotion 기술
 와이드 컬러 디스플레이(P3)
 True Tone 디스플레이
 지문 및 유분 방지 코팅
 전면 라미네이팅 처리된 디스플레이
 반사 방지 코팅
 1.8% 반사율
 SDR 밝기: 600 니트 전체 최대
 XDR 밝기: 1000 니트 전체 화면 최대,
 1600 니트 부분 최대(HDR 콘텐츠에만 적용)
 1,000,000:1 명암비
 Apple Pencil(2세대) 지원
 Apple Pencil 호버
 """
                  , category: "iPad"
                  , price: 1_729_000),
         Product(name: "iPhone 14 Pro"
                  , summary: """
 Dynamic Island
 상시표시형 디스플레이
 최대 120Hz 가변 재생률을 제공하는 ProMotion 기술
 HDR 디스플레이
 True Tone
 넓은 색영역(P3)
 햅틱 터치
 2,000,000:1 명암비(일반)
 1000 니트 전체 최대 밝기(일반); 1600 니트 부분 최대 밝기(HDR); 2000 니트 부분 최대 밝기(야외)
 지문 및 유분 방지 코팅
 여러 언어 및 문자 동시 표시 지원
 """
                  , category: "iPhone"
                  , price: 1_729_000)]
    }
}
