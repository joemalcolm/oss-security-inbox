Received: (qmail 3526 invoked by uid 550); 22 May 2026 19:38:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26574 invoked from network); 22 May 2026 11:09:53 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1779448179; bh=Zv2XHGoOdmZd3JDbE/sORJeMUI6juI0Oqp2LF7WorfE=;
	h=Reply-To:From:Date:Subject:To:From;
	b=faYnBvOMyVEVCkG47E3L2/ikiy412SOUJjQZjnX21QSfQpJipqb2eCQvwl5TAH3Bf
	 otHjJXhcqZQeV8P+1YjVeBXnDtnJSM+QpXvDcCYs89WvwmB4D9zCRubtpOIagIxtmj
	 rUFy/AfDTB5A+E1Y/TFm0fsk+zhNtXCmnST6kWxsyEUikKLy7A3BV0zThFg0IKi8Xo
	 sTc911Kdx9O6vBisShBMCyA9n9F89aZIS1CA7m5GI1NRXmUwfuhkbaRK6XbiFn2YRb
	 qAP8aSbAq89BIdDORPcOTRQ7dZjVab+iCHe7m8Phyv7YTi0Uzd8hchubAGNXbK0FDU
	 DjoM64LbFJv7A==
X-Gm-Message-State: AOJu0Yy7GBtRNN6NnXin3ROWKeRI8YAvaSzfAta02cCNu5iBk+j/keia
	gxclh7bnoThEisZAEW7AG8Xa60Gr6lJ8YiFlIysz4winam+16VHh5RBeQHkNdN/kk49y6zzovqH
	WaHdLCLUHy72tb4Vk8wPhFnq0S9+5vL8=
X-Received: by 2002:a17:903:1ac5:b0:2bd:6cab:860 with SMTP id
 d9443c01a7336-2beb065459dmr34957725ad.28.1779448179110; Fri, 22 May 2026
 04:09:39 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 22 May 2026 12:09:27 +0100
X-Gmail-Original-Message-ID: <CAB8XdGDCmKjktp_wBQV-aoyNtGDN+5XbXKU5KPHcJoBdo=t1Sg@mail.gmail.com>
X-Gm-Features: AVHnY4IKS5hKf7EwlVon2J2KCcTGC8PHJlzdt6NtXrqqIdDFiBhATLA9QDzCrUM
Message-ID: <CAB8XdGDCmKjktp_wBQV-aoyNtGDN+5XbXKU5KPHcJoBdo=t1Sg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2026-44417: Apache CXF: Incomplete fix for CVE-2025-48913
 (Untrusted JMS configuration can lead to RCE)

Severity: moderate

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) 4.2.0 before 4.2.1
- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) 4.0.0 before 4.1.6
- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) before 3.6.11

Description:

The fix for CVE-2025-48913: Apache CXF: Untrusted JMS configuration
can lead to RCE was not complete, meaning that another path in the
code might lead to code execution capabilities, if untrusted users are
allowed to configure JMS for Apache CXF.
Users are recommended to upgrade to versions 4.2.1, 4.1.6 or 3.6.11,
which fix this issue.

Credit:

Github / twitter - https://github.com/exploitintel / @exploit_intel (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44417
