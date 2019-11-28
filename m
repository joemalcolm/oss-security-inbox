X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Thursday" "28" "November" "2019" "20:46:55" "+0100" "Raphael Geissert" "geissert@debian.org" nil "38" nil "^Cc:" nil nil "11" nil nil (number mark "        geissert@deb Nov 28   38/1413  " thread-indent "\"[oss-security] Multiple issues in lemonldap-ng\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple issues in lemonldap-ng" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3143 invoked by uid 550); 28 Nov 2019 19:47:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3108 invoked from network); 28 Nov 2019 19:47:18 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=cYB6/RQJdmCE0087pOOwJFnkTe9RuzkEPmW/JuO8nMc=;
        b=rh8RXbKSISAfwdpwNPAHbl+rePgLGb1nvH0/jU/LBJj+lM3xWbaBnGvyLXXe9wJ89k
         AtfdBJ2xT7EOIxyTwkJ+9XPguZ6N5mMl7yoxbehyB9hvcuIAnBevLIomXEt4xEi0iMr+
         NrnX086CYiJifloAZ4xRRRI0NqI+MYnoXj0Hie4DpG3fYnrUnsdOZ50gjnEktHDt9ZvN
         RJv8rVm4OtkEUhxVfjubZwiRTaPFyadl8qQDtyJKTxQyCBFk+1gXBLIJBV9dQtXQrdte
         kSUQda7pntMAfS2rHV/dsXRlgTJuoPVsAA2U73z7ghbcAzbtvyd8nAU6HmYCjDrrQi2V
         9Esg==
X-Gm-Message-State: APjAAAVAGGfSiNZmLnU4Bo+g7KdvCy/tc4JtH6rfInP//ZCiDTKHyTbY
	g3lwUKcfIXRn6dJxxk5OsDpBY6qdLSHpdEgAmu1TgdCbHYs931sX
X-Google-Smtp-Source: APXvYqxxcYSXFuIVDgOicZIWDNkOGjUH4qAt8VFLcvHhOeYpQjcLZMlR/pGim0ypQih+kwanoDP5HrDfcaVeFxTb8HM=
X-Received: by 2002:ab0:2a4f:: with SMTP id p15mr7072548uar.70.1574970426634;
 Thu, 28 Nov 2019 11:47:06 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAA7hUgF2iQ+danfsTDqjY2weCXGay71363bbgBWbb_6kyiBNgg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: yadd@debian.org
Date: Thu, 28 Nov 2019 20:46:55 +0100
From: Raphael Geissert <geissert@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple issues in lemonldap-ng
To: Open Source Security <oss-security@lists.openwall.com>

Hi,

Looking at lemonldap-ng I noticed that it uses low-level crypto
primitives, not without some issues.
Notably:

* it uses AES in CBC mode directly without setting an IV to encrypt
data that is stored client-side
* that same data is not signed, only encrypted

Despite my strong recommendation to use a library that abstracts some
of the fine details, like NaCl, libsodium, etc, upstream has responded
to the issue by issuing version 2.0.5 with the following changes[1]:

* an IV is set but it might be generated with rand() and time() in
case of urandom being unavailable or in case the code asks for a "low"
mode
* using sha256 as a checksum (literally just sha256 of the data, not
HMAC-SHA256 despite the code using the name hmac in some places), as
in: message = ENCRYPT(SHA256(data) || data, key, iv). Upstream calling
this MtE and using this approach instead of my recommendation of using
EtM

Some "minor" issues were also fixed, like the use of a prng instead of a csprng.

Tracked with issue #1823 [2], the main issue is still open to possibly
use an abstraction library in a future version.

I've neglected making a public report of this but I hope that it is
going to help things move forward.

[1]https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/merge_requests/81/diffs
[2]https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/issues/1823

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org
