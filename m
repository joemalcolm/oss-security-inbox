X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1911" "Tuesday" "3" "May" "2016" "18:36:50" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQe0-qg68k+Zb5XtTk9Q2z1j38akrPxbAQQu_4Qf+g3Lw@mail.gmail.com>" "48" "[oss-security] CVE request: out-of-bounds read parsing an XML in libxml2 using recover mode" nil nil nil "5" "2016050316:36:50" "[oss-security] CVE request: out-of-bounds read parsing an XML in libxml2 using recover mode" (number mark "U       gustavo.grie May  3   48/1911  " thread-indent "\"[oss-security] CVE request: out-of-bounds read parsing an XML in libxml2 using recover mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1877 invoked by uid 550); 3 May 2016 16:37:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1856 invoked from network); 3 May 2016 16:37:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=BETc7WHuvQuj/cgC89uuL6ebKMKbRsy/aQNYlD5KJ/M=;
        b=dRHN45wxCM0NIPN++D5zEkHqi3EGSzOcFD4ooyRjkg4iUUUrTX0Jpm9IcO+U+o8Gtk
         tkQgZ0mN8LZzfKqzfXRNz8PmkSDpDv7N9THB77/PsWAaBtZiHAKEfLFYtT5mD5hAA/zG
         qxitkSHMA7tgEFgAh+H1iGxb+iEBX2Qw+P0wpjBiFfpJCEYff0sWDc6ByU0KyP75cFNX
         ILxkEy04AYhIkO4f45bX0w1LEANblCccmXWD+fyF8Guj3UKoCXQW2M6pJ24Q+M+KvzL1
         I329GB2qLwzH/oOhVGYRuupzKGZxyB1NWNY4x5C9uAATpm+ikgTLrv4M8ng1kHcRwYCW
         q6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=BETc7WHuvQuj/cgC89uuL6ebKMKbRsy/aQNYlD5KJ/M=;
        b=jdgKyoExgWnC0fB5e2a77WRXMlqq4M4M2VhLfztzUOJetM2b5Ft9n2Ysvsedj2pDpl
         c358uqOfqts5BXC0Q9EHi+/81Yo1gp3/V8RACtTuHfpe8v1AaxlglPSEK26HAC7Gb66m
         Zl//tLBNcphWYILsaC+I0b+OWIe0vW0P4wUcrn8q8kZEOKVuZBGKIBbce0pHM6UYj9RX
         bA9JJ40kUrnBZ/G0iuagBELPyT7oaXkVFkul2TtoxshSza764C8fK0pYxTtXihYNWfS3
         Q8PojYtFbgeDvy5PtukV97U/XEZolGXKFBJ+PgIzaKN13ruyxZbphWG7lX7E7SetgFsW
         1c6A==
X-Gm-Message-State: AOPr4FXhxKdoftCYWgxmpSXTXos4wg3GZk0PVQFTn8glCNCxSUDqpSKhos/NtU+7ylWlaSrZfXhm+7gfLGM+4g==
MIME-Version: 1.0
X-Received: by 10.112.141.71 with SMTP id rm7mr1735489lbb.56.1462293410483;
 Tue, 03 May 2016 09:36:50 -0700 (PDT)
Date: Tue, 3 May 2016 18:36:50 +0200
Message-ID: <CACn5sdQe0-qg68k+Zb5XtTk9Q2z1j38akrPxbAQQu_4Qf+g3Lw@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c33b1c4a17c60531f2b794
Subject: [oss-security] CVE request: out-of-bounds read parsing an XML in libxml2 using
 recover mode

--001a11c33b1c4a17c60531f2b794
Content-Type: text/plain; charset=UTF-8

 Hi,

We found an out-of-bounds read parsing a specially crafted xml in libxml2
if recover mode is used. It affects all versions.  It was discovered before
by another guy but for some reason, never reported or fixed. Since upstream
is not responding, i think it is a good time to publish some details here.

$ xmllint -recover ohizsmaase.xml.-6355798974422201279
...
==2994== ERROR: AddressSanitizer: heap-buffer-overflow on address
0x60040000d5d3 at pc 0x73320a bp 0x7fffffffc1e0 sp 0x7fffffffc1d8
READ of size 1 at 0x60040000d5d3 thread T0
...
0x60040000d5d3 is located 0 bytes to the right of 3-byte region
[0x60040000d5d0,0x60040000d5d3)

And backtrace is here:

...
#7  0x000000000073320a in xmlBufAttrSerializeTxtContent
(buf=0x600c0000a7c0, doc=0x601e0000ef50, attr=0x601000007ea0,
string=0x60040000d5d0 <incomplete sequence \341>) at xmlsave.c:2057
#8  0x000000000072af0b in xmlAttrSerializeContent (buf=0x600c0000a820,
attr=0x601000007ea0) at xmlsave.c:443
#9  0x000000000072c36c in xmlAttrDumpOutput (ctxt=0x601c0000ca60,
cur=0x601000007ea0) at xmlsave.c:780
#10 0x000000000072c3b2 in xmlAttrListDumpOutput (ctxt=0x601c0000ca60,
cur=0x601000007ea0) at xmlsave.c:797
#11 0x000000000072dc22 in xmlNodeDumpOutputInternal (ctxt=0x601c0000ca60,
cur=0x60180000b440) at xmlsave.c:1055
#12 0x000000000072ef8a in xmlDocContentDumpOutput (ctxt=0x601c0000ca60,
cur=0x601e0000ef50) at xmlsave.c:1234
#13 0x000000000073246c in xmlSaveDoc (ctxt=0x601c0000ca60,
doc=0x601e0000ef50) at xmlsave.c:1936
#14 0x000000000040a238 in parseAndPrintFile (filename=0x7fffffffe759
"ohizsmaase.xml.-6355798974422201279", rectxt=0x0) at xmllint.c:2689
#15 0x000000000040fe5e in main (argc=3, argv=0x7fffffffe4a8) at
xmllint.c:3739

A reproducer is available upon request. Please assign a CVE if necesary.

Regards,
Gustavo.

--001a11c33b1c4a17c60531f2b794--
