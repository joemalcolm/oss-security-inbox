X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["832" "Friday" "26" "January" "2018" "20:05:03" "+0100" "Jochen Wiedmann" "jochen.wiedmann@gmail.com" "<CAF8HOZ+J3NkaywfbHuQpHxK9ZXeT4=4Vs9rOwCDiUdnt1QA1Yw@mail.gmail.com>" "26" "[oss-security] CVE-2018-1294: Apache Commons Email vulnerability information disclosure" nil nil nil "1" "2018012619:05:03" "[oss-security] CVE-2018-1294: Apache Commons Email vulnerability information disclosure" (number mark "U       jochen.wiedm Jan 26   26/832   " thread-indent "\"[oss-security] CVE-2018-1294: Apache Commons Email vulnerability information disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23654 invoked by uid 550); 26 Jan 2018 19:15:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13781 invoked from network); 26 Jan 2018 19:05:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=aYS4zBm+C8zgCbnuVYzptuUMhDE6D3JARQihYgOCDOs=;
        b=Ohz2kngp8wsbMuUQ2tJvEg1W9dhUCG7ItAlrcRpVSozpC4go8+wqiSELaAxwkPFaGT
         pyF9TqF9zkb/XY/FDcQFCPL/a7DM+R6E3RyFHMSGSPxON64Cl79QCFHBE7d1UEcH4pPg
         PMiu81AmyH4NOeGXhlmwU9AbQc7CP5AdvOLBvC7mb44Cn/6iEdrkU3bmxCHPpIy8Mknf
         XqHeon1PANC9z98JBLiWeibDBn/pPlt8F5JFuiXejZLZbepwp8QawVnUZCqnJzCWOGE9
         u3Uaa10ULfPaXCFNbth69r6q4ZHnUJaGUeOL4oLUlIsHSDP1GddIYn4Vcf838/eq6lks
         5qiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aYS4zBm+C8zgCbnuVYzptuUMhDE6D3JARQihYgOCDOs=;
        b=XC942ZnFby9oqrTh9oiD3xoQpAYPMwO+wcswRK21aTnK0YZlmB4TO/rqy289OfPC+6
         +E1DnxXvCWgE0hqB5YRSCTBj8JYxr03BFLa74m32EuCbK3CJYMyUFctOkYBKcTRRaOia
         IMwetP4WZW3NwYojnU3Lpj/K3Pg0oBjE54h1JPPxp+IZFeB6gQxtuE8YrPIQfPTCJhlz
         1zjNSr35ZLIJMsuudAUJfm85+EY2hH0mvRO+unjvDaouJpsLUKvTbYTgA9tUhg0tIvy7
         8oXUYXCnjs4DFe09rj7XYYXH7Yzjud+NdHqKS8ECPBh+RSBI7I6loiguNCYAksHVvBst
         OCiA==
X-Gm-Message-State: AKwxytd7+/jIC88b297meUeEHTEDjFP3k3mSS94Kz7KEChhksn/9BQwm
	+voegfWNcq+izdAkJ0OCn1kw0tpcVdwd6vAltA==
X-Google-Smtp-Source: AH8x227mEDRpQbyne8iws1V3b+3gC/mzO4Nft42TlUO+qPDlEyOpiPfKhHLihBbLNnxooxZdpuu1wIz73NwSXFmCz9c=
X-Received: by 10.36.44.197 with SMTP id i188mr18693885iti.102.1516993524190;
 Fri, 26 Jan 2018 11:05:24 -0800 (PST)
MIME-Version: 1.0
From: Jochen Wiedmann <jochen.wiedmann@gmail.com>
Date: Fri, 26 Jan 2018 20:05:03 +0100
Message-ID: <CAF8HOZ+J3NkaywfbHuQpHxK9ZXeT4=4Vs9rOwCDiUdnt1QA1Yw@mail.gmail.com>
To: security@commons.apache.org, security <security@apache.org>, 
	private@commons.apache.org, Alexander Lehmann <alexlehm@gmail.com>, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-1294: Apache Commons Email vulnerability information disclosure

CVE-2018-1294: Apache Commons Email vulnerability information
disclosure

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
All Versions of Commons-Email, from 1.0, to 1.4, inclusive. The
current version 1.5 is not affected.

Description: If a user of Commons-Email (typically an application
programmer) passes unvalidated input as the so-called "Bounce
Address", and that input contains line-breaks, then the email details
(recipients, contents, etc.) might be manipulated.

Mitigation: Users should upgrade to Commons-Email 1.5.
You can mitigate this vulnerability for older versions of Commons
Email by stripping line-breaks from data, that will be passed to
Email.setBounceAddress(String).

Credit: Alexander Lehmann

References:
http://commons.apache.org/proper/commons-email/security-reports.html
