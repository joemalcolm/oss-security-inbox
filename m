Received: (qmail 22217 invoked by uid 550); 21 Sep 2022 09:37:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11582 invoked from network); 21 Sep 2022 06:17:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=eZfxSAIuCPSNfeqixvrEZ+MMSt5IgzZka4dhHTPE+ws=;
        b=cqx5SIpNDGmRBfJMRWkZQXWGN5H+4oCWSjMvI0zzwHBLkVN5a1ZkP0j3li7GxYb5NX
         VuTcnXESGe67Ijb2wSIjarlGkwv5UeE6oEFhnWnEHYKKtjgSlRCt2hcTukQjPXrzIzqe
         ZzDf0SdITg/jFpPAF8jCW9dsqEklV6Q3zyQHSZgG2UFEehagT2yWLalOmRNlQWxUbd/x
         p+fxeZ61rOS/dkl0m/Ms/Yh9+lpIr8dG2ghmAbkgdZUW8dOXmb76PgVQLkpqxaLSnemu
         gz6wrUy061Qo2M3I/iex4uJjmEXozNeDOEvBSwAjBsgwbgpFL5/c/s3a6abS7sJW8Sez
         mPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=eZfxSAIuCPSNfeqixvrEZ+MMSt5IgzZka4dhHTPE+ws=;
        b=t02hNzh4tFyq+ME0ZuGiQnO1N7BkdpBI9FhpfmZgB+/MHBOdhzjJ5KDUIoHs3RhOFg
         OxkxAUIjSYvefY9kKFmBNobW6VLd4gDCIWDKjxqOmbpi6DagRlKrE/E2JZ1lM09T2TXQ
         njBpMonOJSfkGrU1ZE7ZABtyTfaJEy8JVn1pqme3ljKuTIH27rxrGV8kN6pcB/CIX8J/
         4QkJfGCwvwzuCwXk1BWhysi4JFybrllGTSf2hj3htbJiQHCQ99Ewm9CEd+JVbbzOaxgi
         bpfZk8pNV+MFkuLQ0ej5pWspuSzw4caND/toaIyazs134NDo2WdeYTaCaUzuKSe48G7b
         hGOw==
X-Gm-Message-State: ACrzQf2htmw82644MmxIKoWbiSACzXlcrIENsNu8M2a8cNFPVooMW00M
	tj3B+nzVrHqjV8beMgHVP5y6Ea8f8un9CJlOxrtk3SC7rl8=
X-Google-Smtp-Source: AMsMyM4lITON04wEay67q/XAgykRsqHSYdKEOqInCPQIHaikTL0dmGKchE6SLScXswUmktWilmaHrnJHvUXU+06aV5o=
X-Received: by 2002:adf:eec3:0:b0:22a:d159:456c with SMTP id
 a3-20020adfeec3000000b0022ad159456cmr15517655wrp.463.1663741053850; Tue, 20
 Sep 2022 23:17:33 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Wed, 21 Sep 2022 09:17:21 +0300
Message-ID: <CAGUWgD8-9ST3-hxOTY+Xar6S88uuydz=ods4k1vBQq_GXXahKg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] big ints in python: CVE-2020-10735

There was recent discussion of big ints in python and libgmp.

https://docs.python.org/3.10/whatsnew/changelog.html#security

===
gh-95778: Converting between int and str in bases other than 2
(binary), 4, 8 (octal), 16 (hexadecimal), or 32 such as base 10
(decimal) now raises a ValueError if the number of digits in string
form is above a limit to avoid potential denial of service attacks due
to the algorithmic complexity. This is a mitigation for CVE-2020-10735
====

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-10735
===
In algorithms with quadratic time complexity using non-binary bases ...
The highest threat from this vulnerability is to system availability.
===

AFAICT the quadratic complexity is quadratic in the size of the int,
that is its logarithm.
