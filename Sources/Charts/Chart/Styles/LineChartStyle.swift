import SwiftUI
import Shapes

public struct LineChartStyle: ChartStyle {
    public enum LineType {
        case line
        case quadCurve
    }
    
    private let lineType: LineType
    private let lineColor: Color
    private let lineWidth: CGFloat
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        switch lineType {
        case .line:
            return AnyView(Line(unitData: configuration.data)
                .stroke(self.lineColor, style: .init(lineWidth: self.lineWidth, lineCap: .round)))
        case .quadCurve:
            return AnyView(QuadCurve(unitData: configuration.data)
                .stroke(self.lineColor, style: .init(lineWidth: self.lineWidth, lineCap: .round)))
        }
    }
    
    public init(_ lineType: LineType = .quadCurve, lineColor: Color = .accentColor, lineWidth: CGFloat = 1) {
        self.lineType = lineType
        self.lineColor = lineColor
        self.lineWidth = lineWidth
    }
}