(** This file was automatically generated using Hacspec **)
Set Warnings "-notation-overridden,-ambiguous-paths".
From Crypt Require Import choice_type Package Prelude.
Import PackageNotation.
From extructures Require Import ord fset.
From mathcomp.word Require Import ssrZ word.
From Jasmin Require Import word.

From Coq Require Import ZArith.
Import List.ListNotations.
Open Scope list_scope.
Open Scope Z_scope.
Open Scope bool_scope.

Require Import ChoiceEquality.
Require Import LocationUtility.
Require Import Hacspec_Lib_Comparable.
Require Import Hacspec_Lib_Pre.
Require Import Hacspec_Lib.

Open Scope hacspec_scope.

Obligation Tactic := try timeout 8 solve_ssprove_obligations.


Definition s_box_t := nseq (int8) (usize 256).

Definition r_con_t := nseq (uint8) (usize 15).

Definition p_bytes256_t := nseq (int8) (usize 256).

Definition sbox_v : s_box_t :=
  array_from_list int8 [
    (@repr U8 99) : int8;
    (@repr U8 124) : int8;
    (@repr U8 119) : int8;
    (@repr U8 123) : int8;
    (@repr U8 242) : int8;
    (@repr U8 107) : int8;
    (@repr U8 111) : int8;
    (@repr U8 197) : int8;
    (@repr U8 48) : int8;
    (@repr U8 1) : int8;
    (@repr U8 103) : int8;
    (@repr U8 43) : int8;
    (@repr U8 254) : int8;
    (@repr U8 215) : int8;
    (@repr U8 171) : int8;
    (@repr U8 118) : int8;
    (@repr U8 202) : int8;
    (@repr U8 130) : int8;
    (@repr U8 201) : int8;
    (@repr U8 125) : int8;
    (@repr U8 250) : int8;
    (@repr U8 89) : int8;
    (@repr U8 71) : int8;
    (@repr U8 240) : int8;
    (@repr U8 173) : int8;
    (@repr U8 212) : int8;
    (@repr U8 162) : int8;
    (@repr U8 175) : int8;
    (@repr U8 156) : int8;
    (@repr U8 164) : int8;
    (@repr U8 114) : int8;
    (@repr U8 192) : int8;
    (@repr U8 183) : int8;
    (@repr U8 253) : int8;
    (@repr U8 147) : int8;
    (@repr U8 38) : int8;
    (@repr U8 54) : int8;
    (@repr U8 63) : int8;
    (@repr U8 247) : int8;
    (@repr U8 204) : int8;
    (@repr U8 52) : int8;
    (@repr U8 165) : int8;
    (@repr U8 229) : int8;
    (@repr U8 241) : int8;
    (@repr U8 113) : int8;
    (@repr U8 216) : int8;
    (@repr U8 49) : int8;
    (@repr U8 21) : int8;
    (@repr U8 4) : int8;
    (@repr U8 199) : int8;
    (@repr U8 35) : int8;
    (@repr U8 195) : int8;
    (@repr U8 24) : int8;
    (@repr U8 150) : int8;
    (@repr U8 5) : int8;
    (@repr U8 154) : int8;
    (@repr U8 7) : int8;
    (@repr U8 18) : int8;
    (@repr U8 128) : int8;
    (@repr U8 226) : int8;
    (@repr U8 235) : int8;
    (@repr U8 39) : int8;
    (@repr U8 178) : int8;
    (@repr U8 117) : int8;
    (@repr U8 9) : int8;
    (@repr U8 131) : int8;
    (@repr U8 44) : int8;
    (@repr U8 26) : int8;
    (@repr U8 27) : int8;
    (@repr U8 110) : int8;
    (@repr U8 90) : int8;
    (@repr U8 160) : int8;
    (@repr U8 82) : int8;
    (@repr U8 59) : int8;
    (@repr U8 214) : int8;
    (@repr U8 179) : int8;
    (@repr U8 41) : int8;
    (@repr U8 227) : int8;
    (@repr U8 47) : int8;
    (@repr U8 132) : int8;
    (@repr U8 83) : int8;
    (@repr U8 209) : int8;
    (@repr U8 0) : int8;
    (@repr U8 237) : int8;
    (@repr U8 32) : int8;
    (@repr U8 252) : int8;
    (@repr U8 177) : int8;
    (@repr U8 91) : int8;
    (@repr U8 106) : int8;
    (@repr U8 203) : int8;
    (@repr U8 190) : int8;
    (@repr U8 57) : int8;
    (@repr U8 74) : int8;
    (@repr U8 76) : int8;
    (@repr U8 88) : int8;
    (@repr U8 207) : int8;
    (@repr U8 208) : int8;
    (@repr U8 239) : int8;
    (@repr U8 170) : int8;
    (@repr U8 251) : int8;
    (@repr U8 67) : int8;
    (@repr U8 77) : int8;
    (@repr U8 51) : int8;
    (@repr U8 133) : int8;
    (@repr U8 69) : int8;
    (@repr U8 249) : int8;
    (@repr U8 2) : int8;
    (@repr U8 127) : int8;
    (@repr U8 80) : int8;
    (@repr U8 60) : int8;
    (@repr U8 159) : int8;
    (@repr U8 168) : int8;
    (@repr U8 81) : int8;
    (@repr U8 163) : int8;
    (@repr U8 64) : int8;
    (@repr U8 143) : int8;
    (@repr U8 146) : int8;
    (@repr U8 157) : int8;
    (@repr U8 56) : int8;
    (@repr U8 245) : int8;
    (@repr U8 188) : int8;
    (@repr U8 182) : int8;
    (@repr U8 218) : int8;
    (@repr U8 33) : int8;
    (@repr U8 16) : int8;
    (@repr U8 255) : int8;
    (@repr U8 243) : int8;
    (@repr U8 210) : int8;
    (@repr U8 205) : int8;
    (@repr U8 12) : int8;
    (@repr U8 19) : int8;
    (@repr U8 236) : int8;
    (@repr U8 95) : int8;
    (@repr U8 151) : int8;
    (@repr U8 68) : int8;
    (@repr U8 23) : int8;
    (@repr U8 196) : int8;
    (@repr U8 167) : int8;
    (@repr U8 126) : int8;
    (@repr U8 61) : int8;
    (@repr U8 100) : int8;
    (@repr U8 93) : int8;
    (@repr U8 25) : int8;
    (@repr U8 115) : int8;
    (@repr U8 96) : int8;
    (@repr U8 129) : int8;
    (@repr U8 79) : int8;
    (@repr U8 220) : int8;
    (@repr U8 34) : int8;
    (@repr U8 42) : int8;
    (@repr U8 144) : int8;
    (@repr U8 136) : int8;
    (@repr U8 70) : int8;
    (@repr U8 238) : int8;
    (@repr U8 184) : int8;
    (@repr U8 20) : int8;
    (@repr U8 222) : int8;
    (@repr U8 94) : int8;
    (@repr U8 11) : int8;
    (@repr U8 219) : int8;
    (@repr U8 224) : int8;
    (@repr U8 50) : int8;
    (@repr U8 58) : int8;
    (@repr U8 10) : int8;
    (@repr U8 73) : int8;
    (@repr U8 6) : int8;
    (@repr U8 36) : int8;
    (@repr U8 92) : int8;
    (@repr U8 194) : int8;
    (@repr U8 211) : int8;
    (@repr U8 172) : int8;
    (@repr U8 98) : int8;
    (@repr U8 145) : int8;
    (@repr U8 149) : int8;
    (@repr U8 228) : int8;
    (@repr U8 121) : int8;
    (@repr U8 231) : int8;
    (@repr U8 200) : int8;
    (@repr U8 55) : int8;
    (@repr U8 109) : int8;
    (@repr U8 141) : int8;
    (@repr U8 213) : int8;
    (@repr U8 78) : int8;
    (@repr U8 169) : int8;
    (@repr U8 108) : int8;
    (@repr U8 86) : int8;
    (@repr U8 244) : int8;
    (@repr U8 234) : int8;
    (@repr U8 101) : int8;
    (@repr U8 122) : int8;
    (@repr U8 174) : int8;
    (@repr U8 8) : int8;
    (@repr U8 186) : int8;
    (@repr U8 120) : int8;
    (@repr U8 37) : int8;
    (@repr U8 46) : int8;
    (@repr U8 28) : int8;
    (@repr U8 166) : int8;
    (@repr U8 180) : int8;
    (@repr U8 198) : int8;
    (@repr U8 232) : int8;
    (@repr U8 221) : int8;
    (@repr U8 116) : int8;
    (@repr U8 31) : int8;
    (@repr U8 75) : int8;
    (@repr U8 189) : int8;
    (@repr U8 139) : int8;
    (@repr U8 138) : int8;
    (@repr U8 112) : int8;
    (@repr U8 62) : int8;
    (@repr U8 181) : int8;
    (@repr U8 102) : int8;
    (@repr U8 72) : int8;
    (@repr U8 3) : int8;
    (@repr U8 246) : int8;
    (@repr U8 14) : int8;
    (@repr U8 97) : int8;
    (@repr U8 53) : int8;
    (@repr U8 87) : int8;
    (@repr U8 185) : int8;
    (@repr U8 134) : int8;
    (@repr U8 193) : int8;
    (@repr U8 29) : int8;
    (@repr U8 158) : int8;
    (@repr U8 225) : int8;
    (@repr U8 248) : int8;
    (@repr U8 152) : int8;
    (@repr U8 17) : int8;
    (@repr U8 105) : int8;
    (@repr U8 217) : int8;
    (@repr U8 142) : int8;
    (@repr U8 148) : int8;
    (@repr U8 155) : int8;
    (@repr U8 30) : int8;
    (@repr U8 135) : int8;
    (@repr U8 233) : int8;
    (@repr U8 206) : int8;
    (@repr U8 85) : int8;
    (@repr U8 40) : int8;
    (@repr U8 223) : int8;
    (@repr U8 140) : int8;
    (@repr U8 161) : int8;
    (@repr U8 137) : int8;
    (@repr U8 13) : int8;
    (@repr U8 191) : int8;
    (@repr U8 230) : int8;
    (@repr U8 66) : int8;
    (@repr U8 104) : int8;
    (@repr U8 65) : int8;
    (@repr U8 153) : int8;
    (@repr U8 45) : int8;
    (@repr U8 15) : int8;
    (@repr U8 176) : int8;
    (@repr U8 84) : int8;
    (@repr U8 187) : int8;
    (@repr U8 22) : int8
  ].

