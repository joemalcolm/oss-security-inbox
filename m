Received: (qmail 17639 invoked by uid 550); 11 Oct 2023 10:20:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9912 invoked from network); 11 Oct 2023 07:55:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697010935; x=1697615735; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G2ECStj2EpHkbtvMFlIkUtn0XEPHLN7fvKWzqY4u/MU=;
        b=nlc+B0lTnROoISa48btll5K6EmYid7ZIFl7o7hd+KqWplQYApWqhpjCk/urR+8Lxem
         HSZxSsoAXi+FIIuWSVA6qc1LUJdR27zcyKc5TDbXoL2foRRzmLDgqXK3uq+0yve2fUH4
         LNMc45QIdN6Sp5SedPK8A4dndX/pvjM7d4OsVfpZQX/yuIBXeCxLGFZqlr6f9xVta4hL
         fbhbhllWRy3wRhT+fU9ooE82/cNT68ED1g1R+6WBy2tCMAwyLSFDKmoS7Ik3D+/2vip3
         5iduS/I6bbbfJH9GOpqE/BxyaYANfBg+5LvyKQNpUG6k4qud5V93A8wkg8hU0LFxBxzI
         Eq3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697010935; x=1697615735;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G2ECStj2EpHkbtvMFlIkUtn0XEPHLN7fvKWzqY4u/MU=;
        b=NZvKUrn2OdeZKGt1SoSrUS4711MMmZAhuWxBFD1zrc+hCb8yUZ5CySqnE9EjBRLaKj
         3X8BlYCZAIVlKNGlhITNY6UTo9i6fKYbH+G5H9Rj9p1ZEewZjAp21oQ8cnBubpikhItQ
         gJtb6gk8lmjot/q/HfhRwLciFkzywUk+DfHL0a/vXhg3MFp31QW9MHfpLMPqOSUou7tt
         gYPJJgCl5ZGmw+RTKgQMuxVd/Nys6PAA6DIX6YXwqVtY8p112E057EBOAwuCGQYhTkOF
         rMWkH+OyqtuArvsB8GCDSxMMgVprVaNA6zjLAcS49V9asRz72ZhEPcIEFc2JbW5FmHAu
         397A==
X-Gm-Message-State: AOJu0Yyh2mmrKqhuYLbdp27E99R1EzyIQz+AbmaPksCkICp8FNuPZbpP
	Y8Xk+03NDkuFvAualV06mkDJ6NUevGYpZLeiwI9h8src8lo=
X-Google-Smtp-Source: AGHT+IEzL+3F0Eu4wirj/b+oUjO0+XG4JER1lJSNXA6NiHCb6GoKlMCQH+nNR2R4kBG8RdBpAv6zyiF9qbwh4Bb4zsI=
X-Received: by 2002:a05:6102:40b:b0:44d:42c4:f4bf with SMTP id
 d11-20020a056102040b00b0044d42c4f4bfmr11302991vsq.10.1697010935497; Wed, 11
 Oct 2023 00:55:35 -0700 (PDT)
MIME-Version: 1.0
From: Joshua Rogers <megamansec@gmail.com>
Date: Wed, 11 Oct 2023 09:55:24 +0200
Message-ID: <CA+17n5uwjXBDzGGpepNtQSOFQaifnuyodd2EUQxEcCOLH+UUuw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fd904d06076c25f4"
Subject: [oss-security] Squid Caching Proxy Security Audit: 55 Vulnerabilities, 35 0days.

--000000000000fd904d06076c25f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear oss-security,

Two and a half years ago an independent audit was performed on The Squid
Caching Proxy, which ultimately resulted in 55 vulnerabilities being
discovered in the project's C++ source code.

Although some of the issues have been fixed, the majority (35) remain
valid. The majority have not been assigned CVEs, and no patches or
workarounds are available. Some of the listed issues concern more than one
bug, which is why 45 issues are listed, despite there being 55
vulnerabilities in total (10 extra of the result of similar, but different
pathways to reproduce a vulnerability).

After two and a half years of waiting, I have decided to release the issues
publicly. The Squid Project is aware of this release.

The issues are listed below. Due to the sheer size of issues discovered,
technical details are not included in this email. However, breakdowns of
the code and proof-of-concepts can be found on GitHub:
https://megamansec.github.io/Squid-Security-Audit/

----
Stack Buffer Overflow in Digest Authentication
Use-After-Free in TRACE Requests
Partial Content Parsing Use-After-Free CVE-2021-31807
X-Forwarded-For Stack Overflow
Chunked Encoding Stack Overflow
Use-After-Free in Cache Manager Errors
Cache Poisoning by Large Stored Response Headers (With Bonus XSS)
Memory Leak in CacheManager URI Parsing CVE-2021-28652
RFC 2141 / 2169 (URN) Response Parsing Memory Leak CVE-2021-28651
Memory Leak in HTTP Response Parsing
Memory Leak in ESI Error Processing
1-Byte Buffer OverRead in RFC 1123 date/time Handling
Null Pointer Dereference in Gopher Response Handling GHSA-cg5h-v6vc-w33f
One-Byte Buffer OverRead in HTTP Request Header Parsing
strlen(NULL) Crash Using Digest Authentication
Assertion in ESI Header Handling
Integer Overflow in Range Header CVE-2021-31808
Gopher Assertion Crash
Whois Assertion Crash
Assertion in Gopher Response Handling
RFC 2141 / 2169 (URN) Assertion Crash
Vary: Other HTTP Response Assertion Crash CVE-2021-28662
Assertion in Negotiate/NTLM Authentication Using Pipeline Prefetching
Assertion on IPv6 Host Requests with =E2=80=93disable-ipv6
Assertion Crash on Unexpected =E2=80=9CHTTP/1.1 100 Continue=E2=80=9D Respo=
nse Header
Pipeline Prefetch Assertion With Double =E2=80=98Expect:100-continue=E2=80=
=99 Request
Headers
Pipeline Prefetch Assertion With Invalid Headers
Assertion Crash in Deferred Requests
Assertion in Digest Authentication
FTP URI Assertion
FTP Authentication Crash
Unsatisfiable Range Requests Assertion CVE-2021-31806
Crash in Content-Range Response Header Logic CVE-2021-33620
Assertion Crash In HTTP Response Headers Handling
Implicit Assertion in Stream Handling
Buffer UnderRead in SSL CN Parsing
Use-After-Free in ESI =E2=80=98Try=E2=80=99 (and =E2=80=98Choose=E2=80=99) =
Processing
Use-After-Free in ESI Expression Evaluation
Buffer Underflow in ESI
Assertion in Squid =E2=80=9CHelper=E2=80=9D Process Creator
Assertion Due to 0 ESI =E2=80=98when=E2=80=99 Checking
Assertion Using ESI=E2=80=99s When Directive
Assertion in ESI Variable Assignment (String)
Assertion in ESI Variable Assignment
Null Pointer Dereference In ESI=E2=80=99s esi:include and esi:when
----



Cheers,
Josh

--000000000000fd904d06076c25f4--
