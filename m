Received: (qmail 3082 invoked by uid 550); 2 Jun 2026 02:32:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5404 invoked from network); 2 Jun 2026 02:07:49 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1780366061; cv=none;
        d=google.com; s=arc-20240605;
        b=QZAWgQlj+CEpqHPwcaVTn46YrFUnCIJVk8l+iwaSN96yaOnzY62Pte7GyPkR2oIUHf
         3H6w5y5zhwwPzzd2uNdYB3CRfLvUUbwvMw3IxUj5CdUfgThtc1KxoY4bAknrMEJuNTQ6
         XiYV2/o8fTbPXz96B0dO0qd+VEoPY0k14xbFe1vCgXQAAP6qqrI207yQYN5R8io13TrK
         gjzRiAfhLtE8ulkdGISQsk3zafGCutusFAq5SVmkhdJEaXX7C2ajS0H4yIabZ9wqGIqT
         pqA/nihl0Vv6hadbROAA3RAobooMPqsVQYWCqXYx0ZLGCYzdrNxKC4kA1LV7pSKSSUlX
         P9+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=jt2LZm0PooC4LAESsvLVYBRpo2bsthQLNN+dMIi4wx0=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=EvgsuL1lexKbLeMdOestvIEmvp9YDSfAISi/G3LlWKJTBWb7QUR/k8oWmSYYCjLLIE
         GBRcqsDAT3JXhE/67wnYHLBPcul1OVJ8WWlctmh6HEn/sYTIyrlq/WEBdKcXUane1bP1
         /aNZxw8peSvYioARleBgtRg0v0vGqJSZlkZNtrDcPpEkkyDya8ULZXkGcHCTehcnoIr5
         KfIk+++J2HtR1V7x/UfxqRGQRbf66ssOey2h5OrZyG24lFdjDgcxQZOi6iRBXtJHiCuO
         x4WUfaaEbTlwWUhaL0tS1hq/mg+QH1y7RhEwrxqPE6V/5iXTOIm3DZlqgmeziyk8ET6s
         Cy/A==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780366061; x=1780970861; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jt2LZm0PooC4LAESsvLVYBRpo2bsthQLNN+dMIi4wx0=;
        b=q3DJLq3isIrNojlnZJfYeUr+9Hbm73cDpc7E8nQRI1NIJNyU101pBQn+3qbqxkxG/d
         SJ3bUwhtPLh2MTgPLQn7dHOBEkdu3326bLY8AyT6oMd7Ia4IbHbZfor7sw/wOVE2S84F
         cDKYoFhKDq15U59CWQu5TrnrZbmgLzS7p2Jj1uh/F2cki3UxkYNXcoRv9gTRlL105qwg
         1AUz2s98jELaem3Sd10nGSeEdsoW46EJ2mNvDwmCJSW3kltAHj2Ky9kGBFBbS8j9SJuP
         Aryb8JA2kzWJHqIsAx4ZRwI/RQ8/i7cQuQTIi0aupaKppM9fSQ5TBC1DAiKmXUEtqABE
         wv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780366061; x=1780970861;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jt2LZm0PooC4LAESsvLVYBRpo2bsthQLNN+dMIi4wx0=;
        b=XoXK6NCQKg/9PEMVjK8exfcu4zGRJC/n3GuwWI79yAkxinWxv7HEWK/cWE7W/7C4Ii
         3srIF3e/dgFAyijUYWpjDaDu0Mvl9DCznVchYk+7JT6C3uexCnZFQcz6/Sc2hlqbAgID
         e2jiI81w1oA1duTT77IOuN/cjCTPJxeDtupxz73UsnOr8UBi6XBmUUucG/htGGK18q97
         8lbmKH6seT03tY9OdT4/WbS4pIQe+e1BmnOGyZ/2TW7p8BrFxDZhiW7pjHM8hgegjwhj
         tbwkqQ+46TD0O8i+5igRz9aymHuuOy+tlLNiafQdUTXoLiM33fkrFQw1U+WVXVd7aNdH
         RCNQ==
X-Gm-Message-State: AOJu0Yz0/yRDKeAsxzbgklhcXDFrCT5F1Pqbk4I9T4CS/kkKgJdoYAqB
	G2QnmJKBGH2bdKI8rCN6CWJ/C3GNCuHbcVSw3/C97dpmwDzgBSgPH5zrDlio/Q+CJmC+xK7lRUU
	y7RMy04Gm0LR1DL/+leE8BZbhhEetcxWrU4exw79dOXoK
X-Gm-Gg: Acq92OGvMcXN/hJ2B7O+rQrBRmMWYJGuoxAQrEYjF7kt1ef8EFAqZPyRLnWxRv64y//
	8TsgPaWjWUcU7tGb5f6+DF3iuXNTLIBUd43gn5r7rBZaC60KJ5yURqKkigQOlLoZYGHi5UQfUQw
	A105Gl96dMRVgeHF1GZw6Jswvs/+KSCr5ROVC0ezpbB5Zi5vPxE2VInk8diCFMd6OFwVu3Z2nUm
	bCDm0Z5yJT3pl6yezQ9XwTL5ku/NRbq24S1NBm1BpqveUe39sjJcxle4jRn3lrY00/3BdzevtP5
	zcjCRIEJuXSHaxAXRc+Dze3sgBAfNz1LStdBuJAAL2bGZf0C/QQ=
X-Received: by 2002:a05:6808:c2b3:b0:485:290e:8ba1 with SMTP id
 5614622812f47-485fb1871eamr7888760b6e.8.1780366060615; Mon, 01 Jun 2026
 19:07:40 -0700 (PDT)
