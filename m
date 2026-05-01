Received: (qmail 3575 invoked by uid 550); 1 May 2026 12:38:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3526 invoked from network); 1 May 2026 12:38:38 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777639108; cv=none;
        d=google.com; s=arc-20240605;
        b=Nuki5OqWTREyrw6GY6D7t/XKX+cT5gfd/vsrA6/RKSlbPed2CKTp8xsvWE3N6tJeel
         oRcC2olrUaik3E9D3qkNIhYAGD0mPHnyghc94+RBrg+b0HJIrhILSihlszV1dPU9cwkw
         xqcPM8YQddCt6posalw1HezqxR/zQO9Cr1g8FE6SHE06Zpw49BEcfwOJ2UV1w7MmFKYz
         HC5iV82FMLEWTN/xN3cJ1dQC2Ki+DoMjEowK8ND2LQYurT7dciQ+B6wySi0nhBtlxaVx
         PSGI2NLDTNe+hgdgpylpTKju10ZUHpCyCSpQGI1k3BjeGBsThkBlsFOIMjNprdlImQTQ
         ap/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=uscJk0GtU24EMM+1Bbrdpm3pfwQFg0Wb93gSnqCn3b4=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=PNSgtLD+jLdvm71fM+MeqQKf0Q17pQ9FRf7bcDInM31PNwgeJXiyjz9fdJsIm4g9N0
         ye1c/dC69kYCVwl6vq3U2LSgwPV5em+t3GCPEfCB6zF1P9srs0BHP0xAD7TPfU+HDLqZ
         V04qDfCF8F36Sp+aT47SM+bK3XLtqQk9cq93357kYlY/ks4whYgmjw6MS4O+FnYz7hlC
         81JsG6LjyfD0bgFgLbJrRaMyAxCfB1bVDa9RrMDpXn4CdtPmJAnPAaCOtHt5sdD1jtS0
         p+01Snju+afJpmh3pXxo0MW81SzpCzoopV5jzO9iRVbSvzYXLqBjdBgIxMI8ys5a1MYt
         sB0Q==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777639108; x=1778243908; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uscJk0GtU24EMM+1Bbrdpm3pfwQFg0Wb93gSnqCn3b4=;
        b=H+0Jj1BO2DAUeQA06C9YV68XJNKo4RMBilHWfEdM8SSowoNNgz9bAe29iL2X099Zcm
         0H23NZMhkEvAFGiASpwUbvAiwgb704lGtXkHfqlsK6gZ4nrIp2OM3En9mPuJGyXs3FQn
         nECNezslBMYtLk4R+U+DzXj1y5tn9fFh3nyLx18QiETvMFDODOlW4kZURRVv83IScvva
         0RqhQglWqODaxd+9cer/q37K5ODI4AVHQHv+2KDLm2DLoqCPaMnDwppgVgqvENVkknhC
         sPpg7AbOZI1ethkhfJaRr7oPlJqgNszaADVtXzzCozWYQBsXEc0zva/izdu21UDm6Bk+
         4iIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777639108; x=1778243908;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uscJk0GtU24EMM+1Bbrdpm3pfwQFg0Wb93gSnqCn3b4=;
        b=Gjoi0TwDulFC8G40Z8Tr3W04ubbuhPY/ED0p0B1fSwbhzIsOfTcVmpxKaTu1EdCcZg
         5O0tz8RUWbZYY2VTAGBD9g79t/5vQZ/sV9Bk4gSM9Ksk5yKpS/Mr9wz5S8tAdRNar0hl
         y5FXC88ScAQ7lFID7IaHJd148J1W5CbEJuQtFk09DpmmBFaf1SWZsX6SidBvkOx1l5YX
         5oUluKfMfm+U+IR5M1+XYP4kD8/DKwIxXXdQmgeD7ktWljAwGcBRpuzNU0H9n2cQzJZN
         oDspA/ksczSXJFR0CTw8mJy5PHdZL3BZHNIt+bFVXOJGnvkJwiafBDRHd0Vksm7XpFUe
         MnRg==
X-Gm-Message-State: AOJu0Yy7KyYSLOUgGHOxHXmeuHNLIcY53uHNSnPQnGOVfiyGQRIihEGW
	IDqzFYkZvRTnGLpn6Fk1j7DglpXKYKmhYju1+74D5o2WkDCWJxi2gwwdA+w7bBfWEROzNoSbnR4
	IChJAT2lSgCLUMoCNB8WtSfevUPIgNhEVpH7oq6Q=
