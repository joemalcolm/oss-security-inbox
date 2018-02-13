X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/02/13/2
Message-ID: <20180213120136.04d1d703@pc1>
Date: Tue, 13 Feb 2018 12:01:36 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: qpdf: multiple vulnerabilities before 7.0.0
Content-Type: text/plain; charset=utf-8

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
https://blog.fuzzing-project.org/59-Six-year-old-PDF-loop-bug-affects-most-major-implementations.html


A quick check with the latst 7.1.1 with libfuzzer and asan revealed no
further bugs.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
