Received: (qmail 3189 invoked by uid 550); 10 May 2026 19:47:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28445 invoked from network); 10 May 2026 19:34:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778441660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EbihbQ+gWNZSk0pWureDBQ7orjn29+EMOaYL560Q5EA=;
	b=SzITNbLNdWF933wE56BVNi+tNmj8+pa0FVgxt2xcf2NNXpK5G0XEpGsLMQpX+rEfnVsMPl
	fUvC0M1fuEtw02uToGXEEVR1ThHGnVLLEeBUqFARHOQSJuRtE2DKnMAoiNfslwUetEE2L1
	jbG5b/cAP06EETL1p/JydoqVZyRBe97kyMY9yovspI28V33DL8S/kKMSScQN1sJMZhPU92
	Uy+sQnSRnKq2SHp/4zGRZuXXjwwIdJ7bcL26a1wRFbVudm+vpL/G7nRpZsdogKLXa4Ags5
	VSNLb46Q2PygCTmaAbBkyUJRcsJUCCPh7JLA9XfuIRBkfv2JF0qrfzqJbBZC9Q==
Message-ID: <0a1a190b-6dbe-4b41-872d-f2263eefac22@cpansec.org>
Date: Sun, 10 May 2026 20:34:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTEYYvulvCvgAEGwbr/esEN5fSF8Qst+v4k0TMIS+9GrwPyECEoXSEgklerCDgB2wqKfeJazP3wRFaX+oMyEht/vEjpXAKtRJ8gdABCoXk8B8JjexjP4u580DVqxhISDU0Bn9zAYDg18PVgbG5bxbvMbeqAmk42YmawFnoRXiT7CTibI/H3UF6Lyi7NuoIe5xX0q7x8RQv7trTCDZ7LGSpqJWy8eG0n996KTNJewE8Sqz5ZfsczGvWp+teS7rxiJEYdH2yALKdd0baFxcqSlbx6vQxGznRSg0E0kf/LgltPCJXOiiyKzap2/20WVQulihlNyvwatIRVTp8z9n3Sm5aLZVzZBEFSANoSEoI3FVBOX8SDD7FifSxS/5hUSoDw3nuajFgCQjm0kD1gIPgv8rawj6u7NTuOQ+7WaENqgstZ1SL1DsOSNAUat8lsvr9IQI+Og3HYo7ZvjreXnKi8gz5f38o8jajLOgsy0a11UKigxGskwQE45Ot/tGK6eyeJ9zujsEhzT4RcqUoYgRrd53HBD5EZejilFB+arAX+5xFL8lgK5sE8EoUwNFDhoKZU8vfEVH6dmKvnU2fAX/lNEWPktjtxyjQOF/JHg018bVUiYD1nd0O9UjINaz+JgvXkzC9kUyUQigfAHuqJOdxdW6PZMB2yDSyaTXgHYYHmNkLXH9Q
Subject: [oss-security] CVE-2026-45179: Plack::Middleware::Statsd versions before 0.9.0 for
 Perl may leak user IP addresses

========================================================================
CVE-2026-45179                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-45179
   Distribution:  Plack-Middleware-Statsd
       Versions:  before 0.9.0

       MetaCPAN:  https://metacpan.org/dist/Plack-Middleware-Statsd
       VCS Repo:  https://github.com/robrwo/Plack-Middleware-Statsd


Plack::Middleware::Statsd versions before 0.9.0 for Perl may leak user
IP addresses

Description
-----------
Plack::Middleware::Statsd versions before 0.9.0 for Perl may leak user
IP addresses.

If the communication channel to the statsd daemon is not secured (for
example, by sending UDP packets to a host on another network), then
users' IP addresses may be leaked.

Since version 0.9.0, the IP address is no longer logged to statsd
unless configured. When configured, an HMAC signature of the IP address
is logged instead.

Problem types
-------------
- CWE-319 Cleartext Transmission of Sensitive Information

Workarounds
-----------
Use a statsd daemon on the same host or through a secure communications
channel.


Solutions
---------
Upgrade to version 0.9.0 or later.


References
----------
https://github.com/robrwo/Plack-Middleware-Statsd/security/advisories/GHSA-9gwm-665p-w2xx
https://metacpan.org/release/RRWO/Plack-Middleware-Statsd-v0.9.0/changes



