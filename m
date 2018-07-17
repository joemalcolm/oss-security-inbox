X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2686" "Tuesday" "17" "July" "2018" "10:16:06" "-0400" "Justin Bull" "me@justinbull.ca" "<CAFB0D2SFn6Hc2NQcHrTc3d2Pmx0SgE37Y1LjxhGVEXhRprBr=g@mail.gmail.com>" "87" "[oss-security] [CVE-2018-1000211] Public apps can't revoke OAuth access & refresh tokens in Doorkeeper" nil nil nil "7" "2018071714:16:06" "[oss-security] [CVE-2018-1000211] Public apps can't revoke OAuth access & refresh tokens in Doorkeeper" (number mark "U       me@justinbul Jul 17   87/2686  " thread-indent "\"[oss-security] [CVE-2018-1000211] Public apps can't revoke OAuth access & refresh tokens in Doorkeeper\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23767 invoked by uid 550); 17 Jul 2018 14:34:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13389 invoked from network); 17 Jul 2018 14:16:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinbull-ca.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=z5CC9DPjhhVGILda0OCNvbAh/TW2iB1+ljH7MGfs/PE=;
        b=Zcp2JlP/8out2ZMAyx3oc1y0bUkTat9l1QQrNt4HYmR0b86inJVy+fr1vWqepaDq5j
         4yBWuYoVoM0l7cfu8pdlucTf6ie5AIlaG5jXw6/tzOnhzQI8d2/frOnlZO2oAtO9aiSl
         QJ5lW1355kXLY5Kw5H9S9twD8Jg9Dk1doDvmZe16QrlYxElKo2xhIcu6H67WrMixoBsi
         bWS+BY9aQNksstQepU4cNfHLZ7FwHI7rn8duoMsNmNww4Zf43edoo627hQ6A7x52hifX
         BpeXi17BvtNM6TAw6+KCL7e9gCxXQ9gFKHcmjeh4RKA6/P5oIJPlSnrpWHHWXrUEOjHk
         V0SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=z5CC9DPjhhVGILda0OCNvbAh/TW2iB1+ljH7MGfs/PE=;
        b=teoLm1rUrNpgZBEPBSRp06TUrmovvh37OJ0448m2sjLYCg/RSkX0zelKZZ3z9biU3D
         fbtdfTWZ9QPPAdfucMSI39bTyxwzZLZmk+eXSKo0d3NN9lMTAHWCeXi1ap+ADdTrjjDA
         KNFurfbKN1v3f3W5zCKOqu4v9ih7irmz3YYi8iB5zcfIrLRk1rwcSXyO5/5JqywYkd5G
         RlemdcpifshcXKdHn19FuU87ehTglb6EI1AZ5PMht2UybUnnCrDChgK48o3BQ+hkvHHL
         mIcrkA6FKr2ELpFqQAZHO5oIJ7qRmp9fvf78crL63tySFLjPkFhlG0xJyYbKGA7NDCVm
         4ZXw==
X-Gm-Message-State: AOUpUlGmA15fosHlrTB5ehppCkLhqOpyZpriBVKsR16g1YdwCBUZaNNT
	K0ZwYHtcNMF9U5gw0OPuVNKjY7g/zl3ESexQmx2FIyJjxA==
X-Google-Smtp-Source: AAOMgpdLnhJf+RHTJX8rZWPUNrG9vfueItxWP9e5OdTrqf+ApRM/iASmGTjEVuQyTMTBzhaXd6KT1U24ZXZ6UDtXvJo=
X-Received: by 2002:adf:a541:: with SMTP id j1-v6mr1672406wrb.155.1531836986582;
 Tue, 17 Jul 2018 07:16:26 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [76.9.198.110]
From: Justin Bull <me@justinbull.ca>
Date: Tue, 17 Jul 2018 10:16:06 -0400
Message-ID: <CAFB0D2SFn6Hc2NQcHrTc3d2Pmx0SgE37Y1LjxhGVEXhRprBr=g@mail.gmail.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	fulldisclosure@seclists.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-1000211] Public apps can't revoke OAuth access & refresh
 tokens in Doorkeeper

Good morning everyone,

A security bulletin for all of you.

Software:
--------
Doorkeeper (https://github.com/doorkeeper-gem/doorkeeper)

Description:
----------
Doorkeeper is an OAuth 2 provider for Rails written in Ruby.

Affected Versions:
---------------
4.2.0 - 4.3.2
5.0.0.rc1

Fixed Versions:
-------------
4.4.0
5.0.0.rc2

Problem:
--------

Any OAuth application that uses public/non-confidential authentication when
interacting with Doorkeeper is unable to revoke its tokens when calling the
revocation endpoint.

A bug in the token revocation API causes it to try to authenticate the public
OAuth client as if it was a confidential app. Because of this, the token is
never revoked.

If Doorkeeper is used to facilitate public OAuth apps and leverage token
revocation functionality (RFC 7009[1]), upgrade to the patched versions
immediately.

Impact:
-------

All public, non-confidential clients respecting the RFC will not have their
access or refresh tokens revoked when sending a valid, well-formed &
unauthenticated revocation request to doorkeeper.

Any such clients relying on Doorkeeper's revocation functionality are
susceptible to a session replay attack, even after the victim terminates their
session via a revocation/log out.

1. Attacker gains access token via any acceptable means (MiTM, physical
   computer access, bug in client code, etc.)
2. Victim logs out/attempts to revoke the access token
3. Attacker is not affected, as the token is still valid for the duration of
   its lifespan. Furthermore, the refresh token can be used to extend the
   attacker's privileged access.

This scenario is captured under the OWASP Top 10 (2013)'s A2: Broken
Authentication and Session Management as a vulnerability[2].

Solution:
---------

Doorkeeper needed a structural update so it is able to define which OAuth
client application is intended to be public or confidential.

With that now available, the tokens revocation API knows to either enforce
authentication (as required for confidential clients) or accept just the client
ID (as is the case for a public client)[1].

See the following PRs for more info:

* https://github.com/doorkeeper-gem/doorkeeper/pull/1119
* https://github.com/doorkeeper-gem/doorkeeper/pull/1031
* https://github.com/doorkeeper-gem/doorkeeper/issues/891

Credit:
-------
All credit to Roberto Ostinelli[3] for discovery.

Thanks to the Distributed Weakness Filing Project for a swift assignment of a
CVE identifier (CVE-2018-1000211).

References:
-----------

[1]: https://tools.ietf.org/html/rfc7009
[2]: https://www.owasp.org/index.php/Top_10_2013-A2-Broken_Authentication_and_Session_Management
[3]: https://github.com/ostinelli
