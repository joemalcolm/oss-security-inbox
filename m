X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1258" "Tuesday" "11" "October" "2016" "15:56:11" "+0200" "Ludovic =?utf-8?B?Q291cnTDqHM=?=" "ludo@gnu.org" "<87pon7t2f8.fsf@gnu.org>" "29" "[oss-security] CVE request: =?utf-8?B?R05VwqBHdWlsZQ==?= <= 2.0.12: REPL server vulnerable to HTTP inter-protocol attacks" nil nil nil "10" "2016101113:56:11" "[oss-security] CVE request: =?utf-8?B?R05VwqBHdWlsZQ==?= <= 2.0.12: REPL server vulnerable to HTTP inter-protocol attacks" (number mark "U       ludo@gnu.org Oct 11   29/1258  " thread-indent "\"[oss-security] CVE request: =?utf-8?B?R05VwqBHdWlsZQ==?= <= 2.0.12: REPL server vulnerable to HTTP inter-protocol attacks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28519 invoked by uid 550); 11 Oct 2016 20:52:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19708 invoked from network); 11 Oct 2016 13:57:04 -0000
From: ludo@gnu.org (Ludovic =?utf-8?Q?Court=C3=A8s?=)
To: oss-security@lists.openwall.com
Cc: Christopher Allan Webber <cwebber@dustycloud.org>, Andy Wingo <wingo@pobox.com>, Mark H Weaver <mhw@netris.org>
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: 20 =?utf-8?Q?Vend=C3=A9miaire?= an 225 de la
 =?utf-8?Q?R=C3=A9volution?=
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-unknown-linux-gnu
Date: Tue, 11 Oct 2016 15:56:11 +0200
Message-ID: <87pon7t2f8.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-detected-operating-system: by eggs.gnu.org: GNU/Linux 2.2.x-3.x [generic]
X-Received-From: 2001:4830:134:3::e
Subject: [oss-security] CVE request: =?utf-8?Q?GNU=C2=A0Guile?= <= 2.0.12: REPL server
 vulnerable to HTTP inter-protocol attacks

GNU=C2=A0Guile, an implementation of the Scheme language, provides a =E2=80=
=9CREPL
server=E2=80=9D which is a command prompt that developers can connect to for
live coding and debugging purposes.  The REPL server is started by the
=E2=80=98--listen=E2=80=99 command-line option or equivalent API.

Christopher Allan Webber reported that the REPL server is vulnerable to
the HTTP inter-protocol attack as described at
<https://en.wikipedia.org/wiki/Inter-protocol_exploitation>, notably the
HTML form protocol attack described at
<https://www.jochentopf.com/hfpa/hfpa.pdf>.

This constitutes a remote code execution vulnerability for developers
running a REPL server that listens on a loopback device or private
network.  Applications that do not run a REPL server, as is usually the
case, are unaffected.

Developers can work around this vulnerability by binding the REPL server
to a Unix-domain socket, for instance by running:

  guile --listen=3D/some/file

A modification to the REPL server that detects attempts to exploit this
vulnerability is available upstream and will be part of Guile=C2=A02.0.13, =
to
be released shortly.

Patch: http://git.savannah.gnu.org/cgit/guile.git/commit/?h=3Dstable-2.0&id=
=3D08c021916dbd3a235a9f9cc33df4c418c0724e03
