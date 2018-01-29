
import Foundation
import UIKit
import markymark

class LessonCopyTableViewCell: UITableViewCell, CellConfigurable, UITextViewDelegate {

    typealias ItemType = LessonCopy

    @IBOutlet weak var copyTextView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func configure(item: LessonCopy) {
        let attributedText = Markdown.attributedMarkdownText(text: item.copy, font: copyFont)
        copyTextView.attributedText = attributedText
        copyTextView.sizeToFit()
    }

    var copyFont: UIFont {
        return UIFont.systemFont(ofSize: 15.0, weight: .light)
    }
}
