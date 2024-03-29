Received: (qmail 25987 invoked by uid 550); 29 Mar 2024 20:35:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12274 invoked from network); 29 Mar 2024 20:34:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.ch;
	s=s31663417; t=1711744444; x=1712349244; i=sjw@gmx.ch;
	bh=sp8653/qO59CNq4vt64Cv8JwIUGTKmFoufB4qyxOf8o=;
	h=X-UI-Sender-Class:Date:To:References:From:Subject:In-Reply-To;
	b=CH6y7SXa/UjshhWdMh9aK0+TJeVYQogSgVU3IE/zjGDdc8naHaErmlE53IcFgdlk
	 z21rlcCE0JE7UjPcO0e+3C2ksAjbfk7lSZNsBaVCDU2UoF2kvjJzhmIIh7Bgfjhr/
	 ys9LtOxZ2w0gBFp3u74fCBObmtvtql4c9rxefVTB6yu9KokDEG9poTRYOVq8fZbDi
	 HkxRZaO19ITPVKjID61VDlPnrcc4/ZFw2RA6fx0wEum1sMarG5d/Vj9jOj7wFtLJ6
	 nWX79XglSbEHTDhmBNQVEzZDZWU0V4z3wBD9hWE+sU7lcY4dCQ3nSnNhj0UMJ9T5j
	 F/CjA4elbREWqvJZXA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Message-ID: <d9f8fe3e-4403-422e-be02-cdbae7d43e77@gmx.ch>
Date: Fri, 29 Mar 2024 21:33:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Content-Language: en-CA
From: sjw@gmx.ch
Autocrypt: addr=sjw@gmx.ch; keydata=
 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
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Kc7CYgCXp0kfVCjilqypP2xy"
X-Provags-ID: V03:K1:ZV5POIgymD9Yr6iGO1d3H6IHPIRo8GBz3QA0YmEq8DR6uEESB6K
 ZI3qQpkJjnQfNhFBi32NQZ2wd4+z9RORlAiQ3SpyVsqdA9uDa4nh4xj/LRZsDVjihr2najh
 9oMm66H8WOsZvRU13Zy+UPI8hr9IYUt0ttc10iRUSpLQhUCybnjHo2sj5tXztj/3Gt7RVcY
 G+1bIwKJxzUQdAABbNYmQ==
UI-OutboundReport: notjunk:1;M01:P0:U/B6IAYAawI=;8+zvvEkDwBo4XtNYe3Cj8sg0nFU
 dHOMuxA0PUqTmKYliBY4iWfAVeVfymAtUb6K6/6k3EjTZULtIJQ/w68hq31+wYztM2Vi8Ce3V
 5NkVeZunFdSoeTtabuaM/x2qzjegODuTlcDn+2k6jC+SnYX54RZSsz8UMYj7P/c/BJWugWfRS
 ExAEAAbK2dSPRdpZctH4hv6WDHvxrUx1j/CIJGBGFyMXnDy4nO0WPVOSHFAqaqYNr+85Aah+c
 0yLLIsbwrJXYJV2sVorSPd5y4o33hBhJMSZsIrcJU4nRje8lQ+zu9ZLKw5GqMijvpoZmFPG2d
 mWu9XDVzuFaSTYSCRyFvrFo6AlxMUfauQAWptfuBfCTsKo/cCWf/MATBtOGkTJ8b+N+jAsJ6R
 v7p119W2HF4hSvw2JtnVYUZTOD6ozcMIXAmMjOGba/uryxa2pIgFGwesZrRdYbb0QUofAPsSu
 QPPgnsbcJg4Roul7dzsz3bzTzXmpIiWnPng1NZgojWBDC0zeGZAIH3I6WSHBNZUtLY7OyiOyi
 mqr6pgBQrAGz6zQh9HtlKJalriA7CakRU0lIntx55T3Jjezd+0MoBSXm86O55ZnFcGysP+kfL
 R1l3AfkBeK045/SrrtTXPCCqw4GynFrtqEv62/mHsnPXGOf9qgUOXVXYWVUoTulVK7jhtOtI1
 Qui4bB3ZaEPl4ote1USKhn8N//iNuRg7t1HYTCI3qkCEnQyzSYhp63THitmkBdD6Jrb/TLhno
 xE5Ke+w/hjQjfRqx2tFbqlSMfsK3vGVT3fouwTO+24BHvv8B5vqsY0CfFnFPoSxTbvjmyWGGf
 bfppD+QPw0Xj8HWZpIyjpLm0NqXW70fk1w4L26RoxCckg=
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

--------------Kc7CYgCXp0kfVCjilqypP2xy
Content-Type: multipart/mixed; boundary="------------JjMUvsy9vx07cmvko6p162uL";
 protected-headers="v1"
