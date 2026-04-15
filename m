Received: (qmail 17705 invoked by uid 550); 15 Apr 2026 15:32:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22489 invoked from network); 15 Apr 2026 07:32:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=deguest.jp; h=
	content-type:content-type:in-reply-to:organization:from:from
	:content-language:references:subject:subject:user-agent
	:mime-version:date:date:message-id:received:received; s=dkim; t=
	1776238365; x=1778052766; bh=Lli4vrNalZrXjYR77o9lv4g3Y9UIezmqHtO
	X3tgSwCY=; b=crY30dRG9sfI9mocrJfnEAGwdMjXh8+zUcPDlbmwHmbhH6Zo40n
	Ykd+Guk54LhjoP8t51R06V/HkhbrEdxY4Da6q1seh1M2SOgxaP8lXinHD7c/7gFc
	cPT42/G/zCCPMozOgWUu8/k+CVxH9DnQrKkOZnYxwVWXh7LrLUb3fz64=
Message-ID: <684e5604-d5f9-4373-ac83-5b70d95f3a54@deguest.jp>
Date: Wed, 15 Apr 2026 16:32:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Robert Rothenberg <rrwo@cpansec.org>, cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
References: <7ffc338d-5285-444f-87fd-0c86a5672fe8@cpansec.org>
Content-Language: en-GB, fr
From: Jacques Deguest <jack@deguest.jp>
Autocrypt: addr=jack@deguest.jp; keydata=
 xsFNBF6+Df8BEADMrK2P+vbWBRu7kmV14Yw8FyNLZqITMsu9+V0XH2a1ChyvI4/l8rvFv8Gv
 GbaIkrmGvOhy253gh9rXQq6fmskwSWLsWk+8ngPfo4ikQK5J3t42AO/HIjOlg4Ryeig6UQ8U
 O8FIF7lXuDjXjcVIcg8Whs1V99kRAq/cWuVP5ErGFgRNV+J+z9qvAeGTaxsGro41j6fVVZSV
 PD9eFYGHLauJloVrUtnkp0MNDQZvnsmuHJGxK+XnTrW9/hj/DSc/siIwKlGdBTXkg5VKOQ5o
 an2vVn/FSTnUIasm4Kabu6MY5EYjLtB4aoy23HT65PiVEzJijFOkCq/9bP+gOHZM4xoSngec
 Wgr1hG5q4e2O8VnNPpcVNT7vm3NEUPZd5MHVV5fnJJVB/VQqgMgDAiblMmMfS4ocJYupg9vu
 YJfb8X7dXMKLXK/OhfthLH4Uu01pjHXIw3+UnWtBVzwuAQ5CrhV7tWzGXEiu4rhiGcfvHOBD
 BRYZQekeHtvqJ4ztHhybGvK8zpWx97WVguecSyLk83W5m/QVFJI6aiE2e96D67FPubKbjkHM
 757MZgKveihOjLsuj35M1ZMv79HqlgRhA8JUG97WoYUlyANQzCnnryihp05Tv4zy2VEwmKD9
 8WrDxg9yTbF0al23qT72mYZXqwJKp+P/cRRj0hNSZ8CvDJGj8QARAQABzSFKYWNxdWVzIERl
 Z3Vlc3QgPGphY2tAZGVndWVzdC5qcD7CwXkEEwEIACMFAl6+Df8CGyMHCwkIBwMCAQYVCAIJ
 CgsEFgIDAQIeAQIXgAAKCRBfPAJhzbLnUuIoEACBW+wqDkyxX7Ty9tOwhrrunk7Sd1dAXJ97
 mc4v7bOnbcKO6IcKTkYC5Lw0eB06aclh7UxMWY+UrGVejzBuiXtgjoMkeLA4AlzfDusazseF
 sCxocywR04f2l9C9DkzFGuCzY6v6vKYzr0aeZU30Qm6Sj0oPNvzuhAHGqugxoWjM+esNlMZT
 y6RGIX438zyux0Tk8baoLifCNm7QWjmdGiZiv3ghOA0jL45hTN6eoY3xW9bepRGM+AiykYCo
 GOg4TiK6InP5s+Vp15q2/rM6tdaBrFA5UfMpHODEANf9KuaXkGeZgYP9HCCwLvVjzOeldOlw
 jW4HYgK7XaxKfqKLUvR/G16iGN+iPsqEgrj4JZ81DEw+pCr5shnj13xt2YHrSuNFDA930tBB
 7K6NNirFwe9AZgwUDCBkVb1Jl6xpNMPA8LclMhMS1Yxh7/tHIV/voQz4QyoU95OCYdPL1+TG
 vkxImyNRG0qYyWXrsRn5me/bLzlPuS2feyMNWKrENe0ptlALJA5Va6pqK1ra3xg7V5QvN5Eh
 UA4kI8sRbvUVsES1Hy38yECGI9cCJ/DTxz2YNMlVeeuGlYGEUYJfm2br5j7IxR2D5Q4FDCyQ
 S9qHTJ6czNKIkkj9FvROgA339Sd4Z0HZh+LZjSNF4dOr7gDAf6SGooSvHg9t8+KhU/hH2IiN
 0M7BTQRevg3/ARAAnGwKoMfVcV3pGE5wUgwgN6pe5Aj3rtK+NznH0PsZOmXMzH7M6EuLkWk1
 fBdvy6fPvTIaHxbju+lCJzXYc1CUB8zotWxmUs70WK4UqX8tMsD4Gg9ErGcPSj56ie+ZOstw
 DuXQxucj6hSUUpOV0lu381gK3BaUbtoT4Y0Nh01FYbAoArra2Gd1z0jDYWKBqEKM6EXKEbct
 8MQT/PfP8k93CT5KYoqcnVy3Sii5ji3QaxzPlOkJLlRJuEYcoXRk+tffi73hwbsfJptPuQJa
 odLjt2DhPj3jxRjolfXZzdwttmSgCLsTp8ebzfnh62DmKy65exZOL+uJkK1kWOW5Q76K4KFo
 R//tT9YAr8dKeshqA9619+L97xCB3BzN26OxG6UM/sJRQ5/Paj8D6iIEfVQKoAmQvIrlZKvm
 Z7EIs6r0Rer6z3fapy60G6ihlL76eh79As8nMIicXkGf8Sy32/p01fu+tvXelmJVVgZ8g3Xi
 zdnqgjoK67MT2YklSY8icl/p/xImDwW3pXXySloZ6Zm+QTbzigaE+oql8aGwMaspMPPzgLzu
 EKT8hIoSiaEdU7O9J5qU6HPnbW7ITyIiBpk05V9z8g8yK+d2xnphvwnpEHiDxs8/sw2SSFhc
 XjQLKl+vE2rWiengJewiJJ11NSCcgbmbKJnaMwew0iMz5IiUKXsAEQEAAcLBXwQYAQgACQUC
 Xr4N/wIbDAAKCRBfPAJhzbLnUopcD/4i7h/xjYyPSCB6nRh6sKBzkPSNMv2FqVKDKxkIkVYs
 CIkgwLgGrWUEDmdXB9CtNJv1rCrWlQkQJH7xLqaNqCBBcjYq0vkAoDMIl+d3kVLb8EPKc8B6
 eFO/YUb+aS7FAYURNxJp3xe1+hPtYPr2uj8C+FYIYwWFsmHGYlHV3GnIctjNAqrpMKVfoJne
 Gkr9JDR0R1SKUahPQMcn+Hh4AytvdbePPNsHLgr9IvwgZJObnYcs4iBlpTSF2IsCwe11fSFz
 iySEaV3dikM89/rL1/SVdJ2ZvGQLNMWF4p8so6mk4KnPRA8QqQJ/Kl3gIziQe9MzBaaVsAZ3
 7nbaS46pkb2c59A8QokZcWeEwTVdNF5ixtnOQHtUuO8+1f33syQcdztq2GgXOOnm0v/B36Bd
 Hwq3fVueDk5bdUrB3HDXsMBUiAoqbrddhjg53TKUb0EzwVa21UvD+WWxn2G/PjmxwLnf81pr
 9Tnn+ky0peDOjeY0QbfleXFtKTqjqq2fjAZXT6h+HyvuWG4w6lMWveWUMqffR8WRXXMZ6IIU
 917NQcnSgFZ5gLd2xLxe2pVZqImeYjvp1p4C47Q5YJV2WGRnIevV+20cVlycnoMsJsCyoriv
 exrnKnq41NjIU41pGfOQM+FB2YB9F6lxHMg9oMpLVm9JV8ardK1oBlywlHprVzLvrg==
Organization: DEGUEST Pte. Ltd.
In-Reply-To: <7ffc338d-5285-444f-87fd-0c86a5672fe8@cpansec.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0UQQbFpbNSWGvnfdgyYjJgPe"
Subject: [oss-security] Re: CVE-2026-5088: Apache::API::Password versions through v0.5.2 for
 Perl can generate insecure random values for salts

--------------0UQQbFpbNSWGvnfdgyYjJgPe
Content-Type: multipart/mixed; boundary="------------xiKjQHsCbAcvnYSJ8PW6bJ1B";
 protected-headers="v1"
From: Jacques Deguest <jack@deguest.jp>
To: Robert Rothenberg <rrwo@cpansec.org>, cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Message-ID: <684e5604-d5f9-4373-ac83-5b70d95f3a54@deguest.jp>
Subject: Re: CVE-2026-5088: Apache::API::Password versions through v0.5.2 for
 Perl can generate insecure random values for salts
References: <7ffc338d-5285-444f-87fd-0c86a5672fe8@cpansec.org>
In-Reply-To: <7ffc338d-5285-444f-87fd-0c86a5672fe8@cpansec.org>

