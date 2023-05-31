//
//  ViewController.swift
//  PDFTest
//
//  Created by 望月麻衣 on 2018/09/10.
//  Copyright © 2018年 望月麻衣. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    @IBOutlet weak var pdfView: PDFView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
//        final class SamplePage: PDFPage {
//            private let width = 1024
//            private let height = 768
//            private let title: String
//            private let contents: String
//
//            init(title: String, contents: String) {
//                self.title = title
//                self.contents = contents
//                super.init()
//            }
//
//            override func draw(with box: PDFDisplayBox, to context: CGContext) {
//                super.draw(with: box, to: context)
//                UIGraphicsPushContext(context)
//                context.translateBy(x: 0.0, y: CGFloat(height))
//                context.scaleBy(x: 1.0, y: -1.0)
//                let rect = CGRect(x: 25, y: 25, width: width, height: 100)
//                let attributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 50),
//                                  NSAttributedStringKey.foregroundColor: UIColor.black]
//                title.draw(in: rect, withAttributes: attributes)
//
//                let rect2 = CGRect(x: 25, y: 200, width: width, height: 600)
//                contents.draw(in: rect2, withAttributes: attributes)
//                let path = UIBezierPath()
//                path.move(to: CGPoint(x: 0, y: 100))
//                path.addLine(to: CGPoint(x: width-50, y: 100))
//                path.lineWidth = 5.0
//                path.stroke()
//                UIGraphicsPopContext()
//            }
//
//            override func bounds(for box: PDFDisplayBox) -> CGRect {
//                return CGRect(x: 0, y: 0, width: width, height: height)
//            }
//        }

//
//
//        let pdf = PDFDocument()
//        let contents = """
//・PDFKitをimportする。
//・PDFPageのdrawをoverrideする。
//・PDFDocumentにPDFPageをinsertする。
//・PDFDocumentをファイル書き出し。
//"""
//        let firstPage = SamplePage(title: "【PDFKit】Swiftでプレゼン資料を作る", contents:contents)
//        pdf.insert(firstPage, at: 0)
//        if let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//            let path = url.appendingPathComponent("PDFTest.pdf")
//            print(path)
//            pdf.write(to: path)
//        }
        
        
//
//        if let documentURL = Bundle.main.url(forResource: "PDFTest", withExtension: "pdf") {
        if let documentURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            print(documentURL)

            if let document = PDFDocument(url: documentURL) {
       
//        if let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//            let path = url.appendingPathComponent("PDFTest.pdf")
//            let document = PDFDocument(url: url)

                pdfView.document = document
                // PDFの拡大率を調整する
                pdfView.autoScales = true
                // 表示モード
                pdfView.displayMode = .singlePageContinuous
        
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

