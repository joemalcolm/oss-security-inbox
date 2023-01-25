Received: (qmail 25803 invoked by uid 550); 25 Jan 2023 17:17:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16112 invoked from network); 25 Jan 2023 17:06:02 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 8BF5B3AB01C
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.1.12
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1674666349; cv=none; b=p9sarssa/+nK+Y5yckzw+nGbIpfe1zeWSBKemumb8wtzEx8th9dpOgB6ZC1rApw4zwbJpzIU7j1aBurmaqV7BayvUT0fQ9VfdhOjo5wW2FO+62b6hjj/kjvpPwq+n4Hw79qT+G7cCQABPPzzk1RXLm3IDEpX30PvVvWejHaWnXY=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1674666349;
	c=relaxed/relaxed; bh=aRK8uBgzZk8VQ8w7dgBwF28Iy3qDRnPL/k5oCSY0mb4=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=ezak2826YP9MyTNFI908EHtWvQ9QHpUA8vZR4FgYPpG/Ya60Og2/+3BmiZaYFL+QKMaMgVjRl5ow8jJKUU1i+XsJVBSPtRWftO9zUU5XUjxB8XeLcTpNbt8TWySJt2DvbCsDHDwX8fDut8BgiPuXDhgnU6IGUgJp+8wGiq6eDqo=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 8BF5B3AB01C
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1674666349; bh=1ot2vDyYVcnWMO1vWvj/o5rldp8cHoKSpwsjvu0otBU=;
	h=Date:From:To:Cc:Subject;
	b=DY/wZfbSZhq8dHW8MIgozseChsGAQ0c1f7M11vNzuTAem4w41jPdTmp14+HENTv7p
	 nodYjdskk8nlu5NCDKNYmOq/KlVmQ26TtvIE9B7tFEzdjDbzwRBchsq23zQIZIqKB/
	 UKMDUdy6CeOiQXeNXI1iVZ6+ec679s/mic7Af3D4=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 45CF59E7133
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1674666349;
	bh=aRK8uBgzZk8VQ8w7dgBwF28Iy3qDRnPL/k5oCSY0mb4=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=SYCffRy0s0EPH0wia0l4LkeaP38KWdUjXnqUP5/Svw2kzNzNWgVJ1w7SAhEuHoikq
	 Dr9seNYCy8aX98Z6rKjcrXTlAVvpdN/XlJaBKZGrAwlaRNLqLZTf2CsA0CctWXK8eH
	 Vnnj/KdK09uMW1y+zzWfBh+tZjF6RZqAVrnhxe38=
Date: Wed, 25 Jan 2023 18:05:43 +0100
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <Y9FhZ0vKzTx4WTCH@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC has disclosed three vulnerabilities in BIND 9 (CVE-2022-3094,
 CVE-2022-3736, CVE-2022-3924)

On 25 January 2023 we (Internet Systems Consortium) disclosed three vulnera=
bilities affecting our BIND 9 software:

- CVE-2022-3094:        An UPDATE message flood may cause named to exhaust =
all available memory https://kb.isc.org/docs/cve-2022-3094
- CVE-2022-3736:        named configured to answer from stale cache may ter=
minate unexpectedly while processing RRSIG queries https://kb.isc.org/docs/=
cve-2022-3736
- CVE-2022-3924:        named configured to answer from stale cache may ter=
minate unexpectedly at recursive-clients soft quota https://kb.isc.org/docs=
/cve-2022-3924

New versions of BIND 9 are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively c=
an find individual vulnerability-specific patches in the "patches" subdirec=
tory of each published release directory:

- https://downloads.isc.org/isc/bind9/9.16.37/patches/
- https://downloads.isc.org/isc/bind9/9.18.11/patches/
- https://downloads.isc.org/isc/bind9/9.19.9/patches/

With the public announcement of these vulnerabilities, the embargo period i=
s ended and any updated software packages that have been prepared may be re=
leased.

--=20
Best regards,
Micha=C5=82 K=C4=99pie=C5=84
