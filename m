Received: (qmail 12196 invoked by uid 550); 18 May 2022 15:09:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16073 invoked from network); 18 May 2022 14:38:51 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 39DC53AB014
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.1.12
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1652884719; cv=none; b=UMrfxPeRTH1XEQYIYQbETIvN1EGsNx0Zw/x6+LZNy+fOen5357e3xPzFfbAK9jSwmC3Huf6i5DjAHW2bmLndKHZzlV3egCfzDVe/QMrJOHO0Nhf5Cc7vVlN3wF/ElNyyugSBystA9CGyI6zS+ABNOYq3xerqsa6Oq6Xvi+dgerQ=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1652884719;
	c=relaxed/relaxed; bh=GzOHsyEUybEiwejEJsCsKePE9jzyCEGqsxjnhzOLPNs=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:From:
	 Subject:To; b=SbzsHRxOiLsIBM48JBCB19LRbqeOgWgU8A5ZlLb+H64dNPoJ6s6EtJrOjPIqq6ADnCtOB7+aiYAK8bUHHHQNW2rtKxZF3Yqdx+HccCJVan5EdXakky3rOFhYjcczGFh5wtqyRDZuCK2dNqQQvi8eXvdycL0Pg2m4sSVj6U6y7eM=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 39DC53AB014
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1652884719; bh=GzOHsyEUybEiwejEJsCsKePE9jzyCEGqsxjnhzOLPNs=;
	h=Date:From:Subject:To;
	b=S6fjr0uxLzuvNkrkvqExC/avD5CDfqkAfYraVwVr98qDeoiYuzUGEwNq4FOwvvz6y
	 H9ia6iXZclYco2AkToAi0GUB68MIqD2lVUZLb0HGfN4V9s/dv3YHWvx/nEH/QnfIM3
	 whIOmQuk1tYm9kAnFMDAbOUNs7DNM9EZB6GH7BP4=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org EFF1A9C202C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1652884719;
	bh=GzOHsyEUybEiwejEJsCsKePE9jzyCEGqsxjnhzOLPNs=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=os/RcEEMIy1kqwgpopHSOouxu/3ogQHoDNgXlfiseoFVMyORGf04Wdf6THtEMFC+e
	 KYQXJLxEzr1sp39NIICg6YoRSWroQFM7cLOusv3xP4RenaZ6LHxxAW/nO3mWmubyCY
	 5xv06M36n22oWkYaU1FQ9ljjjU59WEkv7GrZNSSw=
Message-ID: <7d04fb57-182e-a779-dce2-1d1e42d24751@isc.org>
Date: Wed, 18 May 2022 15:38:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.9.0
Content-Language: en-US
From: ISC Security Officer <security-officer@isc.org>
To: oss-security@lists.openwall.com
Organization: Internet Systems Consortium
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pPv3kY03187mVnLBGsMRXNOx"
Subject: [oss-security] ISC has disclosed a vulnerability in BIND (CVE-2022-1183)

--------------pPv3kY03187mVnLBGsMRXNOx
Content-Type: multipart/mixed; boundary="------------1wqwU4P57UDyat2sqW4glc5R";
 protected-headers="v1"
From: ISC Security Officer <security-officer@isc.org>
To: oss-security@lists.openwall.com
Message-ID: <7d04fb57-182e-a779-dce2-1d1e42d24751@isc.org>
Subject: ISC has disclosed a vulnerability in BIND (CVE-2022-1183)

--------------1wqwU4P57UDyat2sqW4glc5R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gTWF5IDE4IDIwMjIsIHdlIChJbnRlcm5ldCBTeXN0ZW1zIENvbnNvcnRp
dW0pIGhhdmUgZGlzY2xvc2VkIGEgDQp2dWxuZXJhYmlsaXR5IGFmZmVjdGlu
ZyBvdXIgQklORCBzb2Z0d2FyZToNCg0KQ1ZFLTIwMjItMTE4MzogRGVzdHJv
eWluZyBhIFRMUyBzZXNzaW9uIGVhcmx5IHRyaWdnZXJzIGFzc2VydGlvbiBm
YWlsdXJlDQoNCmh0dHBzOi8va2IuaXNjLm9yZy92MS9kb2NzL2N2ZS0yMDIy
LTExODMNCg0KTmV3IHZlcnNpb25zIG9mIEJJTkQgYXJlIGF2YWlsYWJsZSBm
cm9tIGh0dHBzOi8vd3d3LmlzYy5vcmcvZG93bmxvYWRzDQoNCk9wZXJhdG9y
cyBhbmQgcGFja2FnZSBtYWludGFpbmVycyB3aG8gcHJlZmVyIHRvIGFwcGx5
IHBhdGNoZXMgDQpzZWxlY3RpdmVseSBjYW4gZmluZCBpbmRpdmlkdWFsIHZ1
bG5lcmFiaWxpdHktc3BlY2lmaWMgcGF0Y2hlcyBpbiB0aGUgDQoicGF0Y2hl
cyIgc3ViZGlyZWN0b3J5IG9mIHRoZSByZWxlYXNlIGRpcmVjdG9yaWVzIGZv
ciBvdXIgYWZmZWN0ZWQgDQpzdGFibGUgcmVsZWFzZSBicmFuY2ggKDkuMTgp
Og0KDQo5LjE4OiBodHRwczovL2Rvd25sb2Fkcy5pc2Mub3JnL2lzYy9iaW5k
OS85LjE4LjMvcGF0Y2hlcy8NCg0KV2l0aCB0aGUgcHVibGljIGFubm91bmNl
bWVudCBvZiB0aGlzIHZ1bG5lcmFiaWxpdHksIHRoZSBlbWJhcmdvIHBlcmlv
ZCANCmlzIGVuZGVkIGFuZCBhbnkgdXBkYXRlZCBzb2Z0d2FyZSBwYWNrYWdl
cyB0aGF0IGhhdmUgYmVlbiBwcmVwYXJlZCBtYXkgDQpiZSByZWxlYXNlZC4N
Cg0KQ2F0aHkgQWxtb25kDQpJU0MgU3VwcG9ydA0K

--------------1wqwU4P57UDyat2sqW4glc5R--

--------------pPv3kY03187mVnLBGsMRXNOx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEempHtfnhIzrSVStcvZfcY57oxHsFAmKFBOwFAwAAAAAACgkQvZfcY57oxHvh
Jwf9FOkBRdYnxjaFnhqO4vluG/urK+vsQl6/MJsHvIxLg4erIkK2dJdpUDAdtLSHKBeJZSbjtYpt
OSKnVMB+qlp5rFP45BlbYoDbTh8Ls8MSq0kkLQG/HPrIP1NDs31Uv43MA3uBWY+IQIzCymW8RwIR
5N7mhXGlKk0IQuRDt+mHwDD7gDuz+QSZ6IfKcPC8aQyGboTRCafpKoEWCXs06Bf+jFOsKuh42QuK
0GDw60AjfTaPYtM0DHwKZjtMRGT+yr4itoPeCS4AjsdDbdycuKxxqK7Q5QG3wSZ0pDjINDx9u4w1
U3eYPrVwlD6+K41QHTIuZfpo20+CDtDTUXTuhuKMkg==
=ALGz
-----END PGP SIGNATURE-----

--------------pPv3kY03187mVnLBGsMRXNOx--
