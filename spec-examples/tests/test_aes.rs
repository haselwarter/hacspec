use hacspec::prelude::*;
use hacspec_dev::prelude::*;

use hacspec_examples::aes_gcm::aes::*;

fn aes_128_enc_dec_test(m: &ByteSeq, key: Key128, iv: Nonce, ctr: U32, ctxt: Option<&ByteSeq>) {
    let c = aes128_encrypt(key, iv, ctr, m);
    let m_dec = aes128_decrypt(key, iv, ctr, &c);
    assert_bytes_eq!(m, m_dec);
    if ctxt.is_some() {
        assert_bytes_eq!(c, ctxt.unwrap());
    }
}
fn aes_256_enc_dec_test(m: &ByteSeq, key: Key256, iv: Nonce, ctr: U32, ctxt: Option<&ByteSeq>) {
    let c = aes256_encrypt(key, iv, ctr, m);
    let m_dec = aes256_decrypt(key, iv, ctr, &c);
    assert_bytes_eq!(m, m_dec);
    if ctxt.is_some() {
        assert_bytes_eq!(c, ctxt.unwrap());
    }
}

#[test]
fn test_enc_dec() {
    let key = Key128::from_public_slice(&random_byte_vec(Key128::length()));
    let iv = Nonce::from_public_slice(&random_byte_vec(Nonce::length()));
    let m = ByteSeq::from_public_slice(&random_byte_vec(40));
    aes_128_enc_dec_test(&m, key, iv, U32(0), None);
}

#[test]
fn test_kat1() {
    let msg = ByteSeq::from_public_slice(&[
        0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96, 0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17,
        0x2a
    ]);
    let key = Key128::from_public_slice(&[
        0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f,
        0x3c
    ]);
    let nonce = Nonce::from_public_slice(&[
        0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xfb
    ]);
    let ctr = U32(0xfcfdfeff);
    let ctxt = ByteSeq::from_public_slice(&[
        0x87, 0x4d, 0x61, 0x91, 0xb6, 0x20, 0xe3, 0x26, 0x1b, 0xef, 0x68, 0x64, 0x99, 0x0d, 0xb6,
        0xce
    ]);
    aes_128_enc_dec_test(&msg, key, nonce, ctr, Some(&ctxt));
}

#[test]
fn test_kat2() {
    let msg = ByteSeq::from_public_slice(&[
        0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E,
        0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D,
        0x1E, 0x1F
    ]);
    let key = Key128::from_public_slice(&[
        0x7E, 0x24, 0x06, 0x78, 0x17, 0xFA, 0xE0, 0xD7, 0x43, 0xD6, 0xCE, 0x1F, 0x32, 0x53, 0x91,
        0x63
    ]);
    let nonce = Nonce::from_public_slice(&[
        0x00, 0x6C, 0xB6, 0xDB, 0xC0, 0x54, 0x3B, 0x59, 0xDA, 0x48, 0xD9, 0x0B
    ]);
    let ctr = 0x00000001;
    let ctxt = ByteSeq::from_public_slice(&[
        0x51, 0x04, 0xA1, 0x06, 0x16, 0x8A, 0x72, 0xD9, 0x79, 0x0D, 0x41, 0xEE, 0x8E, 0xDA, 0xD3,
        0x88, 0xEB, 0x2E, 0x1E, 0xFC, 0x46, 0xDA, 0x57, 0xC8, 0xFC, 0xE6, 0x30, 0xDF, 0x91, 0x41,
        0xBE, 0x28
    ]);
    aes_128_enc_dec_test(&msg, key, nonce, U32(ctr), Some(&ctxt));
}
#[test]
//https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Standards-and-Guidelines/documents/examples/AES_CTR.pdf
fn test_aes256_1() {
    let msg = ByteSeq::from_public_slice(&[
        0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96, 0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17,
        0x2a
    ]);
    let key = Key256::from_public_slice(&[
        0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe, 0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77,
        0x81, 0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7, 0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14,
        0xdf, 0xf4
    ]);
    let nonce = Nonce::from_public_slice(&[
        0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xfb
    ]);
    let ctr = U32(0xfcfdfeff);
    let ctxt = ByteSeq::from_public_slice(&[
        0x60, 0x1e, 0xc3, 0x13, 0x77, 0x57, 0x89, 0xa5, 0xb7, 0xa7, 0xf5, 0x04, 0xbb, 0xf3, 0xd2,
        0x28
    ]);

    aes_256_enc_dec_test(&msg, key, nonce, ctr, Some(&ctxt));
}
