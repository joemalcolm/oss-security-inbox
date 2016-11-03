X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["818" "Thursday" "3" "November" "2016" "12:44:32" "+0800" "Shawn" "citypw@gmail.com" "<CABniQZMPWz9XaVm4fjsYC8SZXksNm-63-gzeRkz8Eertv3j-SQ@mail.gmail.com>" "34" "[oss-security] kernel: fix minor infoleak in get_user_ex()" nil nil nil "11" "2016110304:44:32" "[oss-security] kernel: fix minor infoleak in get_user_ex()" (number mark "U       citypw@gmail Nov  3   34/818   " thread-indent "\"[oss-security] kernel: fix minor infoleak in get_user_ex()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7663 invoked by uid 550); 3 Nov 2016 07:31:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3822 invoked from network); 3 Nov 2016 04:44:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=CzivndDAoq4mf/0iDcEqmuMxnCKMP9mcZQGtqcvBOIY=;
        b=zD05nPXvPUU8OmfTWsFnN4f0NWVKmQeqv2oj4Lt/CnrIQsvu2Ma/HD+67NfPv6ZpFk
         d8O2A3jvu20msdXuCKOFcH+fZXoea/QcXTdtjz8F7AoIsdSLr3LEI1uP1WZq1ZSxaYvs
         Kk7AlvRnGtbd1zR777ug5UJGz0z9AWhUf4z/r8pzaEg50o+BaQW5mdcS7nPCSUqVU8Tl
         /qqjjefgtBTbIxw7aPQDkbd/vUP9p/lBLYPomqrh0pQMcGm3n52IUDasLgNFq+WfmwsS
         E91hR4X5fixlZ1YifMVazxzDI6V+BeGDNtf4+beieHF0YUvxT2keiWLFK0kEty/pR+uK
         xaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CzivndDAoq4mf/0iDcEqmuMxnCKMP9mcZQGtqcvBOIY=;
        b=KNdYp2SyIUQuGureUNjnunK5N/HCXt2iyWcWLBNLswcuOgxA2g44RoG76tT26BSJ76
         R2REFOjun4vL+u5QtNyLi4CC/X69s1pbRKWD1MY1QH7qIVV0Jc+AG06Trz3NOUsRDdGp
         /5GGQtOw7Ku0OMsmrrUG/+FPNFTzzHL1FD5+EFxnALcquVTpU3tVulSRKWBGzsfp5IuA
         wGl7c1Tl+O8/7Ckh+lpt9nt+9+jHYJ1j/TcxM3b62CJQh0jKyxicIs7zq2ZGQXKS8bC1
         s3mgdOkeGrMqu04TpwBx3a9C82NlUhGf1kn17v4jusmSkanGr7MfnWiCFkcB/4n092HD
         0XYw==
X-Gm-Message-State: ABUngvdSdXWbMXswhq1COFYPIPpfaSyN2UWCUIFqudNAag89dy8EVsGak4/UrdxWD9deO2JtOdAeeJHEYq4kTA==
X-Received: by 10.25.217.82 with SMTP id q79mr3406519lfg.13.1478148273379;
 Wed, 02 Nov 2016 21:44:33 -0700 (PDT)
MIME-Version: 1.0
From: Shawn <citypw@gmail.com>
Date: Thu, 3 Nov 2016 12:44:32 +0800
Message-ID: <CABniQZMPWz9XaVm4fjsYC8SZXksNm-63-gzeRkz8Eertv3j-SQ@mail.gmail.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] kernel: fix minor infoleak in get_user_ex()

Hi guys,

I suppose this bug should get a CVE number.

Info:
get_user_ex(x, ptr) should zero x on failure. It's not a lot of a leak
(at most we are leaking uninitialized 64bit value off the kernel
stack, and in a fairly constrained situation, at that), but the fix is
trivial, so... Cc: stable@vger.kernel.org Signed-off-by: Al Viro
<viro@zeniv.linux.org.uk> [ This sat in different branch from the
uaccess fixes since mid-August ] Signed-off-by: Linus Torvalds
<torvalds@linux-foundation.org>

Upstream fix:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1c109fabbd51863475cd12ac206bdd249aee35af

Impact:

According to Spender:

https://lwn.net/Articles/705264/

Mitigation:

PaX/Grsecurity's KERNEXEC/UDEREF
SMEP

-- 
GNU powered it...
GPL protect it...
God blessing it...

regards
Shawn