Definition rcon_v : r_con_t :=
  array_from_list uint8 [
    (secret (@repr U8 141)) : uint8;
    (secret (@repr U8 1)) : uint8;
    (secret (@repr U8 2)) : uint8;
    (secret (@repr U8 4)) : uint8;
    (secret (@repr U8 8)) : uint8;
    (secret (@repr U8 16)) : uint8;
    (secret (@repr U8 32)) : uint8;
    (secret (@repr U8 64)) : uint8;
    (secret (@repr U8 128)) : uint8;
    (secret (@repr U8 27)) : uint8;
    (secret (@repr U8 54)) : uint8;
    (secret (@repr U8 108)) : uint8;
    (secret (@repr U8 216)) : uint8;
    (secret (@repr U8 171)) : uint8;
    (secret (@repr U8 77)) : uint8
  ].


Notation "'vpshufd_inp'" :=(
  int128 '× uint_size : choice_type) (in custom pack_type at level 2).
Notation "'vpshufd_inp'" :=(int128 '× uint_size : ChoiceEquality) (at level 2).
Notation "'vpshufd_out'" :=(
  int128 : choice_type) (in custom pack_type at level 2).
Notation "'vpshufd_out'" :=(int128 : ChoiceEquality) (at level 2).
Definition VPSHUFD : nat :=
  2207.
Program Definition vpshufd (s_2201 : int128) (o_2202 : uint_size)
  : both (fset.fset0) [interface] (int128) :=
  ((letb d1_2203 : int32 :=
        (fun x => lift_to_both0 (repr (unsigned x)))((
            lift_to_both0 s_2201) shift_right ((lift_to_both0 (usize 32)) .* ((
                lift_to_both0 o_2202) %% (lift_to_both0 (usize 4))))) in
      letb d2_2204 : int32 :=
        (fun x => lift_to_both0 (repr (unsigned x)))((
            lift_to_both0 s_2201) shift_right (((lift_to_both0 (usize 32)) .* ((
                  lift_to_both0 o_2202) usize_shift_right (lift_to_both0 (
                    usize 2)))) %% (lift_to_both0 (usize 4)))) in
      letb d3_2205 : int32 :=
        (fun x => lift_to_both0 (repr (unsigned x)))((
            lift_to_both0 s_2201) shift_right (((lift_to_both0 (usize 32)) .* ((
                  lift_to_both0 o_2202) usize_shift_right (lift_to_both0 (
                    usize 4)))) %% (lift_to_both0 (usize 4)))) in
      letb d4_2206 : int32 :=
        (fun x => lift_to_both0 (repr (unsigned x)))((
            lift_to_both0 s_2201) shift_right (((lift_to_both0 (usize 32)) .* ((
                  lift_to_both0 o_2202) usize_shift_right (lift_to_both0 (
                    usize 6)))) %% (lift_to_both0 (usize 4)))) in
      lift_scope (H_loc_incl := _) (H_opsig_incl := _) ((((
              (fun x => lift_to_both0 (repr (unsigned x)))(
                lift_to_both0 d1_2203)) .| ((
                (fun x => lift_to_both0 (repr (unsigned x)))(
                  lift_to_both0 d2_2204)) shift_left (lift_to_both0 (
                  usize 32)))) .| ((
              (fun x => lift_to_both0 (repr (unsigned x)))(
                lift_to_both0 d3_2205)) shift_left (lift_to_both0 (
                usize 64)))) .| (((fun x => lift_to_both0 (repr (unsigned x)))(
              lift_to_both0 d4_2206)) shift_left (lift_to_both0 (usize 96))))
      ) : both (fset.fset0) [interface] (int128)).
Fail Next Obligation.


Notation "'vshufps_inp'" :=(
  int128 '× int128 '× uint_size : choice_type) (in custom pack_type at level 2).
Notation "'vshufps_inp'" :=(
  int128 '× int128 '× uint_size : ChoiceEquality) (at level 2).
Notation "'vshufps_out'" :=(
  int128 : choice_type) (in custom pack_type at level 2).
Notation "'vshufps_out'" :=(int128 : ChoiceEquality) (at level 2).
Definition VSHUFPS : nat :=
  2215.
Program Definition vshufps (s1_2208 : int128) (s2_2212 : int128) (
    o_2209 : uint_size)
  : both (fset.fset0) [interface] (int128) :=
  ((letb d1_2210 : int128 :=
        (lift_to_both0 s1_2208) shift_right ((lift_to_both0 (usize 32)) .* ((
              lift_to_both0 o_2209) %% (lift_to_both0 (usize 4)))) in
      letb d2_2211 : int128 :=
        (lift_to_both0 s1_2208) shift_right ((lift_to_both0 (usize 32)) .* (((
                lift_to_both0 o_2209) usize_shift_right (lift_to_both0 (
                  usize 2))) %% (lift_to_both0 (usize 4)))) in
      letb d3_2213 : int128 :=
        (lift_to_both0 s2_2212) shift_right ((lift_to_both0 (usize 32)) .* (((
                lift_to_both0 o_2209) usize_shift_right (lift_to_both0 (
                  usize 4))) %% (lift_to_both0 (usize 4)))) in
      letb d4_2214 : int128 :=
        (lift_to_both0 s2_2212) shift_right ((lift_to_both0 (usize 32)) .* (((
                lift_to_both0 o_2209) usize_shift_right (lift_to_both0 (
                  usize 6))) %% (lift_to_both0 (usize 4)))) in
      lift_scope (H_loc_incl := _) (H_opsig_incl := _) ((((
              lift_to_both0 d1_2210) .| ((lift_to_both0 d1_2210) shift_left (
                lift_to_both0 (usize 32)))) .| ((
              lift_to_both0 d2_2211) shift_left (lift_to_both0 (
                usize 64)))) .| ((lift_to_both0 d2_2211) shift_left (
            lift_to_both0 (usize 96))))
      ) : both (fset.fset0) [interface] (int128)).
Fail Next Obligation.


Notation "'key_combine_inp'" :=(
  int128 '× int128 '× int128 : choice_type) (in custom pack_type at level 2).
Notation "'key_combine_inp'" :=(
  int128 '× int128 '× int128 : ChoiceEquality) (at level 2).
Notation "'key_combine_out'" :=((int128 '× int128
  ) : choice_type) (in custom pack_type at level 2).
Notation "'key_combine_out'" :=((int128 '× int128
  ) : ChoiceEquality) (at level 2).
Definition KEY_COMBINE : nat :=
  2225.
Program Definition key_combine (rkey_2219 : int128) (temp1_2216 : int128) (
    temp2_2218 : int128)
  : both (fset.fset0) [interface] ((int128 '× int128)) :=
  ((letb temp1_2217 : int128 :=
        vpshufd (lift_to_both0 temp1_2216) (lift_to_both0 (usize 255)) in
      letb temp2_2220 : int128 :=
        vshufps (lift_to_both0 temp2_2218) (lift_to_both0 rkey_2219) (
          lift_to_both0 (usize 4)) in
      letb rkey_2221 : int128 :=
        (lift_to_both0 rkey_2219) .^ (lift_to_both0 temp2_2220) in
      letb temp2_2222 : int128 :=
        vshufps (lift_to_both0 temp2_2220) (lift_to_both0 rkey_2221) (
          lift_to_both0 (usize 50)) in
      letb rkey_2223 : int128 :=
        (lift_to_both0 rkey_2221) .^ (lift_to_both0 temp2_2222) in
      letb rkey_2224 : int128 :=
        (lift_to_both0 rkey_2223) .^ (lift_to_both0 temp1_2217) in
      lift_scope (H_loc_incl := _) (H_opsig_incl := _) (prod_b(
          lift_to_both0 rkey_2224,
          lift_to_both0 temp2_2222
        ))
      ) : both (fset.fset0) [interface] ((int128 '× int128))).
Fail Next Obligation.

Definition res_2226_loc : ChoiceEqualityLocation :=
  (u32_word_t ; 2227%nat).
Notation "'subword_inp'" :=(
  int32 : choice_type) (in custom pack_type at level 2).
Notation "'subword_inp'" :=(int32 : ChoiceEquality) (at level 2).
Notation "'subword_out'" :=(
  int32 : choice_type) (in custom pack_type at level 2).
Notation "'subword_out'" :=(int32 : ChoiceEquality) (at level 2).
Definition SUBWORD : nat :=
  2231.
Program Definition subword (v_2228 : int32)
  : both (CEfset ([res_2226_loc])) [interface] (int32) :=
  ((letb vs_2229 : u32_word_t := u32_to_le_bytes (lift_to_both0 v_2228) in
      letbm res_2226 : u32_word_t loc( res_2226_loc ) :=
        array_new_ (default : int8) (4) in
      letb res_2226 :=
        foldi_both' (lift_to_both0 (usize 0)) (lift_to_both0 (
              usize 32)) res_2226 (L := (CEfset ([res_2226_loc]))) (
            I := [interface]) (fun i_2230 res_2226 =>
            letb res_2226 : u32_word_t :=
              array_upd res_2226 (lift_to_both0 i_2230) (is_pure (array_index (
                    sbox_v) (array_index (vs_2229) (lift_to_both0 i_2230)))) in
            lift_scope (H_loc_incl := _) (H_opsig_incl := _) (
              lift_to_both0 res_2226)
            ) in
      lift_scope (H_loc_incl := _) (H_opsig_incl := _) (u32_from_le_bytes (
          lift_to_both0 res_2226))
      ) : both (CEfset ([res_2226_loc])) [interface] (int32)).
Fail Next Obligation.


Notation "'ror_inp'" :=(
  int32 '× uint_size : choice_type) (in custom pack_type at level 2).
Notation "'ror_inp'" :=(int32 '× uint_size : ChoiceEquality) (at level 2).
Notation "'ror_out'" :=(int32 : choice_type) (in custom pack_type at level 2).
Notation "'ror_out'" :=(int32 : ChoiceEquality) (at level 2).
Definition ROR : nat :=
  2234.
Program Definition ror (v_2232 : int32) (i_2233 : uint_size)
  : both (fset.fset0) [interface] (int32) :=
  ((lift_scope (H_loc_incl := _) (H_opsig_incl := _) (((
            lift_to_both0 v_2232) shift_right (lift_to_both0 i_2233)) .| ((
            lift_to_both0 v_2232) shift_left ((lift_to_both0 (usize 32)) .- (
              lift_to_both0 i_2233))))
      ) : both (fset.fset0) [interface] (int32)).
Fail Next Obligation.


Notation "'aeskeygenassist_inp'" :=(
  int128 '× int8 : choice_type) (in custom pack_type at level 2).
Notation "'aeskeygenassist_inp'" :=(
  int128 '× int8 : ChoiceEquality) (at level 2).
Notation "'aeskeygenassist_out'" :=(
  int128 : choice_type) (in custom pack_type at level 2).
Notation "'aeskeygenassist_out'" :=(int128 : ChoiceEquality) (at level 2).
Definition AESKEYGENASSIST : nat :=
  2243.
Program Definition aeskeygenassist (v1_2235 : int128) (v2_2239 : int8)
  : both (CEfset ([res_2226_loc])) [interface] (int128) :=
  ((letb x1_2236 : int128 :=
        ((lift_to_both0 v1_2235) shift_right (lift_to_both0 (usize 32))) .% ((
            lift_to_both0 (@repr U128 1)) shift_left (lift_to_both0 (
              usize 32))) in
      letb x3_2237 : int128 :=
        ((lift_to_both0 v1_2235) shift_right (lift_to_both0 (usize 96))) .% ((
            lift_to_both0 (@repr U128 1)) shift_left (lift_to_both0 (
              usize 32))) in
      letb y0_2238 : int32 :=
        subword ((fun x => lift_to_both0 (repr (unsigned x)))(
            lift_to_both0 x1_2236)) in
      letb y1_2240 : int32 :=
        (ror (subword ((fun x => lift_to_both0 (repr (unsigned x)))(
                lift_to_both0 x1_2236))) (lift_to_both0 (usize 1))) .^ (
          (fun x => lift_to_both0 (repr (unsigned x)))(
            lift_to_both0 v2_2239)) in
      letb y2_2241 : int32 :=
        subword ((fun x => lift_to_both0 (repr (unsigned x)))(
            lift_to_both0 x3_2237)) in
      letb y3_2242 : int32 :=
        (ror (subword ((fun x => lift_to_both0 (repr (unsigned x)))(
                lift_to_both0 x3_2237))) (lift_to_both0 (usize 1))) .^ (
          (fun x => lift_to_both0 (repr (unsigned x)))(
            lift_to_both0 v2_2239)) in
      lift_scope (H_loc_incl := _) (H_opsig_incl := _) ((((
              (fun x => lift_to_both0 (repr (unsigned x)))(
                lift_to_both0 y0_2238)) .| ((
                (fun x => lift_to_both0 (repr (unsigned x)))(
                  lift_to_both0 y1_2240)) shift_left (lift_to_both0 (
                  usize 32)))) .| ((
              (fun x => lift_to_both0 (repr (unsigned x)))(
                lift_to_both0 y2_2241)) shift_left (lift_to_both0 (
                usize 64)))) .| (((fun x => lift_to_both0 (repr (unsigned x)))(
              lift_to_both0 y3_2242)) shift_left (lift_to_both0 (usize 96))))
      ) : both (CEfset ([res_2226_loc])) [interface] (int128)).
Fail Next Obligation.


Notation "'key_expand_inp'" :=(
  int8 '× int128 '× int128 : choice_type) (in custom pack_type at level 2).
Notation "'key_expand_inp'" :=(
  int8 '× int128 '× int128 : ChoiceEquality) (at level 2).
Notation "'key_expand_out'" :=((int128 '× int128
  ) : choice_type) (in custom pack_type at level 2).
Notation "'key_expand_out'" :=((int128 '× int128
  ) : ChoiceEquality) (at level 2).
Definition KEY_EXPAND : nat :=
  2250.
Program Definition key_expand (rcon_2245 : int8) (rkey_2244 : int128) (
    temp2_2247 : int128)
  : both (CEfset ([res_2226_loc])) [interface] ((int128 '× int128)) :=
  ((letb temp1_2246 : int128 :=
        aeskeygenassist (lift_to_both0 rkey_2244) (lift_to_both0 rcon_2245) in
      letb '(rkey_2248, temp2_2249) : (int128 '× int128) :=
        key_combine (lift_to_both0 rkey_2244) (lift_to_both0 temp1_2246) (
          lift_to_both0 temp2_2247) in
      lift_scope (H_loc_incl := _) (H_opsig_incl := _) (prod_b(
          lift_to_both0 rkey_2248,
          lift_to_both0 temp2_2249
        ))
      ) : both (CEfset ([res_2226_loc])) [interface] ((int128 '× int128))).
Fail Next Obligation.
