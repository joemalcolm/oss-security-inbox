Received: (qmail 9548 invoked by uid 550); 31 Oct 2023 14:57:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5239 invoked from network); 31 Oct 2023 14:52:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=synadia.com; s=google; t=1698763926; x=1699368726; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lfL+QFb0Uo/FaaDrESlEK3uNMd/Dqbu+dwTKerL7D90=;
        b=N5HPymTAezpKPXECRLLuEJf4jIKuiZkw3rR6p88U8TvKQ9vheqba0jyJx6NHezOk4u
         rjEC8fAVjL2PRCKmDvjmDJqjLCDF3/kyVQY6egQzsO0slhnFQNWm0wL/EMyYcBHTWjnT
         FVQ/XzBZ0EjiiJcP0PEZ/MTY8JHH1RMZoRxoTQiXDXDjMw1cRWf9CuvQZHVKuTdM5N81
         H/ZWyWQe0X+mjAXYvs/aTPxvDbaoQICDA/IMeiIqGXmC+5veb1c1Y6iu3+mwjj9yavFW
         dMBfnO8YONyjvfl0GRPxwtaVS+l7casq5saG6ce5roUCovzz0bLA7+0L0lJIPgc/Pl6J
         G3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698763926; x=1699368726;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lfL+QFb0Uo/FaaDrESlEK3uNMd/Dqbu+dwTKerL7D90=;
        b=rEDDBa5vyKGh0Qebpvk29pdFDwxAmhi9TVmEqyjQ34k5LJ286Af+C4dyCo+9gSi0a2
         nVpCtk+FW2rg25b6JznQSCVicrGppE+8W9e6YQtj6/RCEtsJ745oqVI8eX/SMVGZwfYH
         i3PnN+ACRuYDjfwLSv9dJKlMT79SnlkRxTtZ5qHtiHRs9TVr5H+qbi+J7CmGx9K5uooI
         dcaavJcTxghAz/jEmUeTRpU5jFUr4DXB3HFt/upR1WztZSwsdd7qFWdEH4rFLyCbCBrr
         x8ehvpGhPOQQ6f73lO2lS9CGv5/EcOV3zySPAuyF1e1qpwxqAl1gGXRWaEY4XooYNnxe
         HRGw==
X-Gm-Message-State: AOJu0Yx06ikfb62Uv2jdVoWxQMY1JvQsznOdpi9L3COtnUnZ4DACyQhb
	siCButJjBZ7caDeiU27gFeHT/SSUf0bANVC5NIfFgLayOcZgbA0KnSU=
X-Google-Smtp-Source: AGHT+IHcoA7Ct80vzEM+tJjZjhDYVwcK6OZyNWoFt6njVjTxLyZ18dM9ctsdFhfLoh4c39k1+4VsWYTT+OAeDXMJfpM=
X-Received: by 2002:a05:651c:327:b0:2c5:15a5:826a with SMTP id
 b7-20020a05651c032700b002c515a5826amr9216602ljp.19.1698763926152; Tue, 31 Oct
 2023 07:52:06 -0700 (PDT)
MIME-Version: 1.0
From: Byron Ruth <byron@synadia.com>
Date: Tue, 31 Oct 2023 10:51:55 -0400
Message-ID: <CAPS+KmmW-6ar9R-8g93sUs2j4FTr6j9Euff1h-Bp=G9=Wd6Evw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] NATS: 2023-02: nkeys: xkeys Seal encryption used fixed key for all encryption

NATS-advisory-ID: 2023-02
Aliases: CVE-2023-46129, GHSA-mr45-rx8q-wcm9
Date: 2023-10-26
Fixed-In: nkeys 0.4.6; nats-server 2.10.4

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.

The cryptographic key handling library, nkeys, recently gained support
for encryption, not just for signing/authentication.  This is used
in nats-server 2.10 (Sep 2023) and newer for authentication callouts.

Problem Description:

The nkeys library's "xkeys" encryption handling logic mistakenly
passed an array by value into an internal function, where the function
mutated that buffer to populate the encryption key to use.  As a result,
all encryption was actually to an all-zeros key.

This affects encryption only, not signing.
All usage of nkeys prior to the January 2023 0.4.0 release was
signing-only.

Within the nats-server, the encryption is used for the Auth
Callouts feature, introduced with 2.10.0 (September 2023).
The Auth Callout request includes the supplied user password.
These messages are sent within NATS, and should typically be in a
dedicated NATS Account used for callouts, but this is not required.
Thus in scenarios where the Callouts are in an account shared with
untrusted users or where the callout responders connect without TLS,
this may lead to user credential exposure.

Affected versions:

nkeys Go library:
 * 0.4.0 up to and including 0.4.5
 * Fixed with nats-io/nkeys: 0.4.6
NATS Server:
 * 2.10.0 up to and including 2.10.3
 * Fixed with nats-io/nats-server: 2.10.4

Workarounds:

None available.

Solution:

Upgrade the nats-server.
For any application handling auth callouts in Go, if using the nkeys
library, update the dependency, recompile and deploy that in lockstep.

Credits:

Problem reported by Quentin Matillat (GitHub @tinou98).

References:

 * GitHub Security Advisory for nkeys & nats-server:
   <https://github.com/nats-io/nkeys/security/advisories/GHSA-mr45-rx8q-wcm9>
