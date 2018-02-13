X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["953" "Tuesday" "13" "February" "2018" "12:01:36" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180213120136.04d1d703@pc1>" "37" "[oss-security] qpdf: multiple vulnerabilities before 7.0.0" nil nil nil "2" "2018021311:01:36" "[oss-security] qpdf: multiple vulnerabilities before 7.0.0" (number mark "U       hanno@hboeck Feb 13   37/953   " thread-indent "\"[oss-security] qpdf: multiple vulnerabilities before 7.0.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19751 invoked by uid 550); 13 Feb 2018 11:01:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19701 invoked from network); 13 Feb 2018 11:01:51 -0000
Date: Tue, 13 Feb 2018 12:01:36 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180213120136.04d1d703@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] qpdf: multiple vulnerabilities before 7.0.0

Hi,

This is a bit older, but I'll share it anyway. A while ago I tested
qpdf with libfuzzer, all those issues have been fixed in 7.0.0 (latest
is 7.1.1).

Stack overflow due to endless recursion in
QPDFTokenizer::resolveLiteral()
https://github.com/qpdf/qpdf/issues/51

Another stack overflow / endless recursion in
QPDFWriter::enqueueObject()
https://github.com/qpdf/qpdf/issues/143

Stack out of bounds read in iterate_rc4()
https://github.com/qpdf/qpdf/issues/147

heap out of bounds read (large) in Pl_Buffer::write
https://github.com/qpdf/qpdf/issues/150


Hang due to a pdf xref loop:
https://github.com/qpdf/qpdf/issues/149
Background:
https://blog.fuzzing-project.org/59-Six-year-old-PDF-loop-bug-affects-most-=
major-implementations.html


A quick check with the latst 7.1.1 with libfuzzer and asan revealed no
further bugs.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