From: sjw@gmx.ch
To: oss-security@lists.openwall.com
Message-ID: <d9f8fe3e-4403-422e-be02-cdbae7d43e77@gmx.ch>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>

--------------JjMUvsy9vx07cmvko6p162uL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW5kcmVzLA0KDQpUaGFuayB5b3UgZm9yIHNoYXJpbmcgeW91ciBmaW5k
aW5ncywgSSdtIGFibGUgdG8gcmVwcm9kdWNlIHlvdXIgcmVzdWx0cy4NCg0K
ID4gd2hpY2ggZW5kcyB1cCBhcw0KID4gLi4uOyBzZWQgcnBhdGggLi4vLi4v
Li4vdGVzdHMvZmlsZXMvYmFkLTMtY29ycnVwdF9sem1hMi54eiB8IHRyICIJ
IA0KXC1fIiAiIAlfXC0iIHwgeHogLWQgfCAvYmluL2Jhc2ggPi9kZXYvbnVs
bCAyPiYxOyAuLi4NCiA+DQogPiBMZWF2aW5nIG91dCB0aGUgInwgYmFzaCIg
dGhhdCBwcm9kdWNlcw0KID4NCiA+ICMjIyNIZWxsbyMjIyMNCiA+IFsuLi5d
DQoNCg0KVGhlIGV4cHJlc3Npb24gaW4gdGhlIHRyIGNvbW1hbmQgbWlnaHQg
YmUgYSBiaXQgdHJpY2t5IHRvIGNvcHkgdGhlIA0KcmVwb3J0IGJlY2F1c2Ug
b2YgdGhlIHdoaXRlc3BhY2UgY2hhcmFjdGVycy4gVGhlIG9yaWdpbmFsIGV4
cHJlc3Npb24gaXMgDQpmb3VuZCBoZXJlOg0KDQpodHRwczovL3NhbHNhLmRl
Ymlhbi5vcmcvZGViaWFuL3h6LXV0aWxzLy0vYmxvYi80NmNiMjhhZGJiZmI4
ZjUwYTEwNzA0YzFiODZmMTA3ZDA3Nzg3OGU2L200L2J1aWxkLXRvLWhvc3Qu
bTQjTDk1DQoNClRoaXMga2luZCBvZiBleHByZXNzaW9uIGlzIG5vdCBzdXBw
b3J0ZWQgYnkgQnVzeUJveCcgaW1wbGVtZW50YXRpb24gb2YgDQondHInLiBH
TlUncyBhbmQgdXV0aWxzJyBjb3JldXRpbHMgYm90aCB3b3JrZWQgZm9yIG1l
Lg0K

--------------JjMUvsy9vx07cmvko6p162uL--

--------------Kc7CYgCXp0kfVCjilqypP2xy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEf0BaT/qj9Rv+/e4vzoKyyG3Ou58FAmYHJbUFAwAAAAAACgkQzoKyyG3Ou586
Tg//fL0QoxuHVwE357XJqSd5nRzjST+K99/Au8uKqUpEy5a/MYbXNEvLLArvhB2KPXZrPNoSeMwJ
AFHtHsURHdYenqS1KEBSD1O9MjUw+gU5pBMT/eht57rKLPrUoWg/7A+W0+GpnVbnKBqBg1VmG4q/
yGKnvzMjBJ/3w9LnozTZ43BhHcs+S3f22HxGJ3vrDOjebcxBiFfj4edZUqkKsbcVy+1ElnY+Nc3U
MchhMpxxq3v/jVxqTkVGw8/n3QiKDwDP9B2vecHMU3r2nR4Pjt8mTZNzEbROr/pXFN/TBIXFbVhF
IkXg43y0W7v/LABRzCrGeRyHgfhHtnFZ1glChRaQr3F0z8/6igFUAitxdcpYh0lIpdY5cE2+kTF6
ACQE9U2RC+bEogUHscc3gWhrWpZqNGu5vvlQogvb5E7SwgjI6xvrIu5MUxUU3BbFqCGeLSHdEbvZ
pbyyrw0GJBUQDg9knEhTOsINdxt4L8NLANGsZoZNELHquYC5aBc1mmoJDQ10luLOedzsW9RrKjZn
G8WqOGSHAijF1UwW5gX+1F/HrchMQbfMK7uNMmfO5V62+DoNKCfAYCgyap3ohk8MDhQK8teJISE6
sZxZhJv4SP1m6n8s4BwkmoUxIZC0Xn6EBwsx9btN7LJA61O77DKJRAbAinrn7K0O7HL4LlGMZgK3
hqs=
=+frg
-----END PGP SIGNATURE-----

--------------Kc7CYgCXp0kfVCjilqypP2xy--
