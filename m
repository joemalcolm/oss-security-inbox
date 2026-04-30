Received: (qmail 29894 invoked by uid 550); 30 Apr 2026 02:26:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13554 invoked from network); 30 Apr 2026 02:22:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=innora.ai;
	s=protonmail2; t=1777515762; x=1777774962;
	bh=TZI0AkJUG3sd4wdkuXto0MEZLLacS0FQvWmHY0yWg+o=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=azo2hj0ml3Mf9ECw53eiSG962QxTfgD69sPGf7cJGmgSYteh+lLlUn0h8J4oJG8jX
	 aMJnwCxcZk0baHFbx6IPMqGDIq9UvbG7rK68PBc5A297tmAM8LD+zbNE9yuFnIFoAE
	 dX66Ki+frDfnIci17RB7ihjjtn7eJHr2/AHWJM6OfT5aVwjh/L+ZJnF6xfusoSGPlX
	 4qzpBipb8ogPgVTIvCZC5qz7aV5bIAMLBQfrXHxHi7woltRf7ev3jF/KvVJoZ7WyaR
	 m4zJfIMa9fJb3l+N1JGTMjQzWVZG65cC0RGmqdNIqyQUOTUmRA5VVFZ9dplxB7hz13
	 DMf+SOfOZzHkw==
Date: Thu, 30 Apr 2026 02:22:36 +0000
To: oss-security@lists.openwall.com
From: Feng Ning <feng@innora.ai>
Message-ID: <afK86CC-LCeCSOZM@ans-MacBook-Pro.local>
Feedback-ID: 140578448:user:proton
X-Pm-Message-ID: b3c0f2d88f02796da0c231e1549bfd29ae3f4e92
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [CVE-2026-37555] libsndfile IMA-ADPCM integer overflow (incomplete fix for CVE-2022-33065)

Hi,

I'm disclosing an integer overflow vulnerability in libsndfile's IMA-ADPCM =
decoder that leads to heap corruption when processing crafted WAV files.

**CVE:** CVE-2026-37555
**Product:** libsndfile (Erik de Castro Lopo)
**Affected:** Current master and all release versions through 1.2.2
**CWE:** CWE-190 (Integer Overflow)
**CVSS 3.1:** 7.8 (AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
**Credit:** Feng Ning, Innora Security Research

## Summary

This is an incomplete fix for CVE-2022-33065. The original fix in src/ima_a=
dpcm.c correctly cast the multiplication to sf_count_t on the AIFF code pat=
h (line 241) but missed two other locations performing the same type of ari=
thmetic.

## Details

In src/ima_adpcm.c, sample count calculations use int*int multiplication th=
at overflows before assignment to sf_count_t:

**Line 235 (WAV open path):**
```c
sf.frames =3D samplesperblock * blocks;
```

**Line 167 (close path):**
```c
sf.frames =3D samplesperblock * blockcount / channels;
```

Both `samplesperblock` and `blocks`/`blockcount` are `int`. When their prod=
uct exceeds INT32_MAX, the multiplication wraps. For example, samplesperblo=
ck=3D50000 and blocks=3D50000 yields 2,500,000,000, which overflows int32 t=
o -1,794,967,296. This negative value propagates into frame count calculati=
ons, leading to undersized buffer allocations and heap corruption during de=
coding.

For comparison, the AIFF path at line 241 was already fixed in the CVE-2022=
-33065 patch:
```c
sf.frames =3D (sf_count_t) samplesperblock * blocks / channels;
```

## Fix

Cast the first operand to sf_count_t on lines 235 and 167, matching the exi=
sting fix on line 241:

```c
sf.frames =3D (sf_count_t) samplesperblock * blocks;
sf.frames =3D (sf_count_t) samplesperblock * blockcount / channels;
```

## References

- CVE-2022-33065 (original fix, incomplete)
- MITRE ticket #2019024

I've contacted the maintainer. No patch has been released yet.

Regards,
Feng Ning

