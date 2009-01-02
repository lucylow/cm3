/*
Derived closely from gcc/gcc/config/darwin-64.c which is LGPL, like libgcc, ok.
libgcc is frequently linked into non-GPL software.

This code is for the configuration of using the gcc backend,
either without an actual gcc installation, or for using native non-gcc linker,
esp. on 32bit systems.

INT64 is gcc's "double integer" aka 64 bit integer.
UINT64 is unsigned double integer.

Specifically, the backend and gcc C compiler output calls to these functions.
gcc as the linker links to libgcc, which implements these functions.

Given the heavy use of gcc as the linker on current systems, this problem has
not occured much. It does occur on SOLsun.
If other 32bit systems such as HP-UX, AIX, IRIX, come back, then those platforms
    will benefit from this also.

64bit systems tend to implement these operations inline, so no need.

NT386 interoperating with NT386GNU is aided by this, specifically
NT386 linking to NT386GNU /cm3/lib/hand.obj, which should probably move to either
    /cm3/pkg/m3core/target/hand.obj or
    /cm3/lib/target/hand.obj, probably the first.
*/

#ifndef __GNUC__

typedef int word_type;

#ifdef _MSC_VER
typedef __int32 INT32;
typedef __int64 INT64;
typedef unsigned __int32 UINT32;
typedef unsigned __int64 UINT64;
#else
typedef long long INT64;
typedef unsigned long long UINT64;
typedef int INT32;
typedef unsigned int UINT32;
#endif

/*
SI is "single integer" -- 32 bits
DI is "double integer" -- 64 bits
u is unsigned
l is logical -- unsigned
a is arithmetic -- signed
*/

 INT64 __ashldi3 ( INT64 x, word_type c) { return x << c; }
 INT64 __ashrdi3 ( INT64 x, word_type c) { return x >> c; }
UINT64 __lshrdi3 (UINT64 x, word_type c) { return x >> c; }

 INT64  __divdi3 ( INT64 x,  INT64 y) { return x / y; }
UINT64 __udivdi3 (UINT64 x, UINT64 y) { return x / y; }

 INT64  __moddi3 ( INT64 x,  INT64 y) { return x % y; }
UINT64 __umoddi3 (UINT64 x, UINT64 y) { return x % y; }

/* signed and unsigned multiplication and negation are the same */
INT64 __muldi3 (INT64 x, INT64 y) { return x * y; }
INT64 __negdi2 (INT64 x) { return -x; }

UINT64 __udivmoddi4 (UINT64 x, UINT64 y, UINT64 *r) { *r = x % y; return x / y; }

word_type  __cmpdi2 ( INT64 x , INT64 y) { return x < y ? 0 : x == y ? 1 : 2; }
word_type __ucmpdi2 (UINT64 x, UINT64 y) { return x < y ? 0 : x == y ? 1 : 2; }

/*
count leading zeros?
int __clzsi2 (UINT32 x) { return __builtin_clz (x); }

count trailing zeros?
int __ctzsi2 (UINT32 x) { return __builtin_ctz (x); }

1 if an odd number of bits set, 0 if an even number of bits set?
int __paritysi2 (UINT32 x) { return __builtin_parity (x); }

count set bits?
int __popcountsi2 (UINT32 x) { return __builtin_popcount (x); }
*/

#endif
