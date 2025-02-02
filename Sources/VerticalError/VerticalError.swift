import VerticalErrorC

func verticalError(_ message: String = "", file: StaticString = #fileID, line: UInt = #line) {
	#if os(macOS) || targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
	_VerticalError_BOTTOM(message, file.utf8Start, Int32(line)) { _ in
		fatalError(message, file: file, line: line)
	}
	#else
	// vertical errors not supported, downgrading to standard fatal error.
	fatalError(message, file: file, line: line)
	#endif
}
