import VerticalErrorC

public func verticalError(_ message: String = "", file: StaticString = #fileID, line: UInt = #line) -> Never {
	#if os(macOS) || targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
	_VerticalError_BOTTOM(message, file.utf8Start, Int32(line)) { _ in
		fatalError(message, file: file, line: line)
	}
	#endif
	// vertical errors not supported on this platform or closure aboce was not
	// called for some reason so handle here as a last resort.
	fatalError(message, file: file, line: line)
}
