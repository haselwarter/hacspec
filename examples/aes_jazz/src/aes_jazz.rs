use hacspec_lib::*;

public_bytes!(SBox, 256);
public_bytes!(RCon, 15);

public_bytes!(PBytes256, 256);
const SBOX: SBox = SBox([
    0x63u8, 0x7Cu8, 0x77u8, 0x7Bu8, 0xF2u8, 0x6Bu8, 0x6Fu8, 0xC5u8, 0x30u8, 0x01u8, 0x67u8, 0x2Bu8,
    0xFEu8, 0xD7u8, 0xABu8, 0x76u8, 0xCAu8, 0x82u8, 0xC9u8, 0x7Du8, 0xFAu8, 0x59u8, 0x47u8, 0xF0u8,
    0xADu8, 0xD4u8, 0xA2u8, 0xAFu8, 0x9Cu8, 0xA4u8, 0x72u8, 0xC0u8, 0xB7u8, 0xFDu8, 0x93u8, 0x26u8,
    0x36u8, 0x3Fu8, 0xF7u8, 0xCCu8, 0x34u8, 0xA5u8, 0xE5u8, 0xF1u8, 0x71u8, 0xD8u8, 0x31u8, 0x15u8,
    0x04u8, 0xC7u8, 0x23u8, 0xC3u8, 0x18u8, 0x96u8, 0x05u8, 0x9Au8, 0x07u8, 0x12u8, 0x80u8, 0xE2u8,
    0xEBu8, 0x27u8, 0xB2u8, 0x75u8, 0x09u8, 0x83u8, 0x2Cu8, 0x1Au8, 0x1Bu8, 0x6Eu8, 0x5Au8, 0xA0u8,
    0x52u8, 0x3Bu8, 0xD6u8, 0xB3u8, 0x29u8, 0xE3u8, 0x2Fu8, 0x84u8, 0x53u8, 0xD1u8, 0x00u8, 0xEDu8,
    0x20u8, 0xFCu8, 0xB1u8, 0x5Bu8, 0x6Au8, 0xCBu8, 0xBEu8, 0x39u8, 0x4Au8, 0x4Cu8, 0x58u8, 0xCFu8,
    0xD0u8, 0xEFu8, 0xAAu8, 0xFBu8, 0x43u8, 0x4Du8, 0x33u8, 0x85u8, 0x45u8, 0xF9u8, 0x02u8, 0x7Fu8,
    0x50u8, 0x3Cu8, 0x9Fu8, 0xA8u8, 0x51u8, 0xA3u8, 0x40u8, 0x8Fu8, 0x92u8, 0x9Du8, 0x38u8, 0xF5u8,
    0xBCu8, 0xB6u8, 0xDAu8, 0x21u8, 0x10u8, 0xFFu8, 0xF3u8, 0xD2u8, 0xCDu8, 0x0Cu8, 0x13u8, 0xECu8,
    0x5Fu8, 0x97u8, 0x44u8, 0x17u8, 0xC4u8, 0xA7u8, 0x7Eu8, 0x3Du8, 0x64u8, 0x5Du8, 0x19u8, 0x73u8,
    0x60u8, 0x81u8, 0x4Fu8, 0xDCu8, 0x22u8, 0x2Au8, 0x90u8, 0x88u8, 0x46u8, 0xEEu8, 0xB8u8, 0x14u8,
    0xDEu8, 0x5Eu8, 0x0Bu8, 0xDBu8, 0xE0u8, 0x32u8, 0x3Au8, 0x0Au8, 0x49u8, 0x06u8, 0x24u8, 0x5Cu8,
    0xC2u8, 0xD3u8, 0xACu8, 0x62u8, 0x91u8, 0x95u8, 0xE4u8, 0x79u8, 0xE7u8, 0xC8u8, 0x37u8, 0x6Du8,
    0x8Du8, 0xD5u8, 0x4Eu8, 0xA9u8, 0x6Cu8, 0x56u8, 0xF4u8, 0xEAu8, 0x65u8, 0x7Au8, 0xAEu8, 0x08u8,
    0xBAu8, 0x78u8, 0x25u8, 0x2Eu8, 0x1Cu8, 0xA6u8, 0xB4u8, 0xC6u8, 0xE8u8, 0xDDu8, 0x74u8, 0x1Fu8,
    0x4Bu8, 0xBDu8, 0x8Bu8, 0x8Au8, 0x70u8, 0x3Eu8, 0xB5u8, 0x66u8, 0x48u8, 0x03u8, 0xF6u8, 0x0Eu8,
    0x61u8, 0x35u8, 0x57u8, 0xB9u8, 0x86u8, 0xC1u8, 0x1Du8, 0x9Eu8, 0xE1u8, 0xF8u8, 0x98u8, 0x11u8,
    0x69u8, 0xD9u8, 0x8Eu8, 0x94u8, 0x9Bu8, 0x1Eu8, 0x87u8, 0xE9u8, 0xCEu8, 0x55u8, 0x28u8, 0xDFu8,
    0x8Cu8, 0xA1u8, 0x89u8, 0x0Du8, 0xBFu8, 0xE6u8, 0x42u8, 0x68u8, 0x41u8, 0x99u8, 0x2Du8, 0x0Fu8,
    0xB0u8, 0x54u8, 0xBBu8, 0x16u8
]);

