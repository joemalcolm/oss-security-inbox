Received: (qmail 22478 invoked by uid 550); 20 Jan 2025 15:26:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20334 invoked from network); 20 Jan 2025 15:25:51 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YztQuYf/hc7ylHfnDOrymVi5iMj+ZlP4u/zBJrTxOjvLB9Ik/JB
	DB267J9Yza0JqtlAcqv9V0FJBlPz+pVjjQ4E4V3RlHWYyYHkuyY8wDmdknDGZ6yvKF+I27c7s+f
	2QXi9fwt19U6UzzeWtBPJ4c4jI9Y=
X-Google-Smtp-Source: AGHT+IGkgpObxMLwmSi/wfrke6MPW4r4DxLrC0NKP09Z/Ylr40lKzF7xoxSLF1rVxc40XmX03crjZO6XmeOJZSugIAo=
X-Received: by 2002:a05:6a21:999e:b0:1db:e0d7:675c with SMTP id
 adf61e73a8af0-1eb2148cc78mr22277825637.13.1737386669958; Mon, 20 Jan 2025
 07:24:29 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Mon, 20 Jan 2025 15:24:18 +0000
X-Gmail-Original-Message-ID: <CAB8XdGDHH_p+JHm8X=h10nBzJjFhcwH2ueiAccrHDfeGhcDTzw@mail.gmail.com>
X-Gm-Features: AbW1kvYKSmzqlrbkSl822hyG0p9jrISB80yvr0AHMN7kOb9AWOrO76EtgzrwPss
Message-ID: <CAB8XdGDHH_p+JHm8X=h10nBzJjFhcwH2ueiAccrHDfeGhcDTzw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-23184: Apache CXF: Denial of Service vulnerability with
 temporary files

Affected versions:

- Apache CXF before 3.5.10
- Apache CXF 3.6.0 before 3.6.5
- Apache CXF 4.0.0 before 4.0.6

Description:

A potential denial of service vulnerability is present in versions of
Apache CXF before 3.5.10, 3.6.5 and 4.0.6. In some edge cases, the
CachedOutputStream instances may not be closed and, if backed by
temporary files, may fill up the file system (it applies to servers
and clients).

This issue is being tracked as CXF-7396

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-23184
https://issues.apache.org/jira/browse/CXF-7396
