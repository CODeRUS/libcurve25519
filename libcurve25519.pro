TEMPLATE = lib
TARGET = curve25519
isEmpty(CURRENT_RPATH_DIR) {
    target.path = /usr/lib
} else {
    message("$$TARGET path is set to $$CURRENT_RPATH_DIR")
    target.path = $$CURRENT_RPATH_DIR
}
VERSION = 1.0.0
INSTALLS += target

QT     -= core gui
CONFIG -= qt

CONFIG += dll
#CONFIG += staticlib

DEFINES += LIBCURVE25519_LIBRARY

SOURCES += curve.cpp

HEADERS += curve.h \
    curve_global.h

QMAKE_CFLAGS += -std=c99

SOURCES += \
    src/curve25519-donna.c \
    src/ed25519/fe_neg.c \
    src/ed25519/ge_p1p1_to_p2.c \
    src/ed25519/fe_cmov.c \
    src/ed25519/ge_p3_dbl.c \
    src/ed25519/ge_p3_0.c \
    src/ed25519/fe_pow22523.c \
    src/ed25519/main/main.c \
    src/ed25519/fe_copy.c \
    src/ed25519/ge_msub.c \
    src/ed25519/fe_1.c \
    src/ed25519/fe_frombytes.c \
    src/ed25519/ge_sub.c \
    src/ed25519/ge_tobytes.c \
    src/ed25519/ge_add.c \
    src/ed25519/open.c \
    src/ed25519/ge_p1p1_to_p3.c \
    src/ed25519/fe_invert.c \
    src/ed25519/fe_add.c \
    src/ed25519/fe_mul.c \
    src/ed25519/sc_muladd.c \
    src/ed25519/ge_frombytes.c \
    src/ed25519/fe_sub.c \
    src/ed25519/ge_p3_to_cached.c \
    src/ed25519/ge_p2_dbl.c \
    src/ed25519/ge_scalarmult_base.c \
    src/ed25519/ge_madd.c \
    src/ed25519/fe_sq2.c \
    src/ed25519/additions/sign_modified.c \
    src/ed25519/additions/zeroize.c \
    src/ed25519/additions/compare.c \
    src/ed25519/additions/curve_sigs.c \
    src/ed25519/fe_tobytes.c \
    src/ed25519/ge_precomp_0.c \
    src/ed25519/fe_isnonzero.c \
    src/ed25519/ge_p2_0.c \
    src/ed25519/fe_isnegative.c \
    src/ed25519/nacl_sha512/blocks.c \
    src/ed25519/nacl_sha512/hash.c \
    src/ed25519/fe_0.c \
    src/ed25519/ge_p3_tobytes.c \
    src/ed25519/sign.c \
    src/ed25519/ge_double_scalarmult.c \
    src/ed25519/sc_reduce.c \
    src/ed25519/ge_p3_to_p2.c \
    src/ed25519/fe_sq.c


HEADERS += \
    src/curve25519-donna.h \
    src/ed25519/fe.h \
    src/ed25519/pow22523.h \
    src/ed25519/ge_add.h \
    src/ed25519/ge_p2_dbl.h \
    src/ed25519/pow225521.h \
    src/ed25519/d.h \
    src/ed25519/d2.h \
    src/ed25519/ge.h \
    src/ed25519/api.h \
    src/ed25519/sc.h \
    src/ed25519/base.h \
    src/ed25519/additions/crypto_hash_sha512.h \
    src/ed25519/additions/compare.h \
    src/ed25519/additions/curve_sigs.h \
    src/ed25519/additions/zeroize.h \
    src/ed25519/ge_msub.h \
    src/ed25519/sqrtm1.h \
    src/ed25519/nacl_includes/crypto_sign.h \
    src/ed25519/nacl_includes/crypto_verify_32.h \
    src/ed25519/nacl_includes/crypto_int32.h \
    src/ed25519/nacl_includes/crypto_uint64.h \
    src/ed25519/nacl_includes/crypto_uint32.h \
    src/ed25519/nacl_includes/crypto_int64.h \
    src/ed25519/nacl_includes/crypto_sign_edwards25519sha512batch.h \
    src/ed25519/ge_madd.h \
    src/ed25519/base2.h \
    src/ed25519/ge_sub.h
