Received: (qmail 7459 invoked by uid 550); 22 Nov 2025 01:31:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7984 invoked from network); 22 Nov 2025 01:27:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763774867; x=1764379667; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2qQyZqD4jvGdpvtjsC+kcij0zgC2spb+vBhcyGZ6TuU=;
        b=ZJ0iLvaAivy5T0H1Q/Tm87H6ByY9EH33GUleRc+7TRNbofLYrAIg6iT6QCy6Cl2kM+
         K6zbXPzWh0jguzN77FU8YT1EOwnTTWIvuBxUvelmATDU7KyVEjjGTG6Yph7LzGT6znln
         fz6ax7NucFUzT28Ir882ZLzWNbYX0tnQqnFa/9/ZIBduFgk/YiM7CfZJiTMCIh3ya3GJ
         sOXyJKAl7TPx5UEzQZ+JxG1fIUt3nYQnAIG2yAP3cwpaLZpn8Wjk25qKl3TlHP1fAbCe
         TzKWiFz4Bo0px7rY0lIoWEbbT1SIMdPpxujhyfcjekvZNqyGtJobwZR3pXysn0o2I4CX
         2zcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763774867; x=1764379667;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2qQyZqD4jvGdpvtjsC+kcij0zgC2spb+vBhcyGZ6TuU=;
        b=Uqq4KDnQ9FMzCP1f9fvWSowPAFFG693CJwVb5jkJAm5A3amCIIgWE+SeKhVO15b5b/
         TT+DEeUDgO4jkoZuyDATovZpSivGtqis4MOcLSnLjfnh7iOuvP95kLgQ+OzvQiYARMfu
         ronGZxiC2uRyJQyQ9zedkC0gt1bZ76wsdFEaaGZM+eyT4bztnQZiY4HmI0cNkpN1jrhW
         cU++NwuYbJxNuFmfCPDpLfhsSTD9t/mvjpt4cq0/TVV65VHeOsmi8LcQy/Ky0pYD9t2m
         4eSbNcINrDKCRIXmaXkgpKBASvHS1suJH8sg/Atb5ssuQErM1IULpGUesAM2ce7OetMr
         vNgA==
X-Gm-Message-State: AOJu0Yyge/7wPbQomh0n2jqo1XX65MHKLZ17R3JIWaxHdqfVGWQL0z3M
	PZWAqXOyBzDYP3AfoxR8ouqkbEoBhdsqJJkHUBamWlJpzRPMvbzGV+Fri62JIv6o2r8ABYwdaea
	X+QwonrQCov9sSPKloRbDl8m94WHPeHnwrEvP
X-Gm-Gg: ASbGncueXldSdJ2ZBREcFIAb9YEDXS3eGmERU6erqOGMdH1OanWkpgLkTG9nhFZgpJc
	04YP4JvM66dYGFQcY3TZOByf7BZokALKYTupwCUYGdy7bmjd4w18UGpA5PJ7mt9BVHV8SS9frxb
	JhlrVOThWTHylAAhgpd77v9WXkX3tZC5swTpvsZHmNWpXTxONn7dAzqy5ZvB2sbElog1Z1kE9uD
	aFvA35H/c/1KHCtp0I07Rw7BNXJGBl+MrRSX0Iu63hC+v6tUU6FCWblDLAZ02FTvRXmMA==
X-Google-Smtp-Source: AGHT+IEmBMcv17M2gkj//kHRGVy/rxPCET6O/xOr9Vt1BQ5lxtvQYL6CmFkXiztMpqwSA3kgnBR0wbi5YwMiFfbrBfQ=
X-Received: by 2002:a05:6638:4e11:b0:5b7:d710:6611 with SMTP id
 8926c6da1cb9f-5b967a8b20cmr2968531173.20.1763774866830; Fri, 21 Nov 2025
 17:27:46 -0800 (PST)
MIME-Version: 1.0
From: Cosmin Truta <ctruta@gmail.com>
Date: Sat, 22 Nov 2025 03:27:35 +0200
X-Gm-Features: AWmQ_bmOfoI8xZXGsyesGa75VPiN1DCWFst2mEBfFCkff01TciCLpLmBoVakea4
Message-ID: <CAAoVtZw-pkvsSTaXAHjDdUC3NRDwvwVNT8D4BpO5z3d79W-FVg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libpng 1.6.51: Four buffer overflow vulnerabilities fixed:
 CVE-2025-64505, CVE-2025-64506, CVE-2025-64720, CVE-2025-65018

Hello, everyone,

libpng 1.6.51 has been released to address four buffer overflow
vulnerabilities discovered through fuzzing and security research.
This release fixes two high-severity and two moderate-severity CVEs
affecting libpng 1.6.0 through 1.6.50.

CVE-2025-64505 (CVSS 6.1, Moderate): Heap buffer over-read in
png_do_quantize via malformed palette index.

CVE-2025-64506 (CVSS 6.1, Moderate): Heap buffer over-read in
png_write_image_8bit with 8-bit input and convert_to_8bit enabled.

CVE-2025-64720 (CVSS 7.1, High): Out-of-bounds read in
png_image_read_composite via palette premultiplication with
PNG_FLAG_OPTIMIZE_ALPHA.

CVE-2025-65018 (CVSS 7.1, High): Heap buffer overflow in
png_combine_row triggered via png_image_finish_read when processing
16-bit interlaced PNGs with 8-bit output format.

All vulnerabilities require user interaction (processing a malicious
PNG file) and can result in information disclosure and/or denial of
service. CVE-2025-65018 may enable arbitrary code execution via heap
corruption in certain heap configurations.

GitHub Security Advisories:
- CVE-2025-64505:
https://github.com/pnggroup/libpng/security/advisories/GHSA-4952-h5wq-4m42
- CVE-2025-64506:
https://github.com/pnggroup/libpng/security/advisories/GHSA-qpr4-xm66-hww6
- CVE-2025-64720:
https://github.com/pnggroup/libpng/security/advisories/GHSA-hfc7-ph9c-wcww
- CVE-2025-65018:
https://github.com/pnggroup/libpng/security/advisories/GHSA-7wv6-48j4-hj3g

Fixes:
- CVE-2025-64505:
https://github.com/pnggroup/libpng/commit/6a528eb5fd0dd7f6de1c39d30de0e41473431c37
- CVE-2025-64506:
https://github.com/pnggroup/libpng/commit/2bd84c019c300b78e811743fbcddb67c9d9bf821
- CVE-2025-64720:
https://github.com/pnggroup/libpng/commit/08da33b4c88cfcd36e5a706558a8d7e0e4773643
- CVE-2025-65018:
https://github.com/pnggroup/libpng/commit/16b5e3823918840aae65c0a6da57c78a5a496a4d

https://github.com/pnggroup/libpng/commit/218612ddd6b17944e21eda56caf8b4bf7779d1ea

Note: CVE-2025-65018 requires both commits for correct remediation.

Release: https://github.com/pnggroup/libpng/releases/tag/v1.6.51

Credit: Samsung-PENTEST (CVE-2025-64505, CVE-2025-64506, CVE-2025-64720),
weijinjinnihao (CVE-2025-64506), yosiimich (CVE-2025-65018), with analysis
by Fabio Gritti and John Bowler.

Users should upgrade to libpng 1.6.51 immediately.

Cosmin Truta
libpng maintainer
