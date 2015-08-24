X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Monday" "24" "August" "2015" "06:09:10" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20150824130910.GA7139@localhost.localdomain>" "29" "[oss-security] CVE-2015-5224 login-utils: file name collision due to incorrect mkstemp use" nil nil nil "8" "2015082413:09:10" "[oss-security] CVE-2015-5224 login-utils: file name collision due to incorrect mkstemp use" (number mark "        qsa@qualys.c Aug 24   29/1202  " thread-indent "\"[oss-security] CVE-2015-5224 login-utils: file name collision due to incorrect mkstemp use\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5336 invoked by uid 550); 24 Aug 2015 14:10:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5263 invoked from network); 24 Aug 2015 14:10:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition;
        bh=xl3ytWig0M3y6lvb7BIeGLGaxrCieXDiLEW6bgAluBQ=;
        b=mvYZSAbeQf+BjDN28atu6sZybRNIAxr7Hn9xV5vhOHB6UMcrmNzHiH84sw7iQZWVpQ
         n9EBykaOUDsJdllfIrqghYxPTvATEUyqppHMIDecIOVD4TOXwtfq1fXFQhvM+icJ7vfL
         /03DhScTrXnuve/xUsa2164CnYHaZ6EY361hiZUPo0gpmURiADS5bamailaOwmRax78O
         7wedQYpd9mVvvKGEg3dmBhYHs1bbd4OgIHpQlAadmT9rn9639Cpo5nvvY7WTNryyVTzM
         2MkAtxRgKzG88mBqfMLda1SXabiB8XPyaTGWxV8OLiAS5pN6tE4Q19FASIodfh8cPhmc
         G8ng==
X-Gm-Message-State: ALoCoQlRPQsMgnupydlbO5DWPXG65sgtpjUNiJh3I9lahx4Ja36s5UEYMSPBtUP7pYPXqffvR6Zq
X-Received: by 10.70.33.225 with SMTP id u1mr45415267pdi.155.1440425439678;
        Mon, 24 Aug 2015 07:10:39 -0700 (PDT)
Message-ID: <20150824130910.GA7139@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Date: Mon, 24 Aug 2015 06:09:10 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5224 login-utils: file name collision due to incorrect
 mkstemp use
To: oss-security@lists.openwall.com

Dear List,

A CVE-ID and a patch have just been issued for a vulnerability that we
discovered in util-linux (while investigating the libuser bugs):

CVE-2015-5224 login-utils: file name collision due to incorrect mkstemp use
https://github.com/karelzak/util-linux/commit/bde91c85bdc77975155058276f99d2e0f5eab5a9

If the chfn and chsh binaries (both setuid-root) from
util-linux/login-utils are compiled WITHOUT libuser support, they
eventually call mkostemp(localtmp, O_RDWR|O_CREAT|O_EXCL|O_CLOEXEC);
where localtmp is "/etc/%s.XXXXXX" and %s is __progname (i.e., argv[0]'s
basename).

An attacker could repeatedly execve chfn as "ld.so" until mkostemp()
creates "/etc/ld.so.preload" (after a few days, in our tests).  This
particular example doesn't actually work, because "preload" is 7 chars
and "XXXXXX" is 6 chars, but it seems there are other interesting
possibilities, like "/etc/rc.status" and "/etc/krb5.keytab".

The impact of this vulnerability is probably very limited: most Linux
distributions ship either the chfn/chsh binaries from the shadow-utils
(NOT the login-utils ones), or the login-utils ones but WITH libuser
support.

With best regards,

-- 
the Qualys Security Advisory team