MIME-Version: 1.0
From: Bakabaka_9 <qilunuobakabaka9@gmail.com>
Date: Tue, 2 Jun 2026 10:07:29 +0800
X-Gm-Features: AVHnY4KoE0uXXQADjNhSM3p0zQqxoO5Ikgpe8st7fXpOwEAcdpqxuPHtbFmazaU
Message-ID: <CA+W5nyiFPweL5LDEKpUSJAo8NhKQz53o=d=9HBdHipQ7d0N3Mw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009cfb2406533bc69b"
Subject: [oss-security] BIRD/BIRD2: stack buffer overflow in BGP AS_PATH mask matching, CVE pending

--0000000000009cfb2406533bc69b
Content-Type: text/plain; charset="UTF-8"

Hi oss-security,

I would like to disclose a vulnerability in BIRD 2.x's BGP AS_PATH
mask matching code.

Summary
=======

BIRD 2.x can crash when evaluating a crafted BGP AS_PATH with an AS
path mask filter, for example a filter using syntax similar to:

  bgp_path ~ [= ... =]

The issue is triggered during AS_PATH mask matching, involving the
path expansion and matching logic used by as_path_match(). A sufficiently
large or specially crafted AS_PATH can exceed a fixed-size stack buffer
used during matching.

The confirmed impact is denial of service of the BIRD daemon. Memory
corruption was observed under AddressSanitizer. Code execution has not
been demonstrated.

Affected versions
=================

Tested affected:

- BIRD 2.16.2

Possibly affected:

- Other BIRD 2.x versions using the same AS_PATH mask matching
  implementation.

Not affected:

- Unknown.

Fixed version
=============

No fixed version is available at the time of this disclosure.

CVE
===

A CVE ID was requested from MITRE on 2026-05-28, but no CVE ID has
been assigned yet.

Impact
======

A malicious or compromised BGP peer can send a crafted AS_PATH that is
accepted by BIRD and later evaluated by a local AS path mask filter.

When the crafted AS_PATH is evaluated by the path mask matching logic,
BIRD may overflow a stack buffer and crash. This causes denial of
service of the routing daemon, BGP session resets, and possible route
withdrawal or route instability depending on the deployment.

The confirmed impact is remote peer-triggered denial of service.
Memory corruption was observed under ASan. Remote code execution has
not been demonstrated.

Attack requirements
===================

The following conditions are required to trigger the issue:

- The attacker must be able to establish a BGP session with the target
  BIRD instance, or otherwise send accepted BGP UPDATE messages as a
  configured or trusted peer.

- The target configuration must evaluate the received AS_PATH with an
  AS path mask, for example by using a filter expression such as:

    bgp_path ~ [= ... =]

- The issue is easier to trigger when BGP Extended Messages are enabled,
  because larger UPDATE messages allow larger path attributes.

- Confederation AS_PATH segments may make simple length-based
  mitigations unreliable, depending on how the local filter checks
  AS_PATH length before path mask evaluation.

This is not known to be directly exploitable by an unauthenticated
Internet host unless that host can become an accepted BGP peer.

Technical details
=================

The vulnerable code path is in the AS_PATH mask matching logic. During
matching, BIRD expands or processes AS_PATH data for comparison against
an AS path mask. The matching logic uses a fixed-size stack buffer, but
the effective expanded path representation can exceed that buffer for
large or specially crafted AS_PATH attributes.

In a local test environment, a crafted AS_PATH received from a BGP peer
and evaluated by a filter using AS path mask matching caused an
AddressSanitizer-detected stack buffer overflow and terminated the BIRD
process.

The reproducer used a local lab with two BIRD instances configured as
BGP peers. A full weaponized reproducer, raw BGP UPDATE payload, and
packet capture are not included in this initial disclosure.

Mitigation
==========

Until an upstream fix is available, operators should consider the
following mitigations:

- Avoid applying AS path mask matching to routes received from
  untrusted or semi-trusted BGP peers.

- Avoid using filters such as:

    bgp_path ~ [= ... =]

  on untrusted input unless AS_PATH size and structure are strictly
  bounded before evaluation.

- Do not enable BGP Extended Messages for untrusted peers unless they
  are required.

- Reject unusually large AS_PATH attributes before any AS path mask
  matching is performed.

- Be careful with simple bgp_path.len based checks, as confederation
  AS_PATH segments may not be accounted for in the same way as they are
  expanded or processed during matching.

- Restrict BGP sessions to trusted peers.

- Use TCP MD5, TCP-AO, GTSM/TTL security, strict prefix/AS_PATH policy,
  and session-level filtering where applicable.

- Monitor for unexpected bird/bird2 crashes and BGP session resets.

- Run BIRD under systemd hardening and automatic restart policies as a
  defense-in-depth measure.

Upstream status
===============

The issue was reported to CZ.NIC on 2026-05-02.

On 2026-05-24, CZ.NIC stated that they do not currently plan to fix
the issue.

No fixed release is available at the time of this disclosure.

Timeline
========

2026-05-02: Vulnerability discovered.
2026-05-02: Reported to CZ.NIC.
2026-05-03: CZ.NIC acknowledged the report.
2026-05-24: CZ.NIC stated that they do not currently plan to fix the issue.
2026-05-28: CVE requested from MITRE.
2026-06-02: Public disclosure on oss-security.

References
==========

- BIRD project: https://bird.network.cz/
- Upstream report: private report to CZ.NIC, not publicly available
- Proposed patch: not available
- CVE request: pending

Credits
=======

Discovered by Bakabaka_9.

--0000000000009cfb2406533bc69b--
