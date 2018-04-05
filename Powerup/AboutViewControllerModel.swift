import Foundation
struct Sections {
    var title: String
    var information: String
    var isExpandable: Bool

    init(title: String, information: String) {
        self.title = title
        self.information = information
        self.isExpandable = false
    }
}
public struct Item {
    var detail: String

    public init(detail: String) {
        self.detail = detail
    }
}

public struct Section {
    var name: String
    var items: Item
    var collapsed: Bool

    public init(name: String, items: Item, collapsed: Bool = false) {
        self.name = name
        self.items = items
        self.collapsed = collapsed
    }
}

public var sectionsData: [Section] = [
    Section(name: SectionWhatIsPowerup, items:
        Item(detail: SectionWhatIsPowerupDetail), collapsed: true),
    Section(name: SectionWhyIsPowerupNeeded, items:
        Item(detail: SectionWhyIsPowerupNeededDetail), collapsed: true),
    Section(name: SectionPowerupHelpTeenagers, items:
        Item(detail: SectionPowerupHelpTeenagersDetail), collapsed: true)
]
