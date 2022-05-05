Received: (qmail 26149 invoked by uid 550); 5 May 2022 12:28:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26231 invoked from network); 5 May 2022 12:11:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hq.adiscon.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=IYhKjWcmpoj0k3YoMMtu8K+QymyXOwauBnkm8wZxpk0=;
        b=nFanQNWe9aau9tjTGCpKbOJ7IK//2lWqXHMPIGKuOBI47n6NdygnOJ89maBAV8aKHt
         8CzzXEUtAUCbZq8npqBA+Wjn618nOXhEkw7UHr2Ubo6bMYDj/nWl8zrOBSzoSfl53UTB
         n5b5oG6iQ+c8q6lv6FIjrNl/InbpqQltf/BmwMgZHIvg64J01VVxwTUvAh6qCuajSb2H
         0UQbfTppNhhx6Qg77yPRGGhXOikxauiytnFpknw138lxR1QZ+GQDeSEZvnp0bwlcA/JN
         ROgnJzcU1WVZ2/c9rWynauSGKx+/OIZNQEHuigH7pYDgAE5zGGfPrpu+nb8drRqPWxqH
         Gg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IYhKjWcmpoj0k3YoMMtu8K+QymyXOwauBnkm8wZxpk0=;
        b=T/ShXmTlUyBUlVslnRIo7mX3Oh004AAAiaKRl+m3J687qLZXcWQztWE9JIcBIcQaH2
         zMQVgi6YZrQkaMSHx94kefPySCrYYo1UMHNWshotXFt+tZmL2Nu0lijOzDPO646tOdOU
         FonVxKWZXdDBr8YXnBQYIri4DIfmBDL/S7qU2lTkWeYheIASI0/5fJVmZb/0Keof+Gfw
         WgNwmD9vFut3OxgdkBDYkdnbVLp9rNOuwyyvMI71bYWuwzpd38Hc2Kw6gqVzXnsy81TD
         NsCmH2LREqO9MTfrjq1oHNBJo3A5D5zhXs4/VKdFl5Qz1TxiNm36kmPPuZ+RIX5Z7xGx
         2wNA==
X-Gm-Message-State: AOAM533JHl4g/oCKEQYQRuEYfu3B8tZW7AiQg70ufT/ocO6eTm4Ox74t
	kXSH371Gz1+dCdY5CKVndgWslB2EaeEocYhMhXVUKWcJq9TizUF+
X-Google-Smtp-Source: ABdhPJyDTsiEfxpK0SEOzaj1ILiuepDkOZiIO7YRLnHlcfsy0kn4Hcyek9clFTRvPV0s0+vXUCVwMI2ms8yleBwm9QA=
X-Received: by 2002:a05:6638:250d:b0:32b:6430:f63d with SMTP id
 v13-20020a056638250d00b0032b6430f63dmr9026494jat.294.1651752678924; Thu, 05
 May 2022 05:11:18 -0700 (PDT)
MIME-Version: 1.0
From: Rainer Gerhards <rgerhards@hq.adiscon.com>
Date: Thu, 5 May 2022 14:10:43 +0200
Message-ID: <CADk+mPB6u97n6EsXZtmUXKn1kXaH7xtSUz3vo3Q4FoOv-RF9UQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-24903: rsyslog < 8.2204.1 heap buffer overrun

Severity: High | CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H

This is a worst case rating. When syslog best practices are applied
(no Internet access to rsyslog receivers) the severity is lower.
Details below.

Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-ggw7-xr6h-mmr8#advisory-comment-72243

Advisory content:

### Impact
Modules for TCP syslog reception have a heap buffer overflow when
octet-counted framing is used. The attacker can corrupt heap values,
leading to data integrity issues and availability impact. Remote code
execution is unlikely to happen but not impossible.

### Affected modules
* `imtcp`
* `imptcp`
* `imhttp` (contributed module)
* `imgssapi` (long-term semi-contributed module)
* `imdiag`

### Details
The bug occurs when the octet count is read. While there is a check
for the maximum number of octets, digits are written to a heap buffer
even when the octet count is over the maximum, This can be used to
overrun the memory buffer. This can also be used to corrupt other heap
buffers. Once the sequence of digits stop, no additional characters
can be added to the buffer. In our opinion, this makes remote exploits
impossible or at least highly complex.

Octet-counted framing is one of two potential framing modes. It is
relatively uncommon, but enabled by default on receivers.

Modules `imtcp`, `imptcp`, `imgssapi`, and `imhttp` are used for
regular syslog message reception. It is best practice not to directly
expose them to the public. When this practice is followed, the risk is
considerably lower.

Module `imdiag` is a diagnostics module primarily intended for
testbench runs. We do not expect it to be present on any production
installation.

### Patches
The patch is available via commit ID [PUT HERE].

### Workarounds
Octet-counted framing is not very common. Usually, it needs to be
specifically enabled at senders. If users do not need it, they can
turn it off for the most important modules. This will mitigate the
vulnerability. How to do this depends on the module:

* For `imtcp`. `imptcp`, add `SupportOctetCountedFraming="off"` to the
`input()` definition.
  Docs: https://www.rsyslog.com/doc/v8-stable/configuration/modules/imtcp.html,
https://www.rsyslog.com/doc/v8-stable/configuration/modules/imptcp.html,
https://www.rsyslog.com/doc/v8-stable/configuration/modules/imhttp.html
* For `imgssapi`octet.-counted framing cannot be turned off.
* For `imdiag` octect-counted framing cannot be turned off. However,
`imdiag` should never be present on production systems.

Note that while octet-counted framing can be disabled sending systems
have to explicitly enable it, but by default receiving systems
autodetect if it's in use. The 'normal' reason to enable it is if you
are sending logs with embedded newlines.

### For more information

If you have any questions or comments about this advisory:
* Open an issue in [rsyslog repo](http://github.com/rsyslog)
* Post to the [rsyslog mailing
list](https://lists.adiscon.net/mailman/listinfo/rsyslog)

Credits to Peter Agten for initially reporting the issue and working
with us on the resolution.

Rainer Gerhards
