Received: (qmail 24160 invoked by uid 550); 24 Apr 2024 21:18:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24126 invoked from network); 24 Apr 2024 21:18:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20230601.gappssmtp.com; s=20230601; t=1713993480; x=1714598280; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8HTNtOtMQlxZhgdI7Y357n+1AaTBlQRLAe1E2FlYGpM=;
        b=O5WtPcwC2xVz7v4Z87ndG+BRbIkmpRx5A3I+1a9hgInn+B+z7igocvTDXisDMsInsa
         BoDHbcdIPYl9dYLiLmdtTplBypGqzFfg0BLn8zCsbaYk1viIASVQs7xJ5HgEjfceCR+E
         ZueIVtG00oHQVjLqvLZ4pcZ4QoEQuGP7xF+rknDg2RZ41ermSqQI5b8Xn6Ayt8YqvuIn
         mPiA+ikMtvXsWlxRS1Ut07MEi2uMvDmvLw11HZW+ibJtbvLKZ6KZq7zNLtuCKE+arEei
         a210KxQZ7GDh5dt5qofdQu/ON9ekw0FLClqh/I/9QtKRx9aD8hPHHzVkcpjfqn4eXHQa
         2u2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713993480; x=1714598280;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8HTNtOtMQlxZhgdI7Y357n+1AaTBlQRLAe1E2FlYGpM=;
        b=nlhRkopbdUzw7raL6SdRYEoGsGZF+79tavfXpnBch3sCatmezDX42wz0gZ7K6fNtKZ
         Zrh3NJjHSvF94nFLvh7AuTr0WsSgFpNBFXTlOlix6+z9tBXYEvwNWHfFNgugz2hcEXCJ
         5naTbQIAI0x7WkgQgq1pFIwx/GDrWU3Vsx1ICmZnkTUVXKB2old8ER22iHDlkofGuLnP
         t7jhGNIKo1uAnLjk+aaTNbQFENTJcS/2xJ9OH+RX4BHDQUz8Bv02NnAtXG91uO3aVTkG
         AOuv/jgHv6vd7mOEJ4gyxr23dWhR6Rc/K1NkZAzTFLppei4+H9+5kOJQNPQpn2l5hGz6
         bmnA==
X-Gm-Message-State: AOJu0YzzwcICo5nB5QLrN4MsliRt/Jz5BRRrmntl5JPse96GJZPv134i
	JMNE1MOF7xxjw5vvnWCa25c/kwoRV9ngqTP5fjEsiOIU3reMFfd/3tof9psd1hnFrlRV/5QhI7d
	bZIzlma2PPXm8q0kb6uyN5ssgSu+0x/DvYvPbH55h2Haf3cLU9Uw=
X-Google-Smtp-Source: AGHT+IGvqZ96wW45XUKCvMuk8DSy2ntk3QFB/VAPfD0QkJ6y4gRiNd/EW9luP90oNq9z8p1jNUSlgcn60uKnI6wkylI=
X-Received: by 2002:a17:907:6d16:b0:a55:63de:9aa9 with SMTP id
 sa22-20020a1709076d1600b00a5563de9aa9mr2986564ejc.49.1713993479847; Wed, 24
 Apr 2024 14:17:59 -0700 (PDT)
MIME-Version: 1.0
From: Paragon Initiative Enterprises Security Team <security@paragonie.com>
Date: Wed, 24 Apr 2024 17:17:47 -0400
Message-ID: <CAKws9z1Rb7ELFB1qL_CJZXoP3R4UJEi4k8JQ+VPTz=r=xnAwZg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000839c590616de34c8"
Subject: [oss-security] Security Issues and Abandonment of PHP ECC library (mdanter/ecc, phpecc/phpecc)

--000000000000839c590616de34c8
Content-Type: text/plain; charset="UTF-8"

Good afternoon, OSS-Security Mailing List readers.

We are troubled to report that the PHP elliptic curve cryptography library
known by the packagist name "mdanter/ecc" and the GitHub URL
https://github.com/phpecc/phpecc has not responded to our attempts to fix
security issues from the year 2021.

