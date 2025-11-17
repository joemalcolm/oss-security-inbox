Received: (qmail 14060 invoked by uid 550); 17 Nov 2025 10:25:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5682 invoked from network); 17 Nov 2025 07:31:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763364654; x=1763969454; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=10lGkEoXiFssMEulZemoW4SpcJFg3UaF/Tz7tT3rElE=;
        b=kBSRSVby7FnAtQPbjuv+HW3TEmc6LlyUXn8O+tfz4psRxnHUw4fEQAhWBQgpfk616w
         Z158VaWrF+KYrFqkWjFPwdzYblV3Zx/HKQJMReMROMoaK9SwzNbjwfUuGuAdbhBjfRUo
         k9l1243DTvJqOHYBaiah/imN94L6ub+WIfDYvsABnPzdD19iaFUsCyLCB5jOVaBzYuAQ
         3jm3Vkzcckr2J4SYORDOFg1qQmNzlflWimQy3zA3pBMJDDJWzdJnZjYxEEGEWbbAfhRP
         JRnRjMd5k5JmQN1+getNNbR7ZYjHc+gh5Lu+j9XWenbfPlAXdm4ekR7R9HSxWe7XwoS+
         yY7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763364654; x=1763969454;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10lGkEoXiFssMEulZemoW4SpcJFg3UaF/Tz7tT3rElE=;
        b=ZYwNr1KL/iJHfhW0CvG8M7Lbt6UAvk54SaiHm7YLuGQ9YXh9nazXXkTbaK2uqjuox2
         5qgAHEBKJpNC1fuk4IGF3qGJ+TWSEihTJ/ErFl9XqV9PyXEL9HHIjjce1De5tEqbCjyp
         6/8JTICd2BqON3qsSDUVXLNDHcrMiBF8mxATbiNIi40k7BQiX9qUzQ/fsBTnow1CJHUG
         pq/MN42aYf86qxKL7IvfCnRAK1glV8dMmKro55OSG5A0AZOJu6y1KZPpOsDy5e16qGOI
         ChEguO2GqkfC3dcfO8QUndQnDH4i9JrpYWeoP8QmrUs95qupXoxjzYN/H0VDYsz4m0hp
         Mqbw==
X-Gm-Message-State: AOJu0YxLqv4QowoA2u4s+2gvz1Q5FTzAuNAeShqY6/OOKx86tFBsloix
	fdRo0os2e1ahc54U+FmcHlxJNPFCGweJIZl0XdsjVVVZPPcBM7P9ROP0Lqb91BoxB41c8NysWUI
	olCcxkFvun/vnXy29xkwXcIP0qyisbh/EIuQyLaI=
X-Gm-Gg: ASbGncuQP+YkT3cWS8eqtwcD+BsXF9KKqYCc2epAgAsq5q5ElR11auxS8OY4L0TYcTD
	YGz6420s11iGGwE8Z5QHpiSVFAln3Nb2pAbU7G7WloxUSNK6LDEhP/0h/RHcMqd2sRwygR4T34g
	ko3NOMJB3e4TCRfIJcFR+9SkHUDADSAxgq38sV6218sMzMSnrT1Mf0ZwlXI1KVLpW7tJzYYmleS
	srDFt5oeTObLjADA6ZMPvYvi/6IJ13Fn2vkvOEEeZGXY/qaK3O26QlRrSg6O6JHf5mRIkVHdvhT
	/tKw8fMwYsceQFA520PYdCZ7wq6hMwXXEsaLN7jHlrkCcW+bmXhpnedbw4U=
X-Google-Smtp-Source: AGHT+IHgeTg2mvF1mPZqW6doPb5KHA0frgIBKfFkiBrP+5tGWIuhkbqQ6BhZ1FodXPRE71UunoIZv335KrQMsPPnMNo=
X-Received: by 2002:a05:690e:1609:b0:640:cfa4:e8ce with SMTP id
 956f58d0204a3-641e769b265mr7492038d50.68.1763364653785; Sun, 16 Nov 2025
 23:30:53 -0800 (PST)
MIME-Version: 1.0
From: tanish saxena <tanish.saxena26@gmail.com>
Date: Mon, 17 Nov 2025 13:00:42 +0530
X-Gm-Features: AWmQ_blMfpY-yCLSXpLrgV6cSrRQpsOPzcOpy__IGiw5GNn8S0zPJACmpKBnaEU
Message-ID: <CA+p5cO4ATn-ZDp0GvrokrQkJW1D4AJ54qm5X-Lxyn_w0YzRcfg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000cc67400643c55341"
Subject: [oss-security] GitGuardian GGShield SSL/TLS Verification Bypass (No CVE)

--000000000000cc67400643c55341
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

This is a public disclosure of a security issue identified in GitGuardian's
GGShield CLI tool: an SSL/TLS certificate verification bypass triggered
through
the `--allow-self-signed` flag and related configuration.

Although this issue did not receive a CVE assignment, it was escalated
through
proper coordinated disclosure channels, including CERT/CC. Vendor has since
implemented mitigations in GGShield v1.44.1.

---

Summary
-------
Product: GGShield (GitGuardian secrets scanning CLI)
Affected Versions: =E2=89=A4 v1.43.0
Type: SSL/TLS Verification Disablement (CWE-295)
Impact: Man-in-the-middle risk on all API communications
Disclosure Status: Public, vendor updated behavior in v1.44.1

---

Technical Details
-----------------

GGShield provides an option called `--allow-self-signed` which internally
disables *all* SSL/TLS certificate verification, not only self-signed
certificate checks.

Code:

    def create_session(allow_self_signed: bool =3D False) -> Session:
        session =3D Session()
        if allow_self_signed:
            urllib3.disable_warnings()
            session.verify =3D False  # All certificate validation disabled
        return session

This effectively makes all GGShield API calls vulnerable to interception via
Man-in-the-Middle (MitM) attacks, leakage of scanned content, credential
theft,
and manipulation of scan results.

---

Attack Scenarios
----------------
1. Developer on untrusted WiFi using `--allow-self-signed`
2. CI/CD pipelines where troubleshooting instructions suggest bypassing SSL
3. Enterprise networks with transparent proxies abusing disabled validation
4. Internal threat actor with network access

---

Vendor Response & Mitigations
-----------------------------

In GGShield v1.44.1, GitGuardian introduced several improvements:

- Added a new `--insecure` flag to clearly indicate total SSL bypass
- Added prominent warnings when SSL verification is disabled
- Deprecated the misleading `--allow-self-signed` flag
- Recommended using system certificate trust stores instead

These changes mitigate user confusion and reduce accidental insecure usage.

---

Timeline
--------
2025-09-20 =E2=80=93 Initial report to vendor
2025-10-13 =E2=80=93 Vendor responds, considers behavior =E2=80=9Cintention=
al=E2=80=9D
2025-10-20 =E2=80=93 Vendor declines changes at that time
2025-11-13 =E2=80=93 CERT/CC advises researcher to proceed with public disc=
losure
2025-11-16 =E2=80=93 Vendor releases v1.44.1 with mitigations (1week)
2025-11-17 =E2=80=93 Public disclosure

---

Author
------
Tanish Saxena
Independent Security Researcher

This disclosure is provided in good faith for user protection and awareness.

Regards,
Tanish

--000000000000cc67400643c55341--
