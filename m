Received: (qmail 30426 invoked by uid 550); 10 May 2026 23:21:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28103 invoked from network); 10 May 2026 20:08:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778443719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OX7RrudO3gz1FRtNkTSWHxU73d5RuMV32txve+Lc0oU=;
	b=BeGYVWVznR9d2wlX2yazdKIHSJbsMyTNgMG87kIXx5IW7c4LSri/ycA4rOOFFF4sAx4ydQ
	1Vn39+lHVfVLirxrEumBP7riEA1/6Ove5BamRL0aJ+jvPMorjh6T+VAPlGXIug+kdntuSJ
	V+ltWGX/Z1SV5pqaThIPmj9PKEu4bLL8JztaOWDkom8jdhfJvsXdCWl2HDQ4OASvh399xz
	cp3b73spvl8qN5fgo80nHf42L26efnkljf9VMFDNky0FHe4EUu+bzmbK2Q8Y2f6OExMHSk
	gx/4n89msLSkDJ9HYj4HH7aalgxgW3aU7ZWOSA14m/JVf5ELJYOP/e9mena52g==
Message-ID: <b3c76072-40bd-49da-ac79-470467d9aa49@cpansec.org>
Date: Sun, 10 May 2026 21:07:36 +0100
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
X-GND-Cause: dmFkZTFODPpYlWcPgyayIDsRQaOIzClMPAemcQH8trBAj2G25BRIX0PMe5KJ0rmItWjVqSG2lVYdzSFxSOLB8pdv6XEnAmV9huBiu/n7oPfnuKrMxWTKG9d5ZvlNyhtiuptxa4Xi6Id6kb8Sw5Twkb42tXH1QL/ULMe6uq5yNh4KyVDZKu9zoKSBCFhC+R2SgPNWnyz7Fxq+ILqii2TnRgJynj5VBzlqymMC28Jal1muuyvDhb1AjJ2U5LgFBRmvgmySDZN8C8iEGY7RDZ1Gc5lOP3K5ub2eCVRWp6ky10hLyeuWuLXCn2+pzGxLZH03tpm6a/hi3yV5raWhjB6TmU413Ug8NJH54fyIT/1XPI0hM3famlvXIo74uzeVRznH3q3WdGrRyAhFBVySnfg8r+/IbzNW2XkFDTdIgKnxfkq2ZVC5YNyIb9n37Q/s1PWn2AoXJ2NPQr8LkRtReByqzUpozo483onCuNFD2B+0f5n7pz0UiksMrif70vY6tefwHGcp+ieUpsbExLC2vXjgtOFgZ8aDmY6REQBOK2bZ8y3qdM9viNuwICtMbT3L9C6qNiBEvS8t7xWE7ygEqDJJ4E5jb5dPIK1r/l5TqH7Unli1PukDlkShcodf71lYifTko3gGLExDG9xmdaN3M/Le5sT1Tb8imI6hfO5G7LmglrZTmEAXuQ
Subject: [oss-security] CVE-2026-45180: Catalyst::Plugin::Statsd versions through 0.10.0 for
 Perl may leak session ids

========================================================================
CVE-2026-45180                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-45180
   Distribution:  Catalyst-Plugin-Statsd
       Versions:  through 0.10.0

       MetaCPAN:  https://metacpan.org/dist/Catalyst-Plugin-Statsd
       VCS Repo:  https://github.com/robrwo/CatalystX-Statsd


Catalyst::Plugin::Statsd versions through 0.10.0 for Perl may leak
session ids

Description
-----------
Catalyst::Plugin::Statsd versions through 0.10.0 for Perl may leak
session ids.

If the communication channel to the statsd daemon is not secured (for
example, by sending UDP packets to a host on another network), then
users' session ids may be leaked.  This may allow an attacker to use
session ids as authentication tokens.

Problem types
-------------
- CWE-319 Cleartext Transmission of Sensitive Information

Workarounds
-----------
Use a statsd daemon on the same host or through a secure communications
channel.


Solutions
---------
Upgrade to version 0.10.0 of later, which will no longer log session
ids to statsd.

If Plack::Middleware::Statsd is upgraded to 0.9.0 or later and is
configured to log some information securely, then session ids will be
logged as HMAC signatures instead.


References
----------
https://github.com/robrwo/CatalystX-Statsd/security/advisories/GHSA-gjvr-hq83-fc38
https://metacpan.org/release/RRWO/Catalyst-Plugin-Statsd-v0.10.0/changes
https://www.cve.org/CVERecord?id=CVE-2026-45179
https://github.com/robrwo/Plack-Middleware-Statsd/security/advisories/GHSA-9gwm-665p-w2xx


