X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1203" "Wednesday" "17" "August" "2016" "18:03:05" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do7icu-1yBEVZm4Rb9JnUP6Oxz2Rd__B+N_xbj88KTsE=A@mail.gmail.com>" "39" "[oss-security] CVE-2016-4973 gcc: Targets using libssp for SSP are missing -D_FORTIFY_SOURCE functionality" nil nil nil "8" "2016081716:03:05" "[oss-security] CVE-2016-4973 gcc: Targets using libssp for SSP are missing -D_FORTIFY_SOURCE functionality" (number mark "U       cbuissar@red Aug 17   39/1203  " thread-indent "\"[oss-security] CVE-2016-4973 gcc: Targets using libssp for SSP are missing -D_FORTIFY_SOURCE functionality\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11639 invoked by uid 550); 17 Aug 2016 16:03:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11613 invoked from network); 17 Aug 2016 16:03:35 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=a2IOqWrv7/8yUQERkz9TxQIS0qOwb1da5U9wwxQyrhg=;
        b=BLz4M+mG0moXDUY/1NS0aJTGxCYx1xm8aXMZTNCoY7VpK4VSJwPfWvFO5iUQaRZ5kB
         155rzG0hv4uxWWtBpWspXIbwkiT9q7holGnXI9gYGcIbCWnZAWE1V5kXd0IJZwFG5SCi
         d6462dnz7Dtk5/w2x++sTMT3Agcs3bKzpCmuAR1qnAiFphBCTjL9/mdKSKIQ9ZmumZw9
         KMi74aO2GNmGhN0/CAzSPQB4Nuan8PeAm13vc9DT9L5+77UaOB6KjLcn4POeXRdYxFdS
         57z7vsM6ae2BMsuACBfLbmu4QyFfAj1wlc6ulnpehGrjdYNuVMHCA7UXg5PRJFdNaRmz
         pksA==
X-Gm-Message-State: AEkoouvmioVT7Dy4B0DKhhySv1A0nefBQZPmySvD74lgAuOaMJLpbsNM88QMTaiYaBfft5t5lP7VZJoeEYL0/moT
X-Received: by 10.66.220.194 with SMTP id py2mr74913423pac.77.1471449786066;
 Wed, 17 Aug 2016 09:03:06 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAKG8Do7icu-1yBEVZm4Rb9JnUP6Oxz2Rd__B+N_xbj88KTsE=A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b5d94fdcdbc82053a469969
Date: Wed, 17 Aug 2016 18:03:05 +0200
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-4973 gcc: Targets using libssp for SSP are missing
 -D_FORTIFY_SOURCE functionality
To: oss-security@lists.openwall.com

--047d7b5d94fdcdbc82053a469969
Content-Type: text/plain; charset=UTF-8

Hi,

This is to disclose the following CVE:

CVE-2016-4973 gcc: Targets using libssp for SSP are missing
-D_FORTIFY_SOURCE functionality

It was found that targets using gcc's libssp library for Stack Smashing
Protection (among others: Cygwin, MinGW, newlib, RTEMS; but not Glibc,
Bionic, NetBSD which provide SSP in libc), are missing the Object Size
Checking feature, even when explicitly requested with _FORTIFY_SOURCE.
Vulnerable binaries compiled against such targets do not benefit of such
protection, increasing the chances of success of a buffer overflow attack.

There is currently no upstream patch. Discussions on the subject & patch
proposal can be found in the Red Hat corresponding bugzilla :
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-4973

Impact: Low

CVSSv3 scoring : 3.6 CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:L/A:N

Note regarding the scoring : only the GCC flaw was taken into account, not
its potential combination with a flaw in an affected binary.

The flaw was reported by Yaakov Selkowitz (Red Hat)

Best regards,

Cedric

-- 
Cedric Buissart,
Product Security

--047d7b5d94fdcdbc82053a469969--
