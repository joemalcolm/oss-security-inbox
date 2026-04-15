Received: (qmail 16217 invoked by uid 550); 15 Apr 2026 15:32:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21522 invoked from network); 15 Apr 2026 07:06:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1776236762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fkguP19pt7yNjs988qW/LUpIpD18ULM0pVA3sAqt6IY=;
	b=hfY2qoyX7ckuDMqUlBFIdINbybcB+lro1yv3GZrLTljMVsIkMToYwxmDiHyyWYajQLqnm9
	phg3THtPHxqmQ/u+Ib1f/iENgCRxe0WpcHa+GArtRBgddOB9R8VokdB+N7Gv7FqENJiohD
	/LDGcxGYOxfatCovTXQkyiUHo7lQgTjU3+Atv2Ezmv3v+o46s/Tj3Pg+m5GrK9aJJfi82Z
	0rt+jwZZrmIznlfLz1HlYb3XPvwtqdtAgz+CzxZwUOvb/f0Sb170bTAb/tGnvvwfYL9pU+
	2nGvM3xWtb1iaSEyRV73eUtwSsVPkoDHnaHxhzaxQMdZyB86ALUknurfaNWFMQ==
Message-ID: <7ffc338d-5285-444f-87fd-0c86a5672fe8@cpansec.org>
Date: Wed, 15 Apr 2026 08:06:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGCR/a3QyAk6DamSvsz9sPz3DGMmHdFoTUsIsm/H1JzNSjdgUk3f6qz2g684fjbQD+env4FXwZx5F0kKdLouiG+lRgL9gMvVLEO1aU1N/l11OpMK5Gdson8POzL8gqOF1S46hGtAIFCEvB1TmRMFJhpK9yAlqZvGg0mnZPUbA6xfHjSU1Cri73b20P6dzNVUxy03oSegGl7x76Qmd4dGEAOSzkmWZHU9IDlRkeU2TgVSR2R63/v4umlMZO3QoseoyxPxW8JC2wYZirQriZu1EkxVPFRR79hUK2r1hV8RgkS/CzWvMEqihKpHdkZEaBirAfwdYfUpI4WrgCHCnU4SXHcHp6cdUuO6YPYAdYFkiFVYXkMZzAvNy939+vcYPUYb2UsuNBK/V//bqoitF29KgGqHdyE4SGoPU8iHxI+aFlTjbEvK8LG5CLIjWtkEDcEg55O3sKpxaQHG3iWKngP7COHTyQljg+gwXEwxBY05aqfcAGvqvIl089oO0PHllLc/VG1xu8VVenW2LwoEImjQ0BYT6ETHRIStVqdQLF09ZkLWAys3GPFpkNC8wqfhCjRNAw1XJyeuyTkzifPClEXU0NqmO8Iinl52LJtfM8T7DPkgN0rDU1sc7hedrXW12c10uYNWFqJXy8bfERILknJ7kJcgmA/mFrcnuo5YSoocVPSZg
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-5088: Apache::API::Password versions through v0.5.2 for Perl
 can generate insecure random values for salts

========================================================================
CVE-2026-5088                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5088
   Distribution:  Apache2-API
       Versions:  through v0.5.2

       MetaCPAN:  https://metacpan.org/dist/Apache2-API
       VCS Repo:  https://gitlab.com/jackdeguest/Apache2-API


Apache::API::Password versions through v0.5.2 for Perl can generate
insecure random values for salts

Description
-----------
Apache::API::Password versions through v0.5.2 for Perl can generate
insecure random values for salts.

The _make_salt and _make_salt_bcrypt methods will attept to load
Crypt::URandom and then Bytes::Random::Secure to generate random bytes
for the salt.  If those modules are unavailable, it will simply return
16 bytes generated with Perl's built-in rand function.

The rand function is unsuitable for cryptographic use.

These salts are used for password hashing.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Install Crypt::URandom.


Solutions
---------
Upgrade to version v0.5.3 or later, and install Crypt::URandom.


References
----------
https://metacpan.org/release/JDEGUEST/Apache2-API-v0.5.3/changes
https://metacpan.org/release/JDEGUEST/Apache2-API-v0.5.2/view/lib/Apache2/API/Password.pod
https://security.metacpan.org/docs/guides/random-data-for-security.html
https://metacpan.org/pod/Crypt::URandom