const RCON: RCon = RCon([
    0x8du8, 0x01u8, 0x02u8, 0x04u8, 0x08u8, 0x10u8, 0x20u8, 0x40u8, 0x80u8, 0x1bu8, 0x36u8, 0x6cu8,
    0xd8u8, 0xabu8, 0x4du8
]);

// Jasmin
fn vpshufd1 (s: u128, o: u8, i : usize) -> u32 {
    (s >> 32 * ((o as usize >> (2 * i)) % 4)) as u32
}

fn vpshufd (s: u128, o: u8) -> u128 {
    let d1 : u32 = vpshufd1(s, o, 0);
    let d2 : u32 = vpshufd1(s, o, 1);
    let d3 : u32 = vpshufd1(s, o, 2);
    let d4 : u32 = vpshufd1(s, o, 3);

    (d1 as u128) | ((d2 as u128) << 32) | ((d3 as u128) << 64) | ((d4 as u128) << 96)
}

fn vshufps(s1: u128, s2: u128, o: u8) -> u128 {
    let d1 : u32 = vpshufd1(s1, o, 0);
    let d2 : u32 = vpshufd1(s1, o, 1);
    let d3 : u32 = vpshufd1(s2, o, 2);
    let d4 : u32 = vpshufd1(s2, o, 3);

    (d1 as u128) | ((d2  as u128) << 32) | ((d3 as u128) << 64) | ((d4 as u128) << 96)
}

// note the constants might be off, I've interpreted arrays from `aes.jinc` as low endian, they might be big endian
fn key_combine(rkey: u128, temp1: u128, temp2: u128) -> (u128, u128) {
    let temp1 = vpshufd(temp1, 0xFF);
    let temp2 = vshufps(temp2, rkey, 16u8);
    let rkey = rkey ^ temp2;
    let temp2 = vshufps(temp2, rkey, 140u8);
    let rkey = rkey ^ temp2;
    let rkey = rkey ^ temp1;
    (rkey, temp2)
}

fn subword(v: u32) -> u32 {
    let vs = u32_to_be_bytes(v);
    let mut res = u32Word::new();
    for i in 0..4 {
	res[i] = SBOX[vs[3-i]];
    }
    u32_from_be_bytes(res)
}

fn ror(v: u32, i: usize) -> u32 {
    (v >> i) | (v << (32 - i))
}

fn aeskeygenassist(v1: u128, v2: u8) -> u128 {
    let x1 = (v1 >> 32) % (1_u128 << 32);
    let x3 = (v1 >> 96) % (1_u128 << 32);
    let y0 = subword(x1 as u32);
    let y1 = ror(y0, 1) ^ (v2 as u32);
    let y2 = subword(x3 as u32);
    let y3 = ror(y2, 1) ^ (v2 as u32);

    (y0 as u128) | ((y1 as u128) << 32) | ((y2 as u128) << 64) | (((y3) as u128) << 96)
}

fn key_expand(rcon: u8, rkey: u128, temp2: u128) -> (u128, u128) {
    let temp1 = aeskeygenassist(rkey, rcon);
    let (rkey, temp2) = key_combine(rkey, temp1, temp2);
    (rkey, temp2)
}

type KeyList = Seq<u8>;

fn set_word(x : KeyList, i : usize, v : u128) -> KeyList {
    let v_word = u128_to_be_bytes(v);
    let mut ret_list = x;
    for j in 0..16 {
        ret_list[i * 16 + j] = v_word[j];
    }
    ret_list
}

