import UIKit
import SnapKit

open class B7Cell: BaseThemeCell {
    private let leftView = LeftBView()
    private let rightView = Right7View()

    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        layout(leftView: leftView, rightView: rightView)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var title: String? {
        get { leftView.text }
        set { leftView.text = newValue }
    }

    public var titleTextColor: UIColor {
        get { leftView.textColor }
        set { leftView.textColor = newValue }
    }

    public var value: String? {
        get { rightView.text }
        set { rightView.text = newValue }
    }

    public var valueColor: UIColor {
        get { rightView.textColor }
        set { rightView.textColor = newValue }
    }

    public var valueItalic: Bool {
        get { rightView.italic }
        set { rightView.italic = newValue }
    }

}
