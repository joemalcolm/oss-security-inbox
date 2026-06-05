Received: (qmail 3854 invoked by uid 550); 6 Jun 2026 02:57:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23779 invoked from network); 5 Jun 2026 14:44:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780670675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AmZdh6xzef/RvtI7oYkivS8JMG7s26J2lUd1b9mK0rM=;
	b=TyeEoAcvhEM6+NddKWMF0iZIrclkE5SyqYoL3w3KtsyqLdaEMUpNOKlY18jsCdYVJLX0I/
	lTCINdW/aqc7oklv61ijTvpgZpWYDm1pOc5wpykzYe/mKHa2OwqJoFN9wjuGQVC6P7WERP
	IXSf1vmpbR0/wotvC7XrDiOD7+DF7zTlKyY00FPZhrUA0UKnBjf7P5SYhzdCdto629WUoQ
	6xAXfxYGQ/+MgQbjhiXifB7bhGvAD7oX2aSb43SPNbOmGTyTJlCIKuAhTWhqbo3MZ/jEYx
	43fmptlbDwIl9CGmSYr05Deujij1nhaojUMk9WnL9jyO0CzGOBj/DPQaFBgQCA==
Message-ID: <67c5df53-f713-4979-bc57-7c63335f6d7d@cpansec.org>
Date: Fri, 5 Jun 2026 15:44:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTE6j9lKs8Ffmv1uovXMnkc/66eyhPLjX2BUaVR9G8Rt2w9l07uZGrFKKt7NQiEQtMrvmpbUWuhvGpWLNgUhQ5xBIs6eJ5+mMxWzZsFpkhuukqKXYvjV5hcdkmekY2utu3htoaEg5+LtmKNv91/o+BvpWO7AMyg546YGhA/UdJnBzWPdd0P5bFKYGR11SfqLfOK/mVphEC5jhqBw520VqhHUIG2fmH1kzfLFFM7ysBWlt3NivTj5MThLGz09yJZEjmSCuUieLdMJ0EmZr7JulSKcoKE1s8DGP9gx78QFDM8W/GPyQGmN/4Myld2w1p5XY0cBKiqLFjcACx6j13FbHkgYrhHhlD7c2ojCplAAQPMG1Sb7CtKcWA5iXXI7wTvIcAxvMulwgcjEoeOZ4sNRv9i3ENUY0ny3GdE0l3tfoiexOj4In/ZZH3TYaANHJ/CUPLrbwUlEtY5X/wBh+CfX/yPSJYmj1uVGK0X531JuTbjLY1rnKrQbkAXNd2YOJuE+LDuWUCPhWjymV0zEm4mgIX1SZTvSJSZmkEfaVbw7BSf5m4Altv+A5PsibMSSbhCbW0F+Vn1bKmQEF7CgnzhG3YG57fZ6+ZcQhAm5nd22QK1GZ1RJoYHorvMlCM6497JKjIh9B9K2HLKup3UJV03tJidPWXJI5IcOClOgSbCADctaQg
Subject: [oss-security] CVE-2026-9270: DataDog::DogStatsd versions through 0.07 for Perl
 allow metric injections

========================================================================
CVE-2026-9270                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9270
   Distribution:  DataDog-DogStatsd
       Versions:  through 0.07

       MetaCPAN:  https://metacpan.org/dist/DataDog-DogStatsd
       VCS Repo:  https://github.com/binary-com/dogstatsd-perl


DataDog::DogStatsd versions through 0.07 for Perl allow metric
injections

Description
-----------
DataDog::DogStatsd versions through 0.07 for Perl allow metric
injections.

DataDog::DogStatsd does not properly sanitise input, allowing metric
injections of data from untrusted sources.

The send_stats method does not remove newlines from metric names ($stat
variable), allowing attackers to change the metric name prefix.

The send_stats method does not validate the content of the value
($delta variable), allowing attackers to inject metrics, especially
from methods that do not restrict the data type for the value, such as
set, gauge, count and histogram.

The send_stats method does not validate the content of the tags, which
may contain newlines, pipes and colons that allow metric injections.

Note that the SYNOPSIS shows an example of passing a website form
"loginName" parameter as a tag, which is unsafe.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences
- CWE-150 Improper Neutralization of Escape, Meta, or Control Sequences

Workarounds
-----------
Ensure that metric names, values and tags come from trusted sources or
are properly sanitised.


References
----------
https://www.cve.org/CVERecord?id=CVE-2026-46741
https://www.cve.org/CVERecord?id=CVE-2026-46719
https://www.cve.org/CVERecord?id=CVE-2026-46720