fn get_word(x : KeyList, i : usize) -> u128 {
    let mut v_word = u128Word::new();
    for j in 0..16 {
        v_word[j] = x[i * 16 + j];
    }
    u128_from_be_bytes(v_word)
}

fn keys_expand(key : u128) -> KeyList {
    let mut rkeys : KeyList = KeyList::new(11);
    rkeys = set_word(rkeys, 0, key);
    let temp2 : u128 = 0;
    for round in 1 .. 11 {
        let rcon = RCON[round];
        let (key, temp2) = key_expand(rcon, key, temp2);
        rkeys = set_word(rkeys, round, key);
    }
    rkeys
}

fn aes_enc(state : u128, round_key : u128) -> u128 {
    state
}

fn aes_enc_last(state : u128, round_key : u128) -> u128 {
    state
}

fn aes_rounds (rkeys : KeyList, inp : u128) -> u128 {
    let mut state : u128 = inp ^ get_word(rkeys.clone(), 0);
    // TODO:
    for round in 1 .. 10 {
        state = aes_enc(state, get_word(rkeys.clone(), round)) // #AESENC(state, rkeys[round]);
    }
    aes_enc_last(state, get_word(rkeys.clone(), 10)) // #AESENCLAST
}

/* Functions typically called from other Jasmin programs.
Note they always compute key expansion, and this may
not be a good in terms of performance. */
fn aes(key : u128, inp : u128) -> u128 {
    let rkeys = keys_expand(key);
    aes_rounds(rkeys, inp)
}

// fn key_expansion_word(w0: Word, w1: Word, i: usize, nk: usize, nr: usize) -> WordResult {
//     let mut k = w1;
//     let mut result = WordResult::Err(INVALID_KEY_EXPANSION_INDEX);
//     if i < (4 * (nr + 1)) {
//         if i % nk == 0 {
//             k = aes_keygen_assist(k, RCON[i / nk]);
//         } else {
//             // FIXME: #85
//             if nk > 6 && i % nk == 4 {
//                 k = slice_word(k);
//             }
//         }
//         for i in 0..4 {
//             k[i] = k[i] ^ w0[i];
//         }
//         result = WordResult::Ok(k);
//     }
//     result
// }

// fn key_expansion_aes(
//     key: &ByteSeq,
//     nk: usize,
//     nr: usize,
//     key_schedule_length: usize,
//     key_length: usize,
//     iterations: usize,
// ) -> ByteSeqResult {
//     let mut key_ex = ByteSeq::new(key_schedule_length);
//     key_ex = key_ex.update_start(key);
//     let word_size = key_length;
//     for j in 0..iterations {
//         let i = j + word_size;
//         let word = key_expansion_word(
//             Word::from_slice(&key_ex, 4 * (i - word_size), 4),
//             Word::from_slice(&key_ex, 4 * i - 4, 4),
//             i,
//             nk,
//             nr,
//         )?;
//         key_ex = key_ex.update(4 * i, &word);
//     }
//     ByteSeqResult::Ok(key_ex)
// }

// inline fn keys_expand_inv(reg u128 key) -> reg u128[11] {
//   reg u128[11] rkeys;
//   reg u128 temp2;
//   inline int round, rcon;
//   rkeys[0] = key;
//   temp2    = #set0_128();
//   for round = 1 to 11 {
//     rcon = RCON(round);
//     (key, temp2) = key_expand(rcon, key, temp2);
//     if (round != 10) {
//       rkeys[round] = #AESIMC(key);
//     } else {
//       rkeys[round] = key;
//     }
//   }
//   return rkeys;
// }

// inline fn AddRoundKey(reg u128 state, stack u128 rk) -> reg u128 {
//    state = state ^ rk;
//    return state;
// }

// inline fn invaes_rounds (reg u128[11] rkeys, reg u128 in) -> reg u128 {
//   reg u128 state;
//   inline int round;
//   stack u128 rk;
//   state = in;
//   rk = rkeys[10];
//   state = AddRoundKey(state,rk);
//   for round = 9 downto 0 {
//     state = #AESDEC(state, rkeys[round]);
//   }
//   state = #AESDECLAST(state, rkeys[0]);
//   return state;
// }

// inline
// fn invaes(reg u128 key, reg u128 in) -> reg u128 {
//   reg u128 out;
//   reg u128[11] rkeys;

//   rkeys = keys_expand_inv(key);
//   out   = invaes_rounds(rkeys, in);
//   return out;
// }


// fn aes(rkey: u128, m: u128) -> u128 {
//     m
// }
