Received: (qmail 11688 invoked by uid 550); 17 Jan 2026 19:46:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14256 invoked from network); 17 Jan 2026 16:20:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768666816; x=1769271616; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OWBRAbEuP2QWYNHDeRIM8+D1irUYZrwslBo9dxmuOhc=;
        b=PfZAMsxpsrJhyV1ujGkMQJeZ145iBsKk1XQcQ1JRxJrQaC4I2dkffKAEKOVZ6txicN
         mPqTO9mb8J0N79wx2vdgaJv3tQhmYBENbCu9kuc5DjAYJ018KKhZX4e/ZDOkEcB3z3Oq
         p5bgocZ42F8DAKs4Ajgbw++M0um0VcUYMYunLI2RZ+vAf9CG/zQqLYVEoPELF1ggsKtO
         TOLSZkOoosaOI4+xwD2OFU/PDBugRbijoYnbDI11ajmrvc4GuNoTY6xEFSvyt/lKp9n6
         IkmtjHgWA2zEYCyXBFB+w1etOz6jQ/yzAdi4FHXbYzlC8h/J1szxy7QrJDQ2STPtLL1g
         XWWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768666816; x=1769271616;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OWBRAbEuP2QWYNHDeRIM8+D1irUYZrwslBo9dxmuOhc=;
        b=gFxWbJz/NFdpNt4OIjbNu6TJxOo2RNsw9scFwtYNZOdK72qt8BjMl9+HU9yxNHmOl3
         n+D+upFOz59bXHfvz1zM06UvBpkxEUrRKw2a9jJJAsTRtT5BaDmOm5yJOycYzUrCKw3r
         B9goGMXv021TDHTVOxWblZsls8qdXPWHb20keVtSZ60mJ6GnN6+6uPvC8qvwyPbGErmT
         W/VchFFd7pGJDKO4S8oLX9CZ7FaRDPtsnT0tyzmylyUESfp0Q9vqnPrUqiSF/cjGVMlE
         3/pYW3r9GEP1RyDR23YkX5y8OM9bfgSqOgzam1qBVaWEWzy41QvzVy4e4d+XK16ftAEe
         JWPA==
X-Gm-Message-State: AOJu0YzNSHcGhKeuIvOWMJfgTktuaYI7uxz7mPNHNh1j106ddlXBuU7a
	/KOHTVLIVlqalWsWmlLXUazXYf3LTfHJZmaW/M4nq8eZ9qhQIsSJ7sO2T688qtQUt2FgSBZjSko
	Hz7Eg/k4zuZcinf6AdtJ9ZThcST7povcGNuYqD3A=
X-Gm-Gg: AY/fxX5OTafyFdPXpGkhG6xl7GMvIcPN7aX73Xzl6E+YHGvcEWr/u5g5bOEedg/zBVV
	TLDj7i+Z2HVsIDcO0HBdeXs8Yp54acATnL37JOrB3d2JWF0yVylY2oBlw4fe0rM3jGgw28hIWK3
	haJTQBCEkiy7zY+jOaABea5AEbz9IvCP9wg+tj5FlfFQ37xwctc5TS8YX87VcnWzWMXHXrCwlFK
	06i2V3Ra/1BGauG2E26FfzrAVqeJM4mtj1qBeEOAWR3tXN/KiEg7ouI3Yp6+SD4JBDbVHqfP87j
	sowbvAlY
X-Received: by 2002:a17:907:6e87:b0:b83:9767:c8ba with SMTP id
 a640c23a62f3a-b8792dcddddmr465804466b.17.1768666815416; Sat, 17 Jan 2026
 08:20:15 -0800 (PST)
MIME-Version: 1.0
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 18 Jan 2026 00:20:04 +0800
X-Gm-Features: AZwV_Qg7MWJjvHvT8HmKYydkBRzohsbA7uziR-hkpF3TNb19GL5-4o04FM7jhz4
Message-ID: <CALj3r0jnYcmJ9-ymGs1X3_t7=9OV6UbvVJ7nmiuXpfe+9yN9Tg@mail.gmail.com>
To: oss-security@lists.openwall.com, security@suse.com, 
	team@security.debian.org, secalert@redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-68121: Regression and Incomplete Fix for Go TLS Session Resumption

Hi,

I am the original reporter of the vulnerabilities recently addressed
in Go 1.25.6/1.24.x (CVE-2025-61730, CVE-2025-68121).

I am writing to inform the community that the official fix provided by
the Go security team is critically flawed and causes significant
regressions in the networking ecosystem (notably breaking quic-go).

1. Missing Root Cause in Official Advisory

The official advisory attributes the risk to "misuse of APIs," but the
root cause is a fundamental logic error in Go's TLS 1.3 state machine
during session resumption.

Specifically, it fails to re-validate the identity of the trust anchor
when a session is resumed, allowing for Cross-CA certificate bypass.

2. Flawed Patch Implementation

The current official patch (CL 735051) contains amateurish errors that
undermine its effectiveness:

Incorrect Indexing: It attempts to verify peerCertificates instead of
the verifiedChain (that include RootCA).

Ecosystem Breakage: By aggressively blocking Config.Clone logic to
"fix" the issue, it has paralyzed 0-RTT and session resumption in the
QUIC ecosystem.

3. Proposed O(1) Solution

I have proposed a far more elegant solution that performs a
constant-time SHA-224 fingerprint check of the root CA.

This fixes the vulnerability without breaking the Config.Clone
semantics or performance.

Details and Discussion:

https://github.com/golang/go/issues/77217

I encourage downstream maintainers (SUSE, Red Hat, Debian) to review
the fix before deploying it to mission-critical infrastructure.

Best regards,
Coia Prant (rbqvq)
