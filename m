X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2345" "Thursday" "31" "May" "2018" "19:31:02" "+0100" "Matthew Wild" "mwild1@gmail.com" "<CAJt9-x4hcHPjWShOPMrZDQRoUvhJ7ZDo5ntANoTvR-m5ma2w6w@mail.gmail.com>" "90" "[oss-security] [CVE-2018-10847] prosody: insufficient stream header validation" nil nil nil "5" "2018053118:31:02" "[oss-security] [CVE-2018-10847] prosody: insufficient stream header validation" (number mark "U       mwild1@gmail May 31   90/2345  " thread-indent "\"[oss-security] [CVE-2018-10847] prosody: insufficient stream header validation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28457 invoked by uid 550); 31 May 2018 18:38:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20271 invoked from network); 31 May 2018 18:31:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qnTIZo0afaUUCUatRCsXxc/GL3crtPcguCOGbvOr6Co=;
        b=F7i0nb9PIn/oXxT7MYU6BGx1ZIR3FQN5JzMJzZZyCtYFgcST3Brm+8z7K4pbr3Dy8u
         cXgxvtK1T+truw9xnN7cEfM41T4AgUE4Lp+emCP1qZIFoEOLFrKuctxTtxvToXUaXGxY
         UmXE7uuAdZt008msPSG5f4Sov1+YEUwiiFF2LZzhNGioB+OurL3OLIdeXgWaW4ZKwgI8
         /poDZO8bYC89y6eNVuwD4ThzVD7u1FsBC7mkG4yVXcCRy+0nClkzoYbst4nOgYCwc0+q
         6Bhp4Dm/YIu80PVQnavOUBxBHZ3ZW+mvllqDaRSd7vHLhX8LSIDVTTXmfjlSpjEnr5RG
         +HbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qnTIZo0afaUUCUatRCsXxc/GL3crtPcguCOGbvOr6Co=;
        b=C8j9oBuJSFdxX8YTu0jYVk1X+sElNmB0WP1nQkn/f3k/bWWuYGkDVNNJz3aKIaq9n6
         o9AOSJ7DCitfi0p6w3qxu0PWBMgLWWypGO5tcAwOXPQS9MiUwOEdngP691hg5eSHymOD
         9vGroNdLDyvM/gGcdslw3Roo4qXtobpP4Hi8U6hEzxuI79ZfNAYoePUybAb8OUgiMlDX
         AicYAdqQobVWSFXW0ZtH5B/dgqV+VmeEMfix8GJWHWPJAvAEdRIDe54uj9B9VhmabGaw
         cV3cGbM7OdaOgV6daYkJvMCLmIJvljsUusvbrZw377/29FMInuqVHxM95+YVDIOSh5Yy
         7GIA==
X-Gm-Message-State: ALKqPwe3PhhfKfHjO7aMBbRsuvMQsBM4MG5DUxS1U/U9DFaaYA41XGpb
	gw64VeV+v0z5flA2C30KJ+t8zRhzPZQkYdHdowb2WXc4
X-Google-Smtp-Source: ADUXVKJMiS+XB9ptF/Stegk5XFrlZvmi+/logaXcvAuKzRuT/sxMJk9zWG7QeHouYpYsXVdTFHTFZ6BB5TEQhnZRRNM=
X-Received: by 2002:a6b:e704:: with SMTP id b4-v6mr7928671ioh.239.1527791482835;
 Thu, 31 May 2018 11:31:22 -0700 (PDT)
MIME-Version: 1.0
From: Matthew Wild <mwild1@gmail.com>
Date: Thu, 31 May 2018 19:31:02 +0100
Message-ID: <CAJt9-x4hcHPjWShOPMrZDQRoUvhJ7ZDo5ntANoTvR-m5ma2w6w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-10847] prosody: insufficient stream header validation

Prosody security advisory 2018-05-31
====================================

CVE-2018-10847
------------

Project
:   Prosody XMPP server

URL
:   https://prosody.im/

CVE
:   CVE-2018-10847

Date
:   2018-05-31

Affected versions
:   0.9.x prior to 0.9.14, 0.10.x prior to 0.10.2. All prior series affected.

Fixed versions
:   0.9.14, 0.10.2

Description
-----------

Due to insufficient validation of client-provided parameters during XMPP
stream restarts, authenticated users may override the realm associated
with their session, potentially bypassing security policies and allowing
impersonation.

Details
-------

Prosody did not verify that the virtual host associated with a user
session remained the same across stream restarts.

In practice this means that a user may authenticate to XMPP host A
and migrate their authenticated session to XMPP host B of the same
Prosody instance.

Note that successful authentication to host A is required to initiate
the attack. This includes SASL ANONYMOUS.

Overriding the authenticated username is not possible via this exploit,
and this limits impersonation to usernames on host B that the attacker
also has access to on host A. In the case of ANONYMOUS authentication,
the username is random and enforced by the server.

If a user has the account user1@hosta.example, they may impersonate
user1@hostb.example, with security policies of host B applied.

Affected configurations
-----------------------

Prosody deployments configured with multiple virtual hosts are
vulnerable.

Standard TCP connections and websocket connections are affected,
but BOSH connections are not affected - i.e. deployments where
the only access to Prosody is via BOSH are not vulnerable.

Temporary mitigation
--------------------

Patch available.

-  stable 0.10 branch:
https://prosody.im/security/advisory_20180531/issue1147-0.10.1.patch
- old stable 0.9 branc:
https://prosody.im/security/advisory_20180531/issue1147-0.9.patch

Advice
------

All users should upgrade to at least 0.9.14, 0.10.2 or check their OS
distribution for security updates. Users of development branches (0.10,
trunk) should upgrade to the latest nightly builds.

Credits
-------

Reported by Princess Pepperoni from nonfree.pizza

Links
-----

  - https://issues.prosody.im/1147
  - https://blog.prosody.im/prosody-0-10-2-security-release/
