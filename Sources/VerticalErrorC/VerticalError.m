#import <Foundation/Foundation.h>
#import "VerticalError.h"

#define  VERTICAL_FUNC_ATTR  static __attribute__((nomerge)) __attribute__((noinline))

typedef struct {
	NSString *message;
	NSInteger pos;
	void(^ terminate)(NSString *);
} VerticalError;

typedef void(* VerticalError_Func)();

VERTICAL_FUNC_ATTR VerticalError_Func VerticalError_GetNext(VerticalError * error);

VERTICAL_FUNC_ATTR void _VerticalError_TOP(VerticalError * message);
void _VerticalError_BOTTOM(NSString * message, const char * file, int line, void(^__nullable terminate)(NSString *)) {
	if (message == nil) {
		message = @"";
	}
	if (file == nil) {
		file = "";
	}
	VerticalError error;
	if (message.length == 0) {
		error.message = [NSString stringWithFormat:@"%s:%d", file, line];
	} else {
		error.message = [NSString stringWithFormat:@"%@ %s:%d", message, file, line];
	}
	error.pos = error.message.length;
	error.terminate = terminate;
	VerticalError_GetNext(&error)(&error);
}

#define  VERTICAL_NEXT(error)  \
do { \
if (error->pos == 0) { _VerticalError_TOP(error); } \
else { VerticalError_GetNext(error)(error); } \
} while (0)

VERTICAL_FUNC_ATTR void error__(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_A(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_B(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_C(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_D(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_E(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_F(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_G(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_H(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_I(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_J(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_K(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_L(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_M(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_N(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_O(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_P(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_Q(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_R(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_S(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_T(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_U(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_V(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_W(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_X(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_Y(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_Z(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_a(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_b(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_c(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_d(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_e(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_f(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_g(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_h(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_i(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_j(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_k(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_l(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_m(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_n(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_o(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_p(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_q(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_r(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_s(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_t(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_u(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_v(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_w(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_x(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_y(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_z(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_1(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_2(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_3(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_4(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_5(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_6(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_7(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_8(VerticalError * error) { VERTICAL_NEXT(error); }
VERTICAL_FUNC_ATTR void error_9(VerticalError * error) { VERTICAL_NEXT(error); }

VERTICAL_FUNC_ATTR void _VerticalError_TOP(VerticalError * error) {
	if (error->terminate) {
		error->terminate(error->message);
	} else {
		@throw [NSException exceptionWithName:@"VerticalError" reason:error->message userInfo:nil];
	}
}

static VerticalError_Func VerticalError_GetNext(VerticalError * error) {
	error->pos -= 1;
	const char currentChar = [error->message characterAtIndex:error->pos];
	switch (currentChar) {
	case 'A': return error_A;
	case 'B': return error_B;
	case 'C': return error_C;
	case 'D': return error_D;
	case 'E': return error_E;
	case 'F': return error_F;
	case 'G': return error_G;
	case 'H': return error_H;
	case 'I': return error_I;
	case 'J': return error_J;
	case 'K': return error_K;
	case 'L': return error_L;
	case 'M': return error_M;
	case 'N': return error_N;
	case 'O': return error_O;
	case 'P': return error_P;
	case 'Q': return error_Q;
	case 'R': return error_R;
	case 'S': return error_S;
	case 'T': return error_T;
	case 'U': return error_U;
	case 'V': return error_V;
	case 'W': return error_W;
	case 'X': return error_X;
	case 'Y': return error_Y;
	case 'Z': return error_Z;
	case 'a': return error_a;
	case 'b': return error_b;
	case 'c': return error_c;
	case 'd': return error_d;
	case 'e': return error_e;
	case 'f': return error_f;
	case 'g': return error_g;
	case 'h': return error_h;
	case 'i': return error_i;
	case 'j': return error_j;
	case 'k': return error_k;
	case 'l': return error_l;
	case 'm': return error_m;
	case 'n': return error_n;
	case 'o': return error_o;
	case 'p': return error_p;
	case 'q': return error_q;
	case 'r': return error_r;
	case 's': return error_s;
	case 't': return error_t;
	case 'u': return error_u;
	case 'v': return error_v;
	case 'w': return error_w;
	case 'x': return error_x;
	case 'y': return error_y;
	case 'z': return error_z;
	case '1': return error_1;
	case '2': return error_2;
	case '3': return error_3;
	case '4': return error_4;
	case '5': return error_5;
	case '6': return error_6;
	case '7': return error_7;
	case '8': return error_8;
	case '9': return error_9;
	default:  return error__;
	}
}
