X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1787" "Monday" "22" "October" "2018" "08:17:35" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181022081735.1d940b71@computer>" "65" "[oss-security] Buffer overflow in cabextract/libmspack (Fwd: New cabextract 1.8 and libmspack 0.8 release)" "^Date:" nil nil "10" "2018102206:17:35" "[oss-security] Buffer overflow in cabextract/libmspack (Fwd: New cabextract 1.8 and libmspack 0.8 release)" (number mark "        hanno@hboeck Oct 22   65/1787  " thread-indent "\"[oss-security] Buffer overflow in cabextract/libmspack (Fwd: New cabextract 1.8 and libmspack 0.8 release)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23990 invoked by uid 550); 22 Oct 2018 06:17:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23972 invoked from network); 22 Oct 2018 06:17:28 -0000
Message-ID: <20181022081735.1d940b71@computer>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Oct 2018 08:17:35 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Buffer overflow in cabextract/libmspack (Fwd: New cabextract 1.8
 and libmspack 0.8 release)
To: oss-security@lists.openwall.com

New cabextract and libmspack fix a buffer overflow.
Notably libmspack is also used in clamav.

Forwarding the release notes here:

--------------------------

Hello all,

cabextract 1.8 has been released. It greatly improves its ability to=20
extract damaged files with the "-f" option, and the cabinfo command has=20
been rewritten.

It also fixes this bug:

* if a CAB file has a Quantum-compressed datablock with exactly 38912=20
compressed bytes, cabextract will write exactly one byte beyond its=20
input buffer.

cabextract can be downloaded from https://www.cabextract.org.uk/

SHA256 sums:

2d9b5ba24239ba6eac02bdee6f2fa208bb4d0a14c84ed81792fc35c213140f38=20
cabextract-1.8-1.i386.rpm
54138e652fa0fa39e021d66b6315994f906cda965ddb786117f28276f135664e=20
cabextract-1.8-1.src.rpm
082b8ec149babc9ae10b5d6568eb764c67e75c3cfc379b1211b88b980febebd7=20
cabextract-1.8.tar.gz

libmspack 0.8alpha has also been released.

It adds the new parameter MSCABD_PARAM_SALVAGE which permits salvaging=20
badly damaged files rather than rejecting them outright.

It fixes several bugs:

* the above 38912-byte Quantum CAB block bug
* libmspack now also rejects blank CHM filenames that are blank because=20
they have embedded null bytes, not just because they are zero-length
* chmextract now protects you from absolute/relative pathnames in CHM
  files

libmspack can be downloaded from
https://www.cabextract.org.uk/libmspack/

SHA256 sum:

0533792e9561375a5fce1bc96bbc65ec778af486e0daa3803b226da9244addaf=20
libmspack-0.8alpha.tar.gz

If you wish to patch an older version, please look at commits |8759da8,=20
||7cadd48 and ||40ef1b4 in the git repository.|

Regards
Stuart



--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