https://github.com/phpecc/phpecc/pull/280
https://github.com/phpecc/phpecc/pull/281

These pull requests fix a particular problem with generating an ECDSA
signature: Calculating the modular inverse of your one-time secret, k, in
constant-time.

*Put A Fork In It*

After reviewing the situation and failing to get in contact with the
maintainers (their websites are offline and emails are bouncing), we opted
to fork this library. https://github.com/phpecc/phpecc/issues/289

Our fork can be found at this URL: https://github.com/paragonie/phpecc

Additionally, several more issues have been discovered as we review this
code:

1. *Signature malleability* (i.e., (R,S) and (R,n-S) are both accepted).
This is particularly troubling since many of the projects that depend on
mdanter/ecc <https://archive.is/Q3EkJ> (archive.today link) are
cryptocurrency-adjacent. We fixed this in v2.0.0 of our fork
<https://github.com/paragonie/phpecc/releases/tag/v2.0.0>.
2. *ECDH Timing Leaks*. The way ECDH works is that it grabs the math
adapter from the public point and uses that to compute a shared secret with
the secret scalar. Despite the pains taken to implement a Montgomery Ladder
for scalar*point multiplication, the underlying algorithms' use of GMP were
timing-leaky. We fixed this in v2.0.0 of our fork
<https://github.com/paragonie/phpecc/releases/tag/v2.0.0>.
3. *Branch-based Timing Leaks in Point Addition*. Point addition contains
slow code that runs if a condition is true, and fast code that runs if the
condition is false. This exposes a branch-based timing leak that doesn't
require advanced techniques (e.g., manipulating the CPU's branch predictor)
to trigger. We fixed this in v2.0.1 of our fork
<https://github.com/paragonie/phpecc/releases/tag/v2.0.1>.

The incumbent library has nearly 5 million installs according to Packagist
statistics <https://packagist.org/packages/mdanter/ecc/stats>. This
includes historical installs that were replaced with newer versions, so the
actual installed base is smaller, but probably only by 1 or 2 orders of
magnitude.

*Actions Taken to Proactively Mitigate Risk*

After we announced our fork, and the motivation for it, the Packagist
maintainers have marked the mdanter/ecc package as abandoned
<https://github.com/phpecc/phpecc/issues/289#issuecomment-2075703542> and
recommended our fork.

Projects using the Roave/SecurityAdvisories
<https://github.com/Roave/SecurityAdvisories> package to block vulnerable
dependencies from being installed will begin receiving a version conflict
with any version of mdanter/ecc as of 2 hours ago (from when we write this
email).

We opened GitHub issues with several dozen dependent projects to ensure
community awareness of this issue. For example:
https://github.com/Bit-Wasp/bitcoin-php/issues/919.

Unfortunately, many of the dependents listed on Packagist are forks of
other dependents, and some had no means to contact them. To that end, we're
relying on public communication channels, such as this mailing list and
/r/PHP
<https://old.reddit.com/r/PHP/comments/1cbq3mj/pie_has_forked_phpecc_released_a_new_version_with>,
to get the word out.

*Miscellaneous*

We have requested a CVE identifier from MITRE for the ECDSA weaknesses we
reported and provided a patch for in 2021, but a CVE ID has not been
assigned as of this writing.

Our work is far from over. We expect to find and fix more bugs in the
coming weeks. However, migrating off the abandoned package is a necessary
first step to stop the bleeding.

If you have a package that currently depends on mdanter/ecc, we provided a
simple migration guide in our v2.0.0 release notes:
https://github.com/paragonie/phpecc/blob/master/doc/release-notes-2.0.0.md#migration-guide

We would also like to thank the following people for helping move this
issue towards resolution in the absence of the original package's
maintainers: Nils Alderman, Frederik Bosch, and Marco Pivetta.

Happy hacking,

Security Team
Paragon Initiative Enterprises <https://paragonie.com/security>

--000000000000839c590616de34c8--
