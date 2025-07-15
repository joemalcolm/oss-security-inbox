Received: (qmail 1552 invoked by uid 550); 15 Jul 2025 20:43:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32690 invoked from network); 15 Jul 2025 14:03:38 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YzbChtQ0g3dcGoXhn1H1VLlWtETFckJkoGvuoq9F25/uVMbks82
	qHOyFEAqq9MhBlQ8JrHEqD8sfmWnscGffgagoIa7AQ0Jy+Aqn+Q/iecI2N3DD/RtihUOP3KOpho
	h73pCYa45G2fv81cFQkkBNYANSKDWiXc=
X-Google-Smtp-Source: AGHT+IEbqnp2AJjPCS9x1kQ1ee4kOyK3/WClsIIr2YDB+0cnwU+a/D30ojBPfHtgxBvsE2wHdWTT1Ga8JmRMxZ98H6o=
X-Received: by 2002:a17:90b:5546:b0:311:b0d3:865 with SMTP id
 98e67ed59e1d1-31c91f96704mr4155169a91.32.1752588100306; Tue, 15 Jul 2025
 07:01:40 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Tue, 15 Jul 2025 15:01:28 +0100
X-Gmail-Original-Message-ID: <CAB8XdGB8U5qgWJB9DHPWFjb+GTGr_nZ8vm+RDrAqjyhD0H=_pw@mail.gmail.com>
X-Gm-Features: Ac12FXxhp0dKjZeX79GuuYhsFwWE63i_oISxN5DloZbZoajJwl3p7vc0oo7Z2dc
Message-ID: <CAB8XdGB8U5qgWJB9DHPWFjb+GTGr_nZ8vm+RDrAqjyhD0H=_pw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-48795: Apache CXF: Denial of Service and sensitive data
 exposure in logs

Severity: moderate

Affected versions:

- Apache CXF 3.5.10 before 3.5.11
- Apache CXF 3.6.5 before 3.6.6
- Apache CXF 4.0.6 before 4.0.7
- Apache CXF 4.1.0 before 4.1.1

Description:

Apache CXF stores large stream based messages as temporary files on
the local filesystem. A bug was introduced which means that the entire
temporary file is read into memory and then logged. An attacker might
be able to exploit this to cause a denial of service attack by causing
an out of memory exception. In addition, it is possible to configure
CXF to encrypt temporary files to prevent sensitive credentials from
being cached unencrypted on the local filesystem, however this bug
means that the cached files are written out to logs unencrypted.

Users are recommended to upgrade to versions 3.5.11, 3.6.6, 4.0.7 or
4.1.1, which fixes this issue.

Credit:

MAUGIN Thomas https://github.com/Thom-x, Qlik (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-48795