--------------xiKjQHsCbAcvnYSJ8PW6bJ1B
Content-Type: multipart/mixed; boundary="------------Le9RrVUA8p8AAbBCFbe6v9ln"

--------------Le9RrVUA8p8AAbBCFbe6v9ln
Content-Type: multipart/alternative;
 boundary="------------RXG0BTjATimqOpVqyV9M6sAA"

--------------RXG0BTjATimqOpVqyV9M6sAA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGtpbmRseSBmb3IgbGV0dGluZyBtZSBrbm93Lg0KSSBoYXZlIGFscmVhZHkgY29y
cmVjdGVkIHRoaXMgd2l0aCB0aGUgdmVyc2lvbiB2MC41LjMgdGhhdCBJIHJlbGVhc2VkIA0KdGhp
cyBtb3JuaW5nIChKYXBhbiB0aW1lKSwgYW5kIHRoYXQgaXMgYWxyZWFkeSBhdmFpbGFibGUgb24g
Q1BBTi4NCg0KS2luZCByZWdhcmRzLA0KSmFjcXVlcyBEZWd1ZXN0DQoNCk9uIDIwMjYvMDQvMTUg
MTY6MDYsIFJvYmVydCBSb3RoZW5iZXJnIHdyb3RlOg0KPiA9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gQ1ZF
LTIwMjYtNTA4OMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIENQQU4gU2VjdXJpdHkgR3JvdXANCj4gPT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+DQo+
IMKgIMKgIMKgIMKgIENWRSBJRDrCoCBDVkUtMjAyNi01MDg4DQo+IMKgIERpc3RyaWJ1dGlvbjrC
oCBBcGFjaGUyLUFQSQ0KPiDCoCDCoCDCoCBWZXJzaW9uczrCoCB0aHJvdWdoIHYwLjUuMg0KPg0K
PiDCoCDCoCDCoCBNZXRhQ1BBTjogaHR0cHM6Ly9tZXRhY3Bhbi5vcmcvZGlzdC9BcGFjaGUyLUFQ
SQ0KPiDCoCDCoCDCoCBWQ1MgUmVwbzogaHR0cHM6Ly9naXRsYWIuY29tL2phY2tkZWd1ZXN0L0Fw
YWNoZTItQVBJDQo+DQo+DQo+IEFwYWNoZTo6QVBJOjpQYXNzd29yZCB2ZXJzaW9ucyB0aHJvdWdo
IHYwLjUuMiBmb3IgUGVybCBjYW4gZ2VuZXJhdGUNCj4gaW5zZWN1cmUgcmFuZG9tIHZhbHVlcyBm
b3Igc2FsdHMNCj4NCj4gRGVzY3JpcHRpb24NCj4gLS0tLS0tLS0tLS0NCj4gQXBhY2hlOjpBUEk6
OlBhc3N3b3JkIHZlcnNpb25zIHRocm91Z2ggdjAuNS4yIGZvciBQZXJsIGNhbiBnZW5lcmF0ZQ0K
PiBpbnNlY3VyZSByYW5kb20gdmFsdWVzIGZvciBzYWx0cy4NCj4NCj4gVGhlIF9tYWtlX3NhbHQg
YW5kIF9tYWtlX3NhbHRfYmNyeXB0IG1ldGhvZHMgd2lsbCBhdHRlcHQgdG8gbG9hZA0KPiBDcnlw
dDo6VVJhbmRvbSBhbmQgdGhlbiBCeXRlczo6UmFuZG9tOjpTZWN1cmUgdG8gZ2VuZXJhdGUgcmFu
ZG9tIGJ5dGVzDQo+IGZvciB0aGUgc2FsdC7CoCBJZiB0aG9zZSBtb2R1bGVzIGFyZSB1bmF2YWls
YWJsZSwgaXQgd2lsbCBzaW1wbHkgcmV0dXJuDQo+IDE2IGJ5dGVzIGdlbmVyYXRlZCB3aXRoIFBl
cmwncyBidWlsdC1pbiByYW5kIGZ1bmN0aW9uLg0KPg0KPiBUaGUgcmFuZCBmdW5jdGlvbiBpcyB1
bnN1aXRhYmxlIGZvciBjcnlwdG9ncmFwaGljIHVzZS4NCj4NCj4gVGhlc2Ugc2FsdHMgYXJlIHVz
ZWQgZm9yIHBhc3N3b3JkIGhhc2hpbmcuDQo+DQo+IFByb2JsZW0gdHlwZXMNCj4gLS0tLS0tLS0t
LS0tLQ0KPiAtIENXRS0zMzggVXNlIG9mIENyeXB0b2dyYXBoaWNhbGx5IFdlYWsgUHNldWRvLVJh
bmRvbSBOdW1iZXIgR2VuZXJhdG9yDQo+DQo+IFdvcmthcm91bmRzDQo+IC0tLS0tLS0tLS0tDQo+
IEluc3RhbGwgQ3J5cHQ6OlVSYW5kb20uDQo+DQo+DQo+IFNvbHV0aW9ucw0KPiAtLS0tLS0tLS0N
Cj4gVXBncmFkZSB0byB2ZXJzaW9uIHYwLjUuMyBvciBsYXRlciwgYW5kIGluc3RhbGwgQ3J5cHQ6
OlVSYW5kb20uDQo+DQo+DQo+IFJlZmVyZW5jZXMNCj4gLS0tLS0tLS0tLQ0KPiBodHRwczovL21l
dGFjcGFuLm9yZy9yZWxlYXNlL0pERUdVRVNUL0FwYWNoZTItQVBJLXYwLjUuMy9jaGFuZ2VzDQo+
IGh0dHBzOi8vbWV0YWNwYW4ub3JnL3JlbGVhc2UvSkRFR1VFU1QvQXBhY2hlMi1BUEktdjAuNS4y
L3ZpZXcvbGliL0FwYWNoZTIvQVBJL1Bhc3N3b3JkLnBvZCANCj4NCj4gaHR0cHM6Ly9zZWN1cml0
eS5tZXRhY3Bhbi5vcmcvZG9jcy9ndWlkZXMvcmFuZG9tLWRhdGEtZm9yLXNlY3VyaXR5Lmh0bWwN
Cj4gaHR0cHM6Ly9tZXRhY3Bhbi5vcmcvcG9kL0NyeXB0OjpVUmFuZG9tDQo+DQoNCg==

--------------RXG0BTjATimqOpVqyV9M6sAA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <font face=3D"Avenir">Thank you kindly for letting me know.<br>
      I have already corrected this with the version v0.5.3 that I
      released this morning (Japan time), and that is already available
      on CPAN.<br>
      <br>
      Kind regards,<br>
      Jacques Deguest<br>
    </font><br>
    <div class=3D"moz-cite-prefix">On 2026/04/15 16:06, Robert Rothenberg
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:7ffc338d-5285-444f-87fd-0c86a5672fe8@cpansec.org">=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
      <br>
      CVE-2026-5088=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 CPAN Security
      Group
      <br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
      <br>
      <br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 CVE ID:=C2=A0 CVE-2026-5088
      <br>
      =C2=A0 Distribution:=C2=A0 Apache2-API
      <br>
      =C2=A0 =C2=A0 =C2=A0 Versions:=C2=A0 through v0.5.2
      <br>
      <br>
      =C2=A0 =C2=A0 =C2=A0 MetaCPAN:=C2=A0 <a class=3D"moz-txt-link-freetex=
t" href=3D"https://metacpan.org/dist/Apache2-API">https://metacpan.org/dist=
/Apache2-API</a>
      <br>
      =C2=A0 =C2=A0 =C2=A0 VCS Repo:=C2=A0 <a class=3D"moz-txt-link-freetex=
t" href=3D"https://gitlab.com/jackdeguest/Apache2-API">https://gitlab.com/j=
ackdeguest/Apache2-API</a>
      <br>
      <br>
      <br>
      Apache::API::Password versions through v0.5.2 for Perl can
      generate
      <br>
      insecure random values for salts
      <br>
      <br>
      Description
      <br>
      -----------
      <br>
      Apache::API::Password versions through v0.5.2 for Perl can
      generate
      <br>
      insecure random values for salts.
      <br>
      <br>
      The _make_salt and _make_salt_bcrypt methods will attept to load
      <br>
      Crypt::URandom and then Bytes::Random::Secure to generate random
      bytes
      <br>
      for the salt.=C2=A0 If those modules are unavailable, it will simply
      return
      <br>
      16 bytes generated with Perl's built-in rand function.
      <br>
      <br>
      The rand function is unsuitable for cryptographic use.
      <br>
      <br>
      These salts are used for password hashing.
      <br>
      <br>
      Problem types
      <br>
      -------------
      <br>
      - CWE-338 Use of Cryptographically Weak Pseudo-Random Number
      Generator
      <br>
      <br>
      Workarounds
      <br>
      -----------
      <br>
      Install Crypt::URandom.
      <br>
      <br>
      <br>
      Solutions
      <br>
      ---------
      <br>
      Upgrade to version v0.5.3 or later, and install Crypt::URandom.
      <br>
      <br>
      <br>
      References
      <br>
      ----------
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://metacpan.org/relea=
se/JDEGUEST/Apache2-API-v0.5.3/changes">https://metacpan.org/release/JDEGUE=
ST/Apache2-API-v0.5.3/changes</a>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://metacpan.org/release/JDE=
GUEST/Apache2-API-v0.5.2/view/lib/Apache2/API/Password.pod">https://metacpa=
n.org/release/JDEGUEST/Apache2-API-v0.5.2/view/lib/Apache2/API/Password.pod=
</a>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://security.metacpan.org/do=
cs/guides/random-data-for-security.html">https://security.metacpan.org/docs=
/guides/random-data-for-security.html</a>
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://metacpan.org/pod/C=
rypt::URandom">https://metacpan.org/pod/Crypt::URandom</a>
      <br>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------RXG0BTjATimqOpVqyV9M6sAA--

