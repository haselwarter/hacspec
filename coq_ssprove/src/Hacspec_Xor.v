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



Notation "'xor_inp'" :=(
  int64 '× int64 : choice_type) (in custom pack_type at level 2).
Notation "'xor_inp'" :=(int64 '× int64 : ChoiceEquality) (at level 2).
Notation "'xor_out'" :=(int64 : choice_type) (in custom pack_type at level 2).
Notation "'xor_out'" :=(int64 : ChoiceEquality) (at level 2).
Definition XOR : nat :=
  2.
Program Definition xor (x_0 : int64) (y_1 : int64)
  : both (fset.fset0) [interface] (int64) :=
  ((lift_scope (H_loc_incl := _) (H_opsig_incl := _) ((lift_to_both0 x_0) .^ (
          lift_to_both0 y_1))
      ) : both (fset.fset0) [interface] (int64)).
Fail Next Obligation.

