(* File: vec_SD.mli

   Copyright (C) 2003-2005

     Markus Mottl
     email: markus.mottl@gmail.com
     WWW: http://www.ocaml.info

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

(** Vector operations *)

open Bigarray
open Lacaml_floatxx

(** {6 Creation of vectors} *)

val random :
  ?rnd_state : Random.State.t ->
  ?from : float -> ?range : float ->
  int
  -> vec
(** [random ?rnd_state ?from ?range n] @return a vector
    of size [n] initialized with random elements sampled uniformly from
    [range] starting at [from].  A random state [rnd_state] can be passed.

    @param rnd_state default = Random.get_state ()
    @param from default = -1.0
    @param range default = 2.0 *)
