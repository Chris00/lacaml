(* File: lacaml_common.mli

   Copyright (C) 2003-2005

     Markus Mottl
     email: markus.mottl@gmail.com
     WWW: http://www.ocaml.info

     Liam Stewart
     email: liam@cs.toronto.edu
     WWW: http://www.cs.toronto.edu/~liam

     Christophe Troestler
     email: Christophe.Troestler@umh.ac.be
     WWW: http://math.umh.ac.be/an/

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with this library; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

(* $Id: lacaml_common.mli,v 1.9 2006/01/18 15:03:40 mottl Exp $ *)

open Bigarray

type norm2 = [ `O | `I ]
(** Type of 1-norm ([`O]) and infinity norm ([`I]) *)

type norm4 = [ norm2 | `M | `F ]
(** Type of 1-norm ([`O]), infinity norm ([`I]) and the Frobenius norm ([`F]).
    [`M] is the maximum of the absolute values (not a true matrix norm). *)

type svd_job = [ `A | `S | `O | `N ]
(** SVD computation flags *)

exception InternalError of string
(** [InternalError msg] gets raised when BLAS or LAPACK exhibit undefined
    behaviour. *)

type int_vec = (int, int_elt, fortran_layout) Array1.t
(** Type of integer vectors. *)

val create_int_vec : int -> int_vec
(** [create_int_vec n] @return an int-vector with [n] rows. *)

val mat_of_vec : ('a, 'b, 'c) Array1.t -> ('a, 'b, 'c) Array2.t
(** [mat_of_vec a] converts the vector [a] into a matrix with
    [Array1.dim a] rows and 1 column.  The data is shared between the
    two matrices.  *)
