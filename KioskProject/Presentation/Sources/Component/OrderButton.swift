//
//  OrderButton.swift
//  KioskProject
//
//  Created by 권순욱 on 4/8/25.
//

import UIKit
import SnapKit

class OrderButton: UIButton {
    enum OrderStatus {
        case confirm
        case cancel
        
        func titleText() -> String {
            switch self {
            case .confirm:
                return "주문하기"
            case .cancel:
                return "주문취소"
            }
        }
        
        func titleColor() -> UIColor {
            switch self {
            case .confirm:
                return .black
            case .cancel:
                return .white
            }
        }
    }
    
    var orderStatus: OrderStatus
    
    init(orderStatus: OrderStatus) {
        self.orderStatus = orderStatus
        super.init(frame: .zero)
        
        setTitle(orderStatus.titleText(), for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        setTitleColor(orderStatus.titleColor(), for: .normal)
        layer.cornerRadius = 8
        
        if orderStatus == .confirm {
            layer.borderColor = UIColor.black.cgColor
            layer.borderWidth = 2
        } else {
            backgroundColor = .black
        }
        
        snp.makeConstraints {
            $0.height.equalTo(50)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")   }
}