--------------Le9RrVUA8p8AAbBCFbe6v9ln
Content-Type: application/pgp-keys; name="OpenPGP_0x5F3C0261CDB2E752.asc"
Content-Disposition: attachment; filename="OpenPGP_0x5F3C0261CDB2E752.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBF6+Df8BEADMrK2P+vbWBRu7kmV14Yw8FyNLZqITMsu9+V0XH2a1ChyvI4/l=0A=
8rvFv8GvGbaIkrmGvOhy253gh9rXQq6fmskwSWLsWk+8ngPfo4ikQK5J3t42AO/H=0A=
IjOlg4Ryeig6UQ8UO8FIF7lXuDjXjcVIcg8Whs1V99kRAq/cWuVP5ErGFgRNV+J+=0A=
z9qvAeGTaxsGro41j6fVVZSVPD9eFYGHLauJloVrUtnkp0MNDQZvnsmuHJGxK+Xn=0A=
TrW9/hj/DSc/siIwKlGdBTXkg5VKOQ5oan2vVn/FSTnUIasm4Kabu6MY5EYjLtB4=0A=
aoy23HT65PiVEzJijFOkCq/9bP+gOHZM4xoSngecWgr1hG5q4e2O8VnNPpcVNT7v=0A=
m3NEUPZd5MHVV5fnJJVB/VQqgMgDAiblMmMfS4ocJYupg9vuYJfb8X7dXMKLXK/O=0A=
hfthLH4Uu01pjHXIw3+UnWtBVzwuAQ5CrhV7tWzGXEiu4rhiGcfvHOBDBRYZQeke=0A=
HtvqJ4ztHhybGvK8zpWx97WVguecSyLk83W5m/QVFJI6aiE2e96D67FPubKbjkHM=0A=
757MZgKveihOjLsuj35M1ZMv79HqlgRhA8JUG97WoYUlyANQzCnnryihp05Tv4zy=0A=
2VEwmKD98WrDxg9yTbF0al23qT72mYZXqwJKp+P/cRRj0hNSZ8CvDJGj8QARAQAB=0A=
zSFKYWNxdWVzIERlZ3Vlc3QgPGphY2tAZGVndWVzdC5qcD7CwXkEEwEIACMFAl6+=0A=
Df8CGyMHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgAAKCRBfPAJhzbLnUuIoEACB=0A=
W+wqDkyxX7Ty9tOwhrrunk7Sd1dAXJ97mc4v7bOnbcKO6IcKTkYC5Lw0eB06aclh=0A=
7UxMWY+UrGVejzBuiXtgjoMkeLA4AlzfDusazseFsCxocywR04f2l9C9DkzFGuCz=0A=
Y6v6vKYzr0aeZU30Qm6Sj0oPNvzuhAHGqugxoWjM+esNlMZTy6RGIX438zyux0Tk=0A=
8baoLifCNm7QWjmdGiZiv3ghOA0jL45hTN6eoY3xW9bepRGM+AiykYCoGOg4TiK6=0A=
InP5s+Vp15q2/rM6tdaBrFA5UfMpHODEANf9KuaXkGeZgYP9HCCwLvVjzOeldOlw=0A=
jW4HYgK7XaxKfqKLUvR/G16iGN+iPsqEgrj4JZ81DEw+pCr5shnj13xt2YHrSuNF=0A=
DA930tBB7K6NNirFwe9AZgwUDCBkVb1Jl6xpNMPA8LclMhMS1Yxh7/tHIV/voQz4=0A=
QyoU95OCYdPL1+TGvkxImyNRG0qYyWXrsRn5me/bLzlPuS2feyMNWKrENe0ptlAL=0A=
JA5Va6pqK1ra3xg7V5QvN5EhUA4kI8sRbvUVsES1Hy38yECGI9cCJ/DTxz2YNMlV=0A=
eeuGlYGEUYJfm2br5j7IxR2D5Q4FDCyQS9qHTJ6czNKIkkj9FvROgA339Sd4Z0HZ=0A=
h+LZjSNF4dOr7gDAf6SGooSvHg9t8+KhU/hH2IiN0NH/AAA4Yv8AADhdARAAAQEA=0A=
AAAAAAAAAAAAAAD/2P/gABBKRklGAAEBAQBIAEgAAP/hAJhFeGlmAABNTQAqAAAA=0A=
CAAGAQYAAwAAAAEAAgAAARIAAwAAAAEAAQAAARoABQAAAAEAAABWARsABQAAAAEA=0A=
AABeASgAAwAAAAEAAgAAh2kABAAAAAEAAABmAAAAAAAAAEgAAAABAAAASAAAAAEA=0A=
A6ABAAMAAAABAAEAAKACAAQAAAABAAAAoaADAAQAAAABAAAAswAAAAD/7QA4UGhv=0A=
dG9zaG9wIDMuMAA4QklNBAQAAAAAAAA4QklNBCUAAAAAABDUHYzZjwCyBOmACZjs=0A=
+EJ+/+IMWElDQ19QUk9GSUxFAAEBAAAMSExpbm8CEAAAbW50clJHQiBYWVogB84A=0A=
AgAJAAYAMQAAYWNzcE1TRlQAAAAASUVDIHNSR0IAAAAAAAAAAAAAAAAAAPbWAAEA=0A=
AAAA0y1IUCAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=0A=
AAAAAAAAAAARY3BydAAAAVAAAAAzZGVzYwAAAYQAAABsd3RwdAAAAfAAAAAUYmtw=0A=
dAAAAgQAAAAUclhZWgAAAhgAAAAUZ1hZWgAAAiwAAAAUYlhZWgAAAkAAAAAUZG1u=0A=
ZAAAAlQAAABwZG1kZAAAAsQAAACIdnVlZAAAA0wAAACGdmlldwAAA9QAAAAkbHVt=0A=
aQAAA/gAAAAUbWVhcwAABAwAAAAkdGVjaAAABDAAAAAMclRSQwAABDwAAAgMZ1RS=0A=
QwAABDwAAAgMYlRSQwAABDwAAAgMdGV4dAAAAABDb3B5cmlnaHQgKGMpIDE5OTgg=0A=
SGV3bGV0dC1QYWNrYXJkIENvbXBhbnkAAGRlc2MAAAAAAAAAEnNSR0IgSUVDNjE5=0A=
NjYtMi4xAAAAAAAAAAAAAAASc1JHQiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAAAAA=0A=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAADz=0A=
UQABAAAAARbMWFlaIAAAAAAAAAAAAAAAAAAAAABYWVogAAAAAAAAb6IAADj1AAAD=0A=
kFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9kZXNjAAAA=0A=
AAAAABZJRUMgaHR0cDovL3d3dy5pZWMuY2gAAAAAAAAAAAAAABZJRUMgaHR0cDov=0A=
L3d3dy5pZWMuY2gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=0A=
AAAAAAAAAAAAZGVzYwAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZhdWx0IFJHQiBj=0A=
b2xvdXIgc3BhY2UgLSBzUkdCAAAAAAAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZh=0A=
dWx0IFJHQiBjb2xvdXIgc3BhY2UgLSBzUkdCAAAAAAAAAAAAAAAAAAAAAAAAAAAA=0A=
AGRlc2MAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJRUM2=0A=
MTk2Ni0yLjEAAAAAAAAAAAAAACxSZWZlcmVuY2UgVmlld2luZyBDb25kaXRpb24g=0A=
aW4gSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB2aWV3AAAA=0A=
AAATpP4AFF8uABDPFAAD7cwABBMLAANcngAAAAFYWVogAAAAAABMCVYAUAAAAFcf=0A=
521lYXMAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAKPAAAAAnNpZyAAAAAAQ1JU=0A=
IGN1cnYAAAAAAAAEAAAAAAUACgAPABQAGQAeACMAKAAtADIANwA7AEAARQBKAE8A=0A=
VABZAF4AYwBoAG0AcgB3AHwAgQCGAIsAkACVAJoAnwCkAKkArgCyALcAvADBAMYA=0A=
ywDQANUA2wDgAOUA6wDwAPYA+wEBAQcBDQETARkBHwElASsBMgE4AT4BRQFMAVIB=0A=
WQFgAWcBbgF1AXwBgwGLAZIBmgGhAakBsQG5AcEByQHRAdkB4QHpAfIB+gIDAgwC=0A=
FAIdAiYCLwI4AkECSwJUAl0CZwJxAnoChAKOApgCogKsArYCwQLLAtUC4ALrAvUD=0A=
AAMLAxYDIQMtAzgDQwNPA1oDZgNyA34DigOWA6IDrgO6A8cD0wPgA+wD+QQGBBME=0A=
IAQtBDsESARVBGMEcQR+BIwEmgSoBLYExATTBOEE8AT+BQ0FHAUrBToFSQVYBWcF=0A=
dwWGBZYFpgW1BcUF1QXlBfYGBgYWBicGNwZIBlkGagZ7BowGnQavBsAG0QbjBvUH=0A=
BwcZBysHPQdPB2EHdAeGB5kHrAe/B9IH5Qf4CAsIHwgyCEYIWghuCIIIlgiqCL4I=0A=
0gjnCPsJEAklCToJTwlkCXkJjwmkCboJzwnlCfsKEQonCj0KVApqCoEKmAquCsUK=0A=
3ArzCwsLIgs5C1ELaQuAC5gLsAvIC+EL+QwSDCoMQwxcDHUMjgynDMAM2QzzDQ0N=0A=
Jg1ADVoNdA2ODakNww3eDfgOEw4uDkkOZA5/DpsOtg7SDu4PCQ8lD0EPXg96D5YP=0A=
sw/PD+wQCRAmEEMQYRB+EJsQuRDXEPURExExEU8RbRGMEaoRyRHoEgcSJhJFEmQS=0A=
hBKjEsMS4xMDEyMTQxNjE4MTpBPFE+UUBhQnFEkUahSLFK0UzhTwFRIVNBVWFXgV=0A=
mxW9FeAWAxYmFkkWbBaPFrIW1hb6Fx0XQRdlF4kXrhfSF/cYGxhAGGUYihivGNUY=0A=
+hkgGUUZaxmRGbcZ3RoEGioaURp3Gp4axRrsGxQbOxtjG4obshvaHAIcKhxSHHsc=0A=
oxzMHPUdHh1HHXAdmR3DHeweFh5AHmoelB6+HukfEx8+H2kflB+/H+ogFSBBIGwg=0A=
mCDEIPAhHCFIIXUhoSHOIfsiJyJVIoIiryLdIwojOCNmI5QjwiPwJB8kTSR8JKsk=0A=
2iUJJTglaCWXJccl9yYnJlcmhya3JugnGCdJJ3onqyfcKA0oPyhxKKIo1CkGKTgp=0A=
aymdKdAqAio1KmgqmyrPKwIrNitpK50r0SwFLDksbiyiLNctDC1BLXYtqy3hLhYu=0A=
TC6CLrcu7i8kL1ovkS/HL/4wNTBsMKQw2zESMUoxgjG6MfIyKjJjMpsy1DMNM0Yz=0A=
fzO4M/E0KzRlNJ402DUTNU01hzXCNf02NzZyNq426TckN2A3nDfXOBQ4UDiMOMg5=0A=
BTlCOX85vDn5OjY6dDqyOu87LTtrO6o76DwnPGU8pDzjPSI9YT2hPeA+ID5gPqA+=0A=
4D8hP2E/oj/iQCNAZECmQOdBKUFqQaxB7kIwQnJCtUL3QzpDfUPARANER0SKRM5F=0A=
EkVVRZpF3kYiRmdGq0bwRzVHe0fASAVIS0iRSNdJHUljSalJ8Eo3Sn1KxEsMS1NL=0A=
mkviTCpMcky6TQJNSk2TTdxOJU5uTrdPAE9JT5NP3VAnUHFQu1EGUVBRm1HmUjFS=0A=
fFLHUxNTX1OqU/ZUQlSPVNtVKFV1VcJWD1ZcVqlW91dEV5JX4FgvWH1Yy1kaWWlZ=0A=
uFoHWlZaplr1W0VblVvlXDVchlzWXSddeF3JXhpebF69Xw9fYV+zYAVgV2CqYPxh=0A=
T2GiYfViSWKcYvBjQ2OXY+tkQGSUZOllPWWSZedmPWaSZuhnPWeTZ+loP2iWaOxp=0A=
Q2maafFqSGqfavdrT2una/9sV2yvbQhtYG25bhJua27Ebx5veG/RcCtwhnDgcTpx=0A=
lXHwcktypnMBc11zuHQUdHB0zHUodYV14XY+dpt2+HdWd7N4EXhueMx5KnmJeed6=0A=
RnqlewR7Y3vCfCF8gXzhfUF9oX4BfmJ+wn8jf4R/5YBHgKiBCoFrgc2CMIKSgvSD=0A=
V4O6hB2EgITjhUeFq4YOhnKG14c7h5+IBIhpiM6JM4mZif6KZIrKizCLlov8jGOM=0A=
yo0xjZiN/45mjs6PNo+ekAaQbpDWkT+RqJIRknqS45NNk7aUIJSKlPSVX5XJljSW=0A=
n5cKl3WX4JhMmLiZJJmQmfyaaJrVm0Kbr5wcnImc951kndKeQJ6unx2fi5/6oGmg=0A=
2KFHobaiJqKWowajdqPmpFakx6U4pammGqaLpv2nbqfgqFKoxKk3qamqHKqPqwKr=0A=
davprFys0K1ErbiuLa6hrxavi7AAsHWw6rFgsdayS7LCszizrrQltJy1E7WKtgG2=0A=
ebbwt2i34LhZuNG5SrnCuju6tbsuu6e8IbybvRW9j74KvoS+/796v/XAcMDswWfB=0A=
48JfwtvDWMPUxFHEzsVLxcjGRsbDx0HHv8g9yLzJOsm5yjjKt8s2y7bMNcy1zTXN=0A=
tc42zrbPN8+40DnQutE80b7SP9LB00TTxtRJ1MvVTtXR1lXW2Ndc1+DYZNjo2WzZ=0A=
8dp22vvbgNwF3IrdEN2W3hzeot8p36/gNuC94UThzOJT4tvjY+Pr5HPk/OWE5g3m=0A=
lucf56noMui86Ubp0Opb6uXrcOv77IbtEe2c7ijutO9A78zwWPDl8XLx//KM8xnz=0A=
p/Q09ML1UPXe9m32+/eK+Bn4qPk4+cf6V/rn+3f8B/yY/Sn9uv5L/tz/bf///8AA=0A=
EQgAswChAwESAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkK=0A=
C//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNC=0A=
scEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpj=0A=
ZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4=0A=
ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMB=0A=
AQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwAB=0A=
AgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJico=0A=
KSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJ=0A=
ipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj=0A=
5OXm5+jp6vLz9PX29/j5+v/bAEMAAgICAgICAwICAwQDAwMEBQQEBAQFBwUFBQUF=0A=
BwgHBwcHBwcICAgICAgICAoKCgoKCgsLCwsLDQ0NDQ0NDQ0NDf/bAEMBAgICAwMD=0A=
BgMDBg0JBwkNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0N=0A=
DQ0NDQ0NDQ0NDf/dAAQAFf/aAAwDAQACEQMRAD8A/KMHn2poOa9hIBxyVIHegZxU=0A=
OJSbMiYYNSXYw4HbrXg4qnyy0OuErogiAc+W3KvlT9G4NMVtjA+lcZat1P6HP2Vd=0A=
afxB+zt4A1GVi0p0KzikJ7vEgQ/qK8W/4J/eJ01b4GR6HJMHl0PU7+y2cZSLzTNC=0A=
uB0/cyIR7Yr8wzdLD5pWoS0Unzx9Jb29Ho7bH3OXzdXBwqdV7r9V/mj6m1lfL1Cc=0A=
epB/MU7xAw+3ucj7q1+R5/TUcfPl6n22XTbw8bnI6lzEOcc1j6rqkTZhh+c9OPWu=0A=
PD0pb2OirURBbuWY8dDXLXOoXdurJwSe/c16Cw8pbHM6qPRI7+zt12yyohzjHevl=0A=
Dxh8VINMFxp+myLc6lGNoAbKxk/3iPT/APXXqYThbFYlpxi7Pr0OOvnFGj8TL+tf=0A=
tD32oeMdb0vwtdaVpfhnwptj1TW9TR7k3d6xx9ks4I3j3EYIeQsdpH3T1r4/EMGn=0A=
Wc13qOivFbSSyzPNvLqZJCSz8B1G4nqcAeuK/RKHBuXwpRpqN31bs2/JX0S+V/M+=0A=
Vq59iZTlNvTolol+r++x7jdftQ+LNYiks7ZrGFbiVoxcWoOYoiMqQXJJcHHJUAjn=0A=
FeMweAfD3iHTYNW0LXEg+0glFmiRUicNhom2leVbtxwfevWpcOZTTd1RSa7o4nm+=0A=
Nmrc7sZ3iH4nfFCOYhPEl5bgc+ck7IoBJ3cjPPrnII9OtSav8NPGtpZzgm11URKs=0A=
sDW74d0B5G1uGHXoTjvXpwwWDW0I/cv8jjnicQ9eZ/edx4K+OHj6z0qe21vXZLn5=0A=
TgygPcKxPdwF4UHhu455r5MfVbvSNQmsLyOS3cDASTggoc7T6Yyce1FTI8HU972U=0A=
fuRMczxEPd53959keG/G958NrJrrw/Ibi0v53unZmLP5oOWGRkuOp56g14H4L1xd=0A=
UtLvQJX3CVvPtRn+IMqyJ7bkbp6gGoxeU0Kv8eKki6OY1Yfw3Y+7PA/x/wBc8Ua3=0A=
p9hNb2C2U0cz3NyBJGxZV/dogJZVLMerEjGT2r4h0fWRpWq3cFpM3k2se1CDg5Zx=0A=
5Z+vPWvCxfB2XzptUqaTfXU9Ghn2JU05yul0Ps3wV4/0Bbr4pfFF9A0vQ9V00iGb=0A=
UYpZJjqUFnFuRpQVQ5BAUFQdw29cYr45vJb/AFrQNU8M2c2y21JRbTCMlWmilbzW=0A=
LHGOFUAHsO9ZV+GcPVnh6Mm1Shurtp92k20iqebVIRqTSvOWzstPu1Z9wfsmR67/=0A=
AMK1HjLxRetc33jG6m1l/tMsktxGkzEQx7pGIWJYx8iKFC56cknynwt8TL7SvDtl=0A=
azCNUhhSKFIjtSKOMBFQDOSAFzk9c+mK+e4ny3E47FtxilBaRS6I9TJ8VRw1C0ne=0A=
T1b7s+93vIf7w/A18OXHxp1EArGmQOvLGvnVwpiWev8A21RXU+yb7VLaJGO8E8/h=0A=
XwpcfF/VJkcscsQQFI2rj2renwliE9TKWdUeh6n8SfGenyW9zZRyD5Qcn1I6/lXy=0A=
Zrus3OrTMXOA5B688fWvqct4ehQtKW542Lzd1LxitDU/tCP1/wDHBXK/uv8Aa/MV=0A=
9B9WgeV7Zn//0PygXNSV7ACLTwefahgUrqLeu4dqtt8wwBXLXoRmi4zaOfkUq1XJ=0A=
1zlSMeleTVwrWxvGp3Ppn9lL492fwX8XXlp4jleLw3rwjF1MgLfYrqEbY7kqOTGy=0A=
fu5SPugK2NoYj5Vbch5GCK+bzvh/C5nTVPFRd1tJaNej8+zuj1MuzWvgpuVF6PdP=0A=
Zn9Ah8a2fi2zTUvD97b6lY3CiSO5tZVmSRCOCGQkYI6V+BelXt7pbPNpN1dadI7l=0A=
maxuJbRnY92MDpuPuc18FV8MaanzUq7+cbv77/ofU0uM5ONp0vudvwsfuPdXMqyi=0A=
Tovb3x/SvxrsfGfjy5uIrW28RasJJDsUm+nbbkdeWPT/APVUR8O6sf8Al8vuf+Zf=0A=
+tsG/wCG/vP0b+K/xGuNCU6bpUg/tCcZdiRmFG+6cEgBm7ZPv6Cvn7R7PSdevFHi=0A=
KO9u4FEe6Vo3kklZFA3tIx5bqMDJUe9ejlnDmHwq5qq55fh9xhjM3q1vg91DNJsP=0A=
El9I11dx2ryiXja/myx7vullwOue35mvovw/F4Qjto7aDybOCFAiLOu4oo77pAGJ=0A=
HU4ORXvynpax5ahfU868PahqE+n3Nk0Km7s1cy2UsZBmiJ5aPONwB5PcV9IRHwVD=0A=
bHUrtI3ELhPtFvIobcw5ZHBIyem1sZrnnUV9EdEaMrHglp4O0S4juLvSU2Wd+jTN=0A=
axjbsukAQsufun+FwRn2r3WLVPhtrE8t1pWrJHqMS7pYXT7M8u0cbgw2O+3hX6no=0A=
Sw6Q68i1hbnzbeeCbrX9Nb/hEb+407xHoqs4WUApIOuHjBUOhI65DA5w2DivZ9WX=0A=
Rb66i8ReH3jbVLBlklt/9U5Tdh1KE4IdeCMkZwy1pCvrdEzwtj5h8Y+G9O+JHh5b=0A=
6a3Gn69bFoplIA23Ma5aN+AcsPmU4wy/MvevXPHEej3N+dZs0+xi5CLdIG465jfJ=0A=
6bScgnoQR0rpo12neGhz1MPdWZ8G+EJrvSfEcNvdN5MtvcqTuHuFYduhArs/HOkG=0A=
w8UfbJFVJJikrAcrv+UtgjqGxuHscV6ka0akdTz5UHCR57Jr8ke+3STEt1KWkY9A=0A=
kTMAT/OrWheHrO81drjUQsqK0hEGdqFFYsWc9lHf61pLksQlK52VvqrDSVitzLIH=0A=
BdjGpySRhclRgDA4BPPpWjfeP7GO3ew0yKFkGCAqBYlxweSck/pXJyNu/Kb86S3H=0A=
eEdZmEn2e+uSnmMzhJVKs7dBhm/lXCXnizVY5vMt3hgQc46g457jj8OlZ1cH7VDp=0A=
4jkPdJLqbeVI3A9cjrXzTr2q6lKF1K0vbpFkb97tmJQMcYwFOF9Md6xp5O5acxc8=0A=
w5eh9DzTSfexx2BGDXyf/wAJBriggahdYPYysf5mtf7Dn/MjF5on0PqZpjyV+8eu=0A=
K+TpNb1iT/WX9yf+2zjP5GqWSS/mIeZr+U+r/tCf3j+Qr5E/tK//AOfq4/7/AD//=0A=
ABVV/Yj/AJvw/wCCL+0l2P/R/KENX0d/wyj8WR/y20Rvpdy//Ga5Fxdkz/5iI/ee=0A=
5/q1mf8Az4l9x85Bs5r6Fb9lf4sIfv6Kf+3yUf8AtCq/1syj/oIj95L4dzJf8uZf=0A=
cfPJfjmvf2/Zg+K699GP/b7IP/aFJ8VZS/8AmIj96J/1fzL/AJ8y+4+eZELcivf/=0A=
APhmP4tg8Jox4/5/3/8AkelLiTKJb4iP3oP7CzFa+xl9zPmyRGB2n+VfRh/Zk+Lh=0A=
yPJ0c/S/f/5HrllneUvbER/8CX+Y1k2Y/wDPmX3P/I+eLaPO6voaP9mf4tR53Wuk=0A=
HP8Adv2/+MCsnm2Vf9BEP/Akaf2RmC/5cy+5/wCR578PdP8AtOuiV9hjt0LuW42L=0A=
/ez6jsPU16PpngrWPh9qbaZ4jjt/7QuimyKC48yMp1+Zwqt1AyAM1yYrF0KsP9mk=0A=
pLunc2oYWrSl+/i0+z0PefD48IXcqBluNTujjcWeVYRt4Cgx/dGfU5PpT9EtNLWY=0A=
Wf8AxNNbvgYzJaaephtok7mSXKRrj+7n8WOa8qS5Vc7optnVarr/AIbi0+SB9J8q=0A=
XOzbBL5sm5Rjd++HJH1zXf8AhL4Y295q3nPai1icbjCkhlXaOg3bQD746muCvioQ=0A=
1Z6+Fy+dXU8h8NeA9e1bztRhu5EtZyM+bG8MzAHoRwCB68+1felroVpYwmCJQgVd=0A=
vTsO1eVVzWcnaJ7tDJ6Ufi1Pkc/DS3WDc+XmjXAdR8+P94569+K+k76xjWJ2wPm7=0A=
gccdPrWH1+be56EcupL7J8U+IPCt5p0gns5pFIxkK2CuOhX/AAr2zxPpgaNjjkZJ=0A=
9666eNns2YVcspbpHzJrdxrkFmxu2FxbnJeTODtfru7Yzz7Hnua6fVNpWWCVRggh=0A=
hjgj0rtpYp31PMxGWU7e7ueAeI5hqekRFjm509jHuPVoi25D9VyR9KueJNPEDyPC=0A=
cq42kDv2/lXq0qy6Hh4jAySdzy2x0+91G4bSoHEZupFjdjkjbndjA6881KJ4rGUT=0A=
T+Y2QFIiO1j2Jz24rtjU7Hlzw9tz2T/hntxYDUI75Lp9ofYgEak9wS3Qj6CtLwX8=0A=
VdL02zMNvoKO6RBfOklLS8dSML+hrKdSvfRijSpdTx3XdNPhqYR32nxIDkJx5pkw=0A=
f4eefxNek69440vWg8EkfkB+QvyoQfUAgEVpTqS+0jOpTj9lnkS+ILy2sbgnQY47=0A=
aWMxySTBEG1vbPXuO9Vdc8GTarA17BcyzIGLKjEYz6ZwfmPTPc10QdK93ucs1JLQ=0A=
8mnURuVRi6fwsRjIrpNG8IeJNfa40/RtLuryWyKmSFShkiVyeSWZQQSMcE816UKt=0A=
NfxJpebaRxfV6kn+7i36Jv8AI5EtXpI+FHxIXp4Yvj+MH/x6tY1cL1rQ/wDAl/mH=0A=
1PE/8+pf+Av/ACPNc+1elf8ACqviP/0K9/8A99W//wAeq/aYT/n/AB/8CX+YfVMT=0A=
/wA+pfc/8j//0vTWjOcoT+dbT+HdfxzYSn6Cv5YjDsf0s6i7nNv5q5yxP1FbD+HN=0A=
e/58ph/wGtFF9jJ1F3OZklb+JR/KtWTw/wCIR1spTj/Zq/Zsz9ou5ieavdSPXvWn=0A=
/YOu97Cb/vmn7MTqLuZPmxd2I+orQbQNa6mymH1Wn7Ji9ou5nBlb7rg/jUsuiaui=0A=
s7WUgUckkYFUqbYnOJ8h+Kb5b3x/e3iRBxC5hhc4LhlAUsueAB0UeuSfSvOfiRrk=0A=
Ph3xJcWeqq0fm3cygEEZjGCCDgbtxJ59BX61lmHthYQpbWPzPNKkvrMpVtGfS+gx=0A=
S3USQx3EccKsrmGIsVTPBaRsqrOfQn8O9cn8JdbtfGer2EV4iy2c5LWyxMUUBAOQ=0A=
F67cfMW78AdTSxb9lFuZeBp+1kow1PurwCEbS1KMrkAjKAbQM5wMcVZ0T7JoNi0N=0A=
qoEbHOAMAcV8riainL3T7TDUHCNmdLdlI4XJycdT6V57qev3KedGGwuMriudU5M7=0A=
U0jc1Ge1NvnClSucV5NN4l22bkyb2XgqwyDn9RWvsmjSEkYni66iSAmI454x0xXI=0A=
+JtUe5gwcRgfw9zmtqcHcirJWPJtZnU3J49eRXO65q0aTEN09RXp04O1zzaslexw=0A=
niGLMxQ/dYkj05q5qOy6eNl9j75rupStuedWgrnlOo6eqgr3HfFa2qMBOyscnmuy=0A=
FRnm1qS2sedXbTadi5tZXRj/AK1FyDwe3Yg9RWjqUW4NXbTqN7nlVsOuhQ1vUtUt=0A=
baHUkkjvtPn5WR4w5UjqpI5GPzrlLfV20u5m0m8y1leHlT0V+zD29fzrvhHS6V0e=0A=
PWVnbqdJpHi6CNGhWeWzWTG4H97ATnIOD93nuK4ea1bS79Ys4SRjtJ5XJ7H29RVu=0A=
lCWpzKpJaH1h8Ib23ufF941qAWbTsXJQ4DOsgKkDsDk4FV/gZBLFcapeQwsAsUMX=0A=
A3qpJZiqt17dD0r5biKK9jGC7n03DzftpTb0sfTMjKM/fH4ZrMa7uAOYmP8AwE18=0A=
gqEux9a68e5c81fV/wDvis/7Zcf88G/75NaewfYXto9z/9P9CDbH3rdMYwa/BFho=0A=
n659ZZzL255rdePkgVosOjN4iRyr2uRW68Qp+wiZvEyOYazJ7VvmMU/qyF9Zkcw1=0A=
l7V0TRCmsOhfWpdz5/8AjT4rj+H/AIGvdcwrTBSsKN91nxxn2z1rL/ab8Lt4n8Ha=0A=
ZpQbaLnV7S3cescrjf8A+O5qo0IKa5tj6rhVwq1pynulofHPxP8ADFn4w8JeGvEv=0A=
jawgmvLiISzGNfLL78FcIcgZHfNd18RNQi1bVk8I6DCphs5ktpZmJZhKFAVFXoAg=0A=
O78q9rK6rpuVWLtEOK4QrKFFK835Hkvw78AeMfB9nceOvBml2t3A7vDHossrRSG1=0A=
Dcm1lOQj9T5bDa5/iXrX2DaQQaPpdtpkQCx20SqBx2HJ+pNY4rN5VZ2kk4+f+d0z=0A=
z8JkccPTupOM+6/y1R8qax+1tYPbtpem6RqdnqkDtHc2moWsiGJ4uHXcisOOOTgc=0A=
jPUZ7fX/AB1o+j67q+qmzeZmigtYhEql5Am55XAbnlmCnrnZXZTWFcIzjSd3/e/4=0A=
ByuOM9pKEqysuvLr+Z89r+1DqF3eyfbPLkQtgxIRvUH1AJx+NcH8RfE9l4gsU1nW=0A=
PCkEdhNJJHDdPhZFaNtjFmUbkwxABbAJIAr1qGEp1FrSa+aZ5WIx9ai/4yfqmv8A=0A=
M+ivC/xA07xWGltpxvxl4ycMPSvgzRb1bDV4Z9FvJrF2kAiW4k/dPyPk85cgE9Bv=0A=
GCaVfKItXg7eprheIJ3tVjdd0fopf3cN9bSxSnlFyD2PtXF+H7+bxFo8kIR4tVij=0A=
/e28w2S7QPvADhlP95SRXiyoODtJH01PEUq0b03/AJnlOuu63sgXBGcY9Kzr+9iW=0A=
+kinyJY2IIPXjrXo04+6eZV+IkSRwC7nGOoqy91bC3JwDkZx6ilbUzaZ51qEpM7M=0A=
c9TxU1+9rJIdihfpXVFaHn1dWc9M6NweCTUzQKR+7O4jsa6Io4aiZ5B4xTy54yB0=0A=
NaHja3ZruCBBlpOg+pwK9TBPRngZhujQkiXU7SwL8ymIqD0yYwNpz64OD68V6V8L=0A=
PAl58RPHdr4NsQ4htLcPNLH8rKDtR2B7YDcUSqKmnJvQ5FFzaSPuX9mvwgF+EWk3=0A=
8sBSa+Mtw7OMGQO52P8AQrjb7V9d6JoNnoWiWOiWSbLewt47aJf9iJdo/QV83ip+=0A=
1qOZ61B+zhynmUvhdD/yzH5V6w9svTArJUzR12eP/wDCLp/zyFes/ZU9vyp8gvrE=0A=
j//U/SwrxzTj0xX4efp1yq47U9z2rRIlsoOueae55xirWxk2VCBTicUyLkOBSsQD=0A=
6U1EV7niPxwnSy8O6ZfTA+XbarbyORyVHIz+Gc1b+NOnX+p+FkTT2CvHcK2W5Ucc=0A=
Z9s0qkVofUcLTtXnbe36nyh4E8J6no1/q914jEU91d6vPdQMpLYicKEOSByQv4V6=0A=
hp0VytpaLcyiWYKFdwPvEent2qKlaUoqPRH0MoJ1XOW4zUrSS7glIJDMuBXQXUaL=0A=
aEnIOOTXNBXY5xuj42jC6JrV3pXiNGRHlMlvcSLmPBOSpPbGfyr0jx/aXFwJVCbm=0A=
UALkDJB+vWvaoVW0os8ytg2nzQPmT4u+H459Mvo9Eka0g1GF4bmGPZNBNHJtJK9d=0A=
pO1eRhhjg0zU0S3lnsZnhjDnDDYV2sfUAivYwuIq0tYs8PHYCGIXLVifI8mm3tqT=0A=
brAkvmN+8VxhXyMY9F46V9FweAotRugiXqSFm+5Gpz+ZNel/aEXrJnj/ANjVIO1G=0A=
Oh6x8I5i/g6P+3XaQ6Xte3uXbZOtuw+RhIOQ8fKk55A+YEGm6h4GE3hWfw/byS4u=0A=
JLdYhE7KWeNw3zBcbk/vL0PcEV5FR06lXWXKvT9D26dDE06VlS532f8AmeGfFHWr=0A=
eDxDctgkhspqKAeRdqwBBIXiORSdrggKTyvcCP4n6T/wjOlTWcZa4uYSwZ2OWdgM=0A=
nP416WFVKbUILTvt+G33Hk4729FOdV69t7ej3fzOGuvGsMOnIomRXxzlx/nmvDJr=0A=
ZnG9EVZXjVmAUKd5GT/OvWWXUlLVngSzqu4e6juLjxfezORaYlHqpBrlbDTZJRJN=0A=
KqxCNMq5+Q7h2yDk1s8NSitDijj8RUfU7DSvF1yuoRQXi4V2CkEYI3HFUtKtm1VF=0A=
WSLzZIyMKcLJx0weh/Ssp06drNGsa9a902bt9sutXe+c5SGYpGBlmbYQoCgAkknO=0A=
AOSeBX1h+xz4K8IeKvGU0viEwvq/h+Rr+PTbj/WMpBSKZFP3lR2YycfK+3tgnGtV=0A=
WHpp2MXetPU+yP2avg8fhp4QXUtdtkTxFrGbm8bhmhSTBSEN6KAM44zmvpR3xXg1=0A=
q86rvI6oRUVZETjFMZ/yrJK5TkQODjNI71aFcZsWmb/b9aAuz//V/S5jQTwK/EEf=0A=
pV+hWc80ScitYiZTc0OTVENkBPbrSE5pqJDuQlutDEA4rRIgqzxQ3ETwzIskbjDK=0A=
wDKR6EGnsaqw1Jxd0fNviW1t9L1q9htYkijimHlxqNqqCoOAOwrovidYGG9i1MYC=0A=
XCBWz/fiHH5j+VctanZ3PtMmxaq0lFv3luce+owYKyg4AyR/OvDPH3iS/sLGZtMG=0A=
JyDgeoH0pUqLbsj15y5NWdH41ntzC9ypVQF455B/xHWvDdbk1vUNEiN7d+VI4JcJ=0A=
19+tdtGk+a1zF4jS6R5P4outPbWpp508yadvmwOSRx0Fbuk6FBZZup13NIeWkO5h=0A=
n3PrXqxfKrIw9opO8kizoFnpMH2aS5WayNww2SYGRuOBx15969k0bSdD13SYLSDy=0A=
xqFjGWeI8GRMna6eoHQ+hrCpVs7O53U4U3FOna5c0e2udGlS1vSkgiUyR3HG1sk9=0A=
uzVHqN6I9NmtpyoliT8cDj8657Sk9SuflPjX4yXSTalOGGRIrbjjuzYrA8cSvfar=0A=
cvuDKi7UA5GR3r6HBR5Y3Ph84alN2PIW0+C5kNyq5Bx5gHVcADIHccc1o2BuFkMc=0A=
wIkjOCwGPfP416ntZR0Pn3gFN3iQW+mW4xIQrIOQfp3rqYLaOZuUALdcdCfUjpWc=0A=
q5P1Nx3MXw/bH+01IGIy+c+1fS/wN+Dn/CzfENxbzXL2OnWMIlu5YlBlxISqJGTw=0A=
GbDfNztAzjOK562ISWpPs1TV2dt+x78O18S+NtQ+LF6skdt4fmuLLTyjlRPd3CAT=0A=
bsD5o4Yto25K+YxyNyAj9FNC0LR/C+j2ug6DaRWVhZRLDBBCAqqiDA6DknHJPJPW=0A=
ufEY1zj7OGi/M4VBc3O9zTkbmonY5risVcYziq7NTsLmEd/0qJmxVWHcN59P1pm6=0A=
nyjuj//W/SzNIc9a/Eoo/S2+hBITyTSSZ61qjNspu2eKJPWqSIKxPPpTT1q0iGyN=0A=
mOeay9Z1S10bTpdRuzhIwcAdWb0FaQg3sK5dY89q+LvF/wAftde4eHS3WyhGRlAN=0A=
3HH3jyf0reOGkw5JM+mvHlkL7w3cjH7yIrJGT2YHH6g18Z+A/H+u+L/E80d3qM9x=0A=
Ha20kjo8hZNzEKuR09azxdHkp3Z6eVRmsQpRZQ1KyFzqkrXJ+ULjaevyk5I9sdK6=0A=
rX7AyXEsqqqo8TdOmT1H9a4Y1Hax9h7VyV2fEOv+MvEOqeOJdG0hVMUE+SzAkBRx=0A=
jArufDnhaPRvEeoX90pYXLYB+h4/PNe7GpShSXKtTyuSpUrXm7I17/VrC3jWx122=0A=
ayk2B0uY2Bhkzjlc/dIPUH8zXW6jYWd7pjW12qtAc7X6lc+3p296inVi3qdkqSS7=0A=
nmN/4iufD4j1rTpzP9lO5ZY+SM+o/mK8i8WaBrXhW9lufDtzutJPvIp8yIexU9Oe=0A=
1ejChCezv6nBVqSp9/VO59Aan8QtM8feF01PSfLh1CE+Xew5AYEchh/snqD3HHWv=0A=
h691nUGnLvYxJMRgvAzxMQexx2Pp0rVZWr3i7fics87nGLjPX5Nf5nY69eR2c87X=0A=
BDOSSiAjJP8AQe9ecy3IVDNc2rLnuXyfxzXoU8Py6bnz2JxjnK6Om0C5a8v7lLhR=0A=
++UMuBwCBjFVdKxzdoNowFX1J61FdK1kaYWs1dvY6m1iEc5YkKqZJPYAdf0r3f8A=0A=
Zx+GcnxE8brf6nEW0XQylzeH+GWbIaGDPQliN7jsgGeGrnqVOVWe5Feuo6s+5P2f=0A=
fA7eCvh/by3kflajrRF/dKww0YZQIYz/ALkeM/7RNe3M2Djj8K4ZScmePUquTuxj=0A=
uRUDtSM2yKR/m7VXducd6tInmQ1nOCelQs56U7C5hruRyMflUDE80CuP31XyKdmF=0A=
2f/X/Swj35pjyJGN0jBQO5OP51+LRifpDImHWqMuq6bGSr3USkDoXGa2jTl2M20L=0A=
KPSse51/SoozK1yu1e/+Hr+FaxoTfQzlNdy6xxzmuR03X38SaidO0pSqoN0s8ikL=0A=
Gp6YBGCx7CuiOCqPoYOtFbs5H4yvPH4etjEpMe1pCQe+f8K734iaTHe6StngsscQ=0A=
XJ6n6/Wux0eSKSFQrpzuz8dfi9rsOjXcQSXCTICo7lugwO/0qX48eGY9M8caQbhC=0A=
BHHcmN2+6E3KT+K/nit8Py2bZ3yTlpE779n1002K5u7kt5+p7N285ZUX7o/Mkn3N=0A=
cz4Gu/ssNq8MqyYAUumQpI6gZ5ODxnoe3FcOYQc5csuh6WBlGEeaPU+tNWUCM7vu=0A=
v69M9MfiP1przJqWiBiTlkGSOoI714vLyy1PahVurnj2r6LmN7pSNjNszj5gV9Mf=0A=
rmtq4vxYGW0uxkyIdsh6E4xz7mu6nJ9A54vc8lvNVurK2liJ4AGFPIDd+aTxREkV=0A=
t+6XGOSB0BPb/Cu6nFNjbstzw7xNr0ciOBuVlOQy9/Ue9c7rqea0jHJTOc9Pw/Cv=0A=
UowSPHxUm9mcXfXMNw/m5bJ6ioZLd/NCjLe2a7UePUvfUxZrY3jbVHHuK3rp7TSr=0A=
Zri6bHIAA+8SeAo9WPStIuTfunJOUYq8iSxtFd4rdTtwdo+tbvgvSry9vEv7xNm5=0A=
gEj7Ivp9fU9zTlCy1epzSxL2jsfoP+zt4t0Hwr4WPhfVJFsw1w1xDOwwrtMBvEj9=0A=
juHBPGOOMV4dGWtrdY164AGPWuOdCM3c5Zzcndn6PebFKiyxsrq4DKynIIPQgjgi=0A=
vgfw/wCPvF/h5ltbDUZWtFG+OCTDqqk8qAQeAcjFY/VWtmCR94yN718Z3XxQ8bS4=0A=
catIiMeRHHGMewbBxS9gxezkz6+c/NXzvoHxV1OOMRamBe4/jY7JPzAwfyodNol0=0A=
pdD6ALetecwfEXSp1BaGZGJ6ZUj880uSXYnkl2O+Zu1YFpr+n6gv7qTa3dH4P+FT=0A=
ZitJG1uqn9oT+8Pzo1Fr2P/Q9wk1aS4KmWV3T3Yn+ZrjmuRbIQzZJ6Afzr88Sa2P=0A=
u7HV6ndwxSxyxjDsMZrk4JTOCj/eHTJ7GnYg7Wwu2EDysc4HH+fSsYyeRp8kQYB+=0A=
Me5qkzOS7HvPw3WOKzEwGXvZGdiOny4UfhVHwBLtsNP3kj9xKc+++tInJUPVtVij=0A=
vLWY5GAMZPTin3+ntf6QYLdthQZwO/1onEUJan58fHDwdB4jjePapmtn82CQjIV8=0A=
EEH2YcGvXPEllcSJd2kkWX3EZx1rlas7o9OjVa0Pzw0Z5rBDY3CeXJBIysnQrhjw=0A=
a9B8feHGsNWk1K3RhkKLoqM4wMByR6DAJPTioqRuuY9PD1U/dOs0PxfLDamJvuhe=0A=
fauLs1CW7AYIYfzrhlCL3R6UZSS0ZvXXiKy1RmimYDZk7vf3rzebQr25mbyX8pWP=0A=
JxmtI0oIHOZkeIfFF4989lZwLNAo+ZnOPyPrUWuaHbabA6tPJI5HJU7B+nP6120l=0A=
FbGNWc7HnOqapY8/arV125ztdSD+eK52902GaRwELH1clsfnXfC3U4qlSfQ5a+8Q=0A=
rEWNlAiYGN7tvx+QA/WvS/AXwi1DxxqbQRlo7CyMbXt0RnyY3bAVBjBlcA7B0HU8=0A=
YB6oyj2PNrc1rt2OA8A+EdS8Y67Jr+rAnTtNR/K8z5Ve4YhRtH+wMlvcjvX3D498=0A=
F+HvBel2cmjjyLK1tnUqFJMIi/1iNjlj3cnktzW7rackUeXJpyueRW+mLZsojj2g=0A=
HggV2Xhu807VrNPslxa3sRXKPDMjErjIwM9+1Y2FzGc0cl0RsBHAyehrrmsfs5ZZ=0A=
Y2jZRkbhx9KTZJyt7BLFa/ao9waFgx/3WOG/I81valCG0qcJn5oxx1Ayw74qVuFz=0A=
Ds5HkcMO/XHf6itvTNPeRlwvPtQ9zUv2Nu7sCAea9A03RvKWPzBgt/KpaDnM62sm=0A=
AHWuktYle4libjYMj6ClyoTmZkcz27dcAcVVuG3Fzk4B6elDigvc2f7VP9/9a5L7=0A=
QfUVPs0B/9HvdThM8xkiTaiDA+gq7osp1AC3A5bqT7d6+BsfaKbMywDLcqZB271e=0A=
8QWk2mzxmP5oz/GRjp2FJotSRHJKZdSWLnaOTiqCSL5olTgCM8570kZtn0R4ZlCa=0A=
fpu1cBoR/wCPyCvnLxB+0d4a8LPBoWn6JrGpTWUcUO6KNI1mMeDlWZ+FL/jgVtGn=0A=
N6pHJK1z7vk1GOz0q/u3kSGOElXldgqKi8MxJ4AFfj38afiX8X/jLbf2BfwHQvDt=0A=
ySP7Jtyf9IRjk/aXODICRnYMLzg7q3hScvidiWrbHs/xH/a98GS65ceCPhfpEvi2=0A=
7Fw6Sak0n2eyLpwVhbDPLk8blXZgH5s8V5J8Bvgs+neNtM1G7iysEivgj2rSVKla=0A=
yV2CqTjq2et/DnxHpvjC31y01qxXSvFoID6K7qTLZOoP2i1L4Mqq5MboQGQgE8Mp=0A=
Ov8AtNfCe3u9Xt9csoNs0CiWJ0G1hxztIwQR1BBzWE6EHpax0QxE9yjcfB61l00T=0A=
6XfXNrcnOYpk3wg+mMB1H48V5J4V8R/EDSL+3jfWL+5sxhfs9zMZI+O25styOOSc=0A=
GsHg03ozpjmVWPUr+JdH8TeFo8ajbHyun2iL54se7DkfiBX1pbwv4oslmsHtbhXX=0A=
E1rdr5MoPcbhwfxBqXgbbM7KOe8r9+Nz8/8AUpWv1YcnPWvqzVf2ff7Y1dUsFm0D=0A=
zMyzb0FxZCJSN7JIpGxgPuqwwx/GpdCcTuWaYaotXY+V/Dfw31bxXNL/AGZGFgt8=0A=
faLqXiGEN03HqzEchF5PsOa+sdW8Y/DP4e2yaFaTm7t7At5GnWX76WWXvLcOOC7n=0A=
ltxHp0renSl9o8rEZlG9qS+81PBHhay+HfhhpGlFvZOTOBMq+fe3AAAlYfwoMYRR=0A=
2GPr8zfELx94y+KN7skQ6bp4ASO1hPzBOwdxjt/CuAPeuyELbnlVK05u8ix8V/iP=0A=
aa4L/TNPcT3VzvBEa/KjSDazNglQ2OcdSetc9ofgZYikKR5YkcAVqnFO6M+VvQ8X=0A=
0/4Y201r5rQgOoG1sAEED168V9h3fhmLStMt4pE2yyDftI7Gj20m7jcFsfLHhW1+=0A=
Ivhu4KaTqc9xaBjus70m4gbJ/wBvMiH02uAPQ19I2Glqvyhe+c4pyquW6BU0jA0i=0A=
71DWR9jutBayeXG+VbhWhBHPA4bHtivXdM00CRQo5YDHHesm7isLoHhtLfaJCM4+=0A=
9jgGvUINOWOxJ2bJMjGf1xVKHcbkcxqEX2NUZ1+Q8bvererzrFpciXXIY7VJ56/y=0A=
IpyshJs4KK5KXs0x4XkZz2rHkLozA84J+hrIprQr3bkKzjOCct7VXkYupQDO/rSC=0A=
5R+0J7077Kv94/lT0C7P/9LtPCcrrIzKcHA/U80zwp99vov86+AW59id54xVW0mB=0A=
iASGzmneMP8AkDwf71ORMdzywk5A7BTSN97/AIDUlvY1NG0rTpw001vG8g/iI5q/=0A=
oP8AqXraLaMJHH61a258RxIY1KhRgYqxrP8AyMsf+6KuLdiOh694NijTU7YIoHHa=0A=
pPB//ITt/pW6E9j1P4qWtvcaJFJPGHZYxgntxU/xN/5AKf8AXMfyqKu6FSPj63s7=0A=
UTMoiXG7pirMH+vb/erK7NXse5eCrK0kIZ4lJ8kNnHcHAP5Vb8DdB/17/wDs1a3Z=0A=
zy3Z5Z+05rOq6b4S0HTdPupbe21DULhLlI22+asUYKqxHO0E9M4Pesz9qr/kAeFf=0A=
+wlef+ixWVVvlRdL4mfM+gaZYLZ7xAm4FsHFXtC/48D9WrSm3Yc9zZsLW22E+WvT=0A=
PSrFh/qz9K0IOo8KwQtfMSgJCnFTeFP+P1/9001uNbG945A8yFMfKsSYHpxTvHP+=0A=
ui/65J/KkxxOKsAAjkdQeKWx/wBXJ9aGJnoWlIpaHj0p2k/eh/CtBHca8oTTrRlG=0A=
DmneIP8AkGWn1q5GUNzzHxlI6DylOFJTgdOlM8afe/FP5VlI1PPpWO089qSX7p+l=0A=
SMq4AYEcYQ0p6j/cNWxFHc3rTagD/9nCwXkEEwEIACMFAl6+D+gCGyMHCwkIBwMC=0A=
AQYVCAIJCgsEFgIDAQIeAQIXgAAKCRBfPAJhzbLnUuiIEADJ5EmXlPmfctGkzbeC=0A=
jxM8LtZlHkl2UTwsWkMZKAP73jSJ2POccmO1zdkac9KziCMD6lLyYXc5sumuvCpO=0A=
7hHBRn1j5rYfbxc/hg2TViOXWvJ/a6y+lhIK5ZnxX4xL0DLvJ7Dfw5NE0S2JHxV0=0A=
1ngn/VNASj7d5KrWNCKQckM9DTFuwd387uT39FL1zrEe0SS5cHoCadu9e5O6vyWl=0A=
KY2phXCJX3WzjnQh8LY/G+ZZJ7TX9X0dYkwRiyGoDct6PkA0Su5QJJOANip/dFPV=0A=
Yp9wTCmwx1j7askXYJqxnM2DAMfrosUv7sBQr/d6zkkEah+Aqu+fctS3yMGDOrG/=0A=
G7UegHOYfxFs3BZsAJsVlCzyq4u7vl8g57/gYnxrqTNul+Wh8K0E953+c0cZa+8a=0A=
ypyZbCU2VC8P6dK2Yv36DK8igkGzlALNJPbL+6yG7nsso6QW5KgJrAGH6URbdG3F=0A=
+EXOJKyIign2nAe2JrCuLvrKPnmY0ORQYDA0OUS4hfUAbLB5vba1PPfhiDCAzv4Z=0A=
ZQUzejbPUSsdX1m8szZ8JbTLSfbPGrYYcXe2bbEn8EaDySV48AnrlUIQJ/AAdgGw=0A=
X6ZdU+aNFST5HofMXnFB1RzlRlr9oyo4d86CSTj9TeDZ8LBj3v4zerQ+9XiIUo8V=0A=
NMMrKg8qD80dHXsjn162l9mxR87BTQRevg3/ARAAnGwKoMfVcV3pGE5wUgwgN6pe=0A=
5Aj3rtK+NznH0PsZOmXMzH7M6EuLkWk1fBdvy6fPvTIaHxbju+lCJzXYc1CUB8zo=0A=
tWxmUs70WK4UqX8tMsD4Gg9ErGcPSj56ie+ZOstwDuXQxucj6hSUUpOV0lu381gK=0A=
3BaUbtoT4Y0Nh01FYbAoArra2Gd1z0jDYWKBqEKM6EXKEbct8MQT/PfP8k93CT5K=0A=
YoqcnVy3Sii5ji3QaxzPlOkJLlRJuEYcoXRk+tffi73hwbsfJptPuQJaodLjt2Dh=0A=
Pj3jxRjolfXZzdwttmSgCLsTp8ebzfnh62DmKy65exZOL+uJkK1kWOW5Q76K4KFo=0A=
R//tT9YAr8dKeshqA9619+L97xCB3BzN26OxG6UM/sJRQ5/Paj8D6iIEfVQKoAmQ=0A=
vIrlZKvmZ7EIs6r0Rer6z3fapy60G6ihlL76eh79As8nMIicXkGf8Sy32/p01fu+=0A=
tvXelmJVVgZ8g3XizdnqgjoK67MT2YklSY8icl/p/xImDwW3pXXySloZ6Zm+QTbz=0A=
igaE+oql8aGwMaspMPPzgLzuEKT8hIoSiaEdU7O9J5qU6HPnbW7ITyIiBpk05V9z=0A=
8g8yK+d2xnphvwnpEHiDxs8/sw2SSFhcXjQLKl+vE2rWiengJewiJJ11NSCcgbmb=0A=
KJnaMwew0iMz5IiUKXsAEQEAAcLBXwQYAQgACQUCXr4N/wIbDAAKCRBfPAJhzbLn=0A=
UopcD/4i7h/xjYyPSCB6nRh6sKBzkPSNMv2FqVKDKxkIkVYsCIkgwLgGrWUEDmdX=0A=
B9CtNJv1rCrWlQkQJH7xLqaNqCBBcjYq0vkAoDMIl+d3kVLb8EPKc8B6eFO/YUb+=0A=
aS7FAYURNxJp3xe1+hPtYPr2uj8C+FYIYwWFsmHGYlHV3GnIctjNAqrpMKVfoJne=0A=
Gkr9JDR0R1SKUahPQMcn+Hh4AytvdbePPNsHLgr9IvwgZJObnYcs4iBlpTSF2IsC=0A=
we11fSFziySEaV3dikM89/rL1/SVdJ2ZvGQLNMWF4p8so6mk4KnPRA8QqQJ/Kl3g=0A=
IziQe9MzBaaVsAZ37nbaS46pkb2c59A8QokZcWeEwTVdNF5ixtnOQHtUuO8+1f33=0A=
syQcdztq2GgXOOnm0v/B36BdHwq3fVueDk5bdUrB3HDXsMBUiAoqbrddhjg53TKU=0A=
b0EzwVa21UvD+WWxn2G/PjmxwLnf81pr9Tnn+ky0peDOjeY0QbfleXFtKTqjqq2f=0A=
jAZXT6h+HyvuWG4w6lMWveWUMqffR8WRXXMZ6IIU917NQcnSgFZ5gLd2xLxe2pVZ=0A=
qImeYjvp1p4C47Q5YJV2WGRnIevV+20cVlycnoMsJsCyorivexrnKnq41NjIU41p=0A=
GfOQM+FB2YB9F6lxHMg9oMpLVm9JV8ardK1oBlywlHprVzLvrg=3D=3D=0A=
=3DdpH6=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------Le9RrVUA8p8AAbBCFbe6v9ln--

