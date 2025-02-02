#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// Macro for creating vertical errors
#define  VerticalError(message)  \
do { _VerticalError_BOTTOM(message, __FILE_NAME__, __LINE__, nil); } while(0)


__attribute__((nomerge, noinline))
void _VerticalError_BOTTOM(NSString *message, const char * file, int line, void(^__nullable handler)(NSString *));

NS_ASSUME_NONNULL_END