X-Gm-Gg: AeBDieuQ6prrIBuJPe5hQn4SC4WDICp/REf6twJDaGaxPSK9e/TTVTegT5y1U6ewnp8
	62INDLfG9mAVoWiJ308vgwpcmlKDY5iz5bo5NDxjLhM/eHdsttHUgdURxNhkr53FfZRDQDRSIkr
	/1IRzBlhlrR1/KGANU7MeECUFX3lDpQGi5E9HiSNU4G0ZFDlkZ0pF1EruIM481NNP1PTYIFKidX
	1qJZBsjJOEShqTrA+bGfS8IcZVUu4CijROtB7o/KmXQnejjk/rtWZg4aj2IRwb1vsCZ98Lx8QCw
	Q1mPJdTxluas/bMlKXEmHZLqBpJzaSu0HSBzxD0ccH18+qXD
X-Received: by 2002:a05:6214:5993:b0:89c:4cac:74c5 with SMTP id
 6a1803df08f44-8b3fe7bc8f2mr121967466d6.25.1777639108021; Fri, 01 May 2026
 05:38:28 -0700 (PDT)
MIME-Version: 1.0
From: Matthew Wild <mwild1@gmail.com>
Date: Fri, 1 May 2026 13:38:16 +0100
X-Gm-Features: AVHnY4IvaTW6-JGfxhiE2aa885oHi6ViuIjMBF9hZu6AApakOmZRKS698ckFBJw
Message-ID: <CAJt9-x4hqhaH7NrFUmk0ULE7xHtNMMbE4M+miu=pQ8PNuLQ-=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Prosody XMPP server security advisory 2026-04-31 (multiple vulnerabilities)

Project
:   Prosody XMPP server

URL
:   https://prosody.im/

Date
:   2026-04-29

This advisory details two security vulnerabilities discovered in the
Prosody.im XMPP server software. Fixes are available in Prosody 13.0.5.
Deployments still using the Prosody 0.12 series can upgrade to 0.12.6.

In this advisory:

- Denial of Service via Memory Exhaustion
- Unauthenticated Use of SOCKS5 Proxy (mod_proxy65)

Full details of the vulnerabilities are below.

The recommended advice is for all Prosody users to:

- Upgrade to 13.0.5
- For extra protection, review system firewall limits (see below)

This advisory can be found online at:

- https://prosody.im/security/advisory_735dd9d3/ (HTML)
- https://prosody.im/security/advisory_735dd9d3.txt (text)

Denial of Service via Memory Exhaustion
-------------------------------------------------------

CVEs
: We have requested 2 CVEs

CVSS
: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

CWEs
: CWE-405, CWE-770, CWE-772

Affected versions
: All versions prior to 13.0.5

Fixed versions
: 0.12.6, 13.0.5

**References**

 - https://blog.unionium.org/ARTICLES/1.HTM (third-party, see below)

*Note:* We have provided the original reporter's blog post as a reference,
as it contains the original report and proof-of-concept exploit code.
However, the Prosody developers do not recommend the analysis and
mitigations provided in that post to Prosody operators.

**Description**

Traffic patterns were discovered which can cause Prosody to consume
excessive amounts of memory with much smaller amounts of incoming
traffic. This traffic can be sent by unauthenticated connections.

Prosody has per-connection rate limits. However, the protection provided
by rate limits was reduced due to amplification of memory usage compared
to the data transmitted by the attacker.

Further, Prosody does not enforce limits on the total number of
connections, allowing an attacker to increase the impact by using
multiple concurrent connections.

Finally, the attack revealed per-connection resource leaks, where a
connection could continue to consume resources in Prosody even after
the stream is finished.

**Affected configurations**

All Prosody versions prior to 13.0.5 are believed to be affected.

Further, the issues described in this advisory are closely related
to libexpat CVE-2025-59375. Fully protecting Prosody deployments
requires that LuaExpat (a required dependency of Prosody) is linked
against libexpat 2.7.2 or later (the version of expat in use can be
discovered in the output of 'prosodyctl about').

**Mitigation**

Operators of Prosody servers are encouraged to utilize their system's
firewall to limit the rate and total number of connections to their
service.

For example, 'ufw' is a widely available firewall tool which can limit
excessive incoming connection requests. To apply this limiting to the
standard XMPP ports, you would run:

```
  ufw limit 5222
  ufw limit 5269
```

iptables and nftables also have 'connlimit' features to limit the
total number of connections per IP address. Refer to the
documentation of your firewall for correct configuration.

It is **not** recommended to drastically lower Prosody's per-connection
bandwidth rate limits as described in the blog post by the original
reporter. Lowering rate limits slows down processing of an attacker's
connections, causing them to remain active for longer. This can
negatively impact Prosody's resource usage. Prosody's default rate
limits are generally considered sufficient.

**Fixes**

The attack revealed a number of areas where the resource usage of connections
could exceed expected and desired levels. Multiple fixes were applied.

Resource amplification (first CVE):

- Lower stanza size limits have been introduced for unauthenticated
  streams.\
  Commits: [8a4417d32b0f](https://hg.prosody.im/trunk/rev/8a4417d32b0f),
  [166ac7d65cb6](https://hg.prosody.im/trunk/rev/166ac7d65cb6),
  [a4327478678f](https://hg.prosody.im/trunk/rev/a4327478678f)
- Limits have been placed on the complexity of XML stanzas, to
  disallow stanzas that will consume significantly larger amounts
  of memory than their serialized form.\
  Commits: [6c7549964d4d](https://hg.prosody.im/trunk/rev/6c7549964d4d),
[1e005ba71f0d](https://hg.prosody.im/trunk/rev/1e005ba71f0d)

Memory leaks (second CVE):

- Four memory leaks have been fixed, two could be triggered by
  unauthenticated connections, and two by authenticated users.\
  Commits:
  [836a70deb3c9](https://hg.prosody.im/trunk/rev/836a70deb3c9)
(unauthenticated),
  [e27d94d8f505](https://hg.prosody.im/trunk/rev/e27d94d8f505)
(unauthenticated),
  [041c7ff18f76](https://hg.prosody.im/trunk/rev/041c7ff18f76) (authenticated),
  [374b72785488](https://hg.prosody.im/trunk/rev/374b72785488) (authenticated)

Other:

- Code to configure per-IP connection limits has been introduced,
  however this is currently in an experimental status, and it is
  preferable to utilize a system firewall to enforce such limits
  if possible. Refer to the documentation for your system firewall.

**Attribution**

The resource amplification attack was discovered and disclosed to the
Prosody team by Ley <unionium.org> in advance of their public blog post.

The memory leaks were discovered by the Prosody team during their
research into this issue.

Unauthenticated Use of SOCKS5 Proxy (mod_proxy65)
-------------------------------------------------------

CVEs
: We have requested 1 CVE

CVSS
: 5.3 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L)

CWEs
: CWE-863

Affected versions
: All versions prior to 0.12.6 and 13.0.5

Fixed versions
: 0.12.6, 13.0.5

**Description**

It was discovered that mod_proxy65's access control was broken and incomplete
due to two bugs.

Firstly, due to changes in our default network backend, a connection that
mod_proxy65 believed to be "paused" would actually be able to send data
through the proxy before authorization.

Secondly, mod_proxy65 only checked the access control rules during the
discoverability stage of the protocol, but not during the activation stage.
Any entity able to guess the domain and port of the proxy (which defaults to
port 5000) could skip the discoverability stage and would be able to use it.

**Limitations**

mod_proxy65 is designed to facilitate file transfers and other binary streams
between two XMPP entities. It is not a generic SOCKS5 proxy, and this limits
the scope of potential abuse.

For example, mod_proxy65 does not make outbound connections, and therefore
cannot be abused for forward proxying of an attacker's connections to
arbitrary endpoints. It requires both peers to make a connection to the proxy
and perform a SOCKS5 handshake.

**Affected configurations**

All deployments with mod_proxy65 enabled are affected. mod_proxy65 is not
enabled in the default configuration.

**Mitigation**

mod_proxy65 can be disabled, however this may have a negative impact on some
kinds of file transfers.

**Fixes**

Fixes were made in two commits:

- [f34ad235cf3b](https://hg.prosody.im/trunk/rev/f34ad235cf3b)
- [4bbb17445ed9](https://hg.prosody.im/trunk/rev/4bbb17445ed9)

**Attribution**

The issue with unpausing connections was discovered and disclosed by Max
Hearnden <https://github.com/MaxHearnden/>.

The missing authorization was discovered during review of the code by
a Prosody team
member.