--------------xiKjQHsCbAcvnYSJ8PW6bJ1B--

--------------0UQQbFpbNSWGvnfdgyYjJgPe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEENa28Ovg1XoRROdiWXzwCYc2y51IFAmnfPxsFAwAAAAAACgkQXzwCYc2y51LE
sg/+LmWKYNHg4buMg68mZv3DEDNtfq9u5vlkZwY6K4pJ782zKcLu76MCX8DXNyH0h02CBCiDrzJi
TUYmmbzu0GeLPbM93QL6uO0IUfPit6i5P3fXG100uG6jN35F17NNcXm3lwdX7GVsikA48CyRJSs2
NZP5iM0cxUcIMJo2hgx6zMyZVnrq3NL8Zx5okoIn6Gyk4Q7GEN4yY/buOz3TfhxHTfaNJJvrvoF1
PRpLc6lFthTBWe3KhWMpf+t7t85XtZC8k3xvUl1aozcPSIkqnqwwfIV07+gbOaZCYCZXIP8zWc8O
Cmm3IzDezxZ/3hw9ctbgp7cn/3L494ZRWjQcHj2qIwhoMnu1Wv4T7fepATmMC16AUbvYtHikWm3v
oo9PdjWeSIRBLl4kHjcyMGXvBNbX6bnHnt5iSBL1w7IDgszIQZUWkp7cu6m5VCWId/1ojh3t7Ih5
iK4OxLIfPwIpJpGdYznt5CV3Vi78C/GQAy/Nrg9Pxzj5knB9gzfa6aIk2sIFhww8KqmiG90gjinq
xr2zi2pQevx2fNlDcLyF9I9g98K3xfDJLz8W9qC6dKNEIffCCDXKqHbPCgCMKt3B0vBIIr2MpyNp
01r9rYFGJOPf596TGa/pGRTidKWtTJv3DoXbBNLn95hZT5QCAENfNWgnreEhlni6R5oGOTdx+WVA
/F8=
=GmN2
-----END PGP SIGNATURE-----

--------------0UQQbFpbNSWGvnfdgyYjJgPe--
