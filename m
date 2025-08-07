Received: (qmail 3722 invoked by uid 550); 7 Aug 2025 17:33:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26524 invoked from network); 7 Aug 2025 15:54:46 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1754582075; bh=y99xZbCMrY8UIswW1e6RsviuGXn1h60TTtxkwKsODsI=;
	h=Reply-To:From:Date:Subject:To:From;
	b=wvl2ihiohZdBCRFgXalz/FPc225TZWMqMxweutNyVMinK44DRGDpaddfUvMi5QHSQ
	 paqFWK806pD959+yvS83SMKzdtMw73MBdJ9GYi9kGj5AocV2NqJgfRZTIqoH+PzL38
	 r0qyXypUxnXFdNHLUwj+ymgMKxU2RydHx2ahx41tMGJtuyjEL50ZZUSisXHaVuAI/c
	 rT0V8aIxbwrkrqSttOlaCo7PGNV0kduh0cBkN10gSkfrsTNGofnPg2TcHPlf6uzcvG
	 vNnnTbohJdi0dU0wvriMVNp8SlVnNwkU/Q9j7bqDiu3SoKG5rxb8pAhUK0ajRNi5Gz
	 ThEpxwN1u80XQ==
X-Gm-Message-State: AOJu0Yyxa3y9JoJ9DPqS+Zk31nFvZQWwVk4qgrz71QDLZnhnl+eNKc3x
	Jd+Mjc4HCPV+aVjdFk1guONSv1a1UOdz4Ja7UdIZnhEjvViSNX9u10+Ur7YvTjqZPW+kKCQhtf6
	FemSCJJJRLk1vM4AvBWsqK5YEgKRyH7A=
X-Google-Smtp-Source: AGHT+IEIZ0QpmFb+M70i64q3LSHA+RWGuoD9r1/wyCyzOO/E3JELo2bJOI6zmcWsZRJxL0JCyDVMfMzAWb0PyPhOL08=
X-Received: by 2002:a17:902:d505:b0:234:9fe1:8fc6 with SMTP id
 d9443c01a7336-242b072bbb4mr58764195ad.18.1754582074068; Thu, 07 Aug 2025
 08:54:34 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Thu, 7 Aug 2025 16:54:23 +0100
X-Gmail-Original-Message-ID: <CAB8XdGDoLmyhDdcjpSg9bSAqAXx1OPH-_R9i60tGCy0xDH37LQ@mail.gmail.com>
X-Gm-Features: Ac12FXxa1Y09MWae6_JpfuA4NhpFRSKCAZdd8RUfyedAoq1fNLUz6NdNXMadjvI
Message-ID: <CAB8XdGDoLmyhDdcjpSg9bSAqAXx1OPH-_R9i60tGCy0xDH37LQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-48913: Apache CXF: Untrusted JMS configuration can lead to RCE

Severity: moderate

Affected versions:

- Apache CXF 4.1.0 before 4.1.3
- Apache CXF 4.0.0 before 4.0.9
- Apache CXF before 3.6.8

Description:

If untrusted users are allowed to configure JMS for Apache CXF,
previously they could use RMI or LDAP URLs, potentially leading to
code execution capabilities.  This interface is now restricted to
reject those protocols, removing this possibility.

Users are recommended to upgrade to versions 3.6.8, 4.0.9 or 4.1.3,
which fix this issue.

Credit:

M Bhatt (r34p3r) OWASP GenAI Security Project & Blake Gatto (b1oo)
Shrewd Research (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-48913
