//
//  QSRecord.swift
//  zhuishushenqi
//
//  Created by caonongyun on 2018/2/11.
//  Copyright © 2018年 QS. All rights reserved.
//

import UIKit

class QSRecord: NSObject,NSCoding {
    // 阅读记录
    var chapter: Int  = 0 //最后阅读的章节
    
    var page:Int = 0 //最后阅读的页数
    var bookId:String = "" //阅读的bookid
    
    var animatedComplete:Bool?  // 阅读动画完成与否
    var chapterModel:QSChapter? // 当前阅读到的章节模型
    
    var nextChapter:QSChapter?
    
//    init(chapterModel:QSChapter) {
//        self.chapterModel = chapterModel
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init()
        self.chapter = aDecoder.decodeInteger(forKey: "chapter")
        self.page = aDecoder.decodeInteger(forKey: "page")
        self.bookId = aDecoder.decodeObject(forKey:"bookId") as! String
        self.chapterModel = aDecoder.decodeObject(forKey:"chapterModel") as? QSChapter
//        self.animatedComplete = aDecoder.decodeBool(forKey: "animatedComplete")
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.chapter, forKey: "chapter")
        aCoder.encode(self.page, forKey: "page")
        aCoder.encode(self.bookId, forKey: "bookId")
        aCoder.encode(self.chapterModel, forKey: "chapterModel")
//        aCoder.encode(self.animatedComplete, forKey: "animatedComplete")
    }
    
    override init() {
        
    }
}
