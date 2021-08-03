

private struct DefaultStyleKey: InjectionKey {
    static var currentValue: DefaultStyle = DefaultStyle()
}

extension InjectedValues {
    var defaultStyle: DefaultStyle {
        get { Self[DefaultStyleKey.self] }
        set { Self[DefaultStyleKey.self] = newValue }
    }
}
