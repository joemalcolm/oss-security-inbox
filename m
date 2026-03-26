Received: (qmail 5315 invoked by uid 550); 26 Mar 2026 15:05:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25781 invoked from network); 26 Mar 2026 12:24:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1774527876; x=1775132676; darn=lists.openwall.com;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BjiVae1OUkiC7qr8+WSQzejecCRmB09E/ef3t348aHc=;
        b=cDJ1nKscymwfMr0eL9pE5blCk082sYWJ2nQ7cfalk++KwQghBBay1tRnubnvFUbxJV
         4gh+u/N9t9OmKZ4grHeguCP4megvScx45Kw7RWPnsp5z+uQDc5TN2G2sWxyvCkiibYm7
         RaYsQocTDvIcPutcXxv0H20OoJKqJc3knIAX567hId75O5EQLZ2N+9dGHxGcHu9mLLyt
         bOhf132CMabtf6F2udUwIapjlyzTEOnowbsfRg5WmXYMiAV5tjOz6K80pwcVsCmQUCoT
         X6KNQegMThSgKa0DlbAej2A3WOKbm7ZKQAzYMmIz5Z276dgnGCuKUVRXqn/mmZZTh/OZ
         RS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774527876; x=1775132676;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BjiVae1OUkiC7qr8+WSQzejecCRmB09E/ef3t348aHc=;
        b=ZWrKani3I/FQdq//MEcAObYJyifu5b6hh+2vISmnrjGz3GAcJtrXhNcg7CadNCstR4
         TJxYor+pfDyzO9zkgAsYKNonFg7bUhUrEQFMnX/Abtl4F4y6KADJhEdFQwbB1egT8Kh7
         +/GDm0vWVkLAHYWDnAhDKQr6w+QYKPIbyS4MI7U3TJljZ+6Rd1S2nZ/2PCRgKvM2gbtP
         Pra0HFORJ03lKZKX+LDI16wmysOigrrvcTtXsDKsFOE7bhSSKN9jJQ1szmnBfcsaiju4
         PIp+/yeDa9EHrby44eDK7LCfne9QClKZDeJrX5HxEDAMdR1+siVIQxOtnGP/BLoqBAS/
         dV4g==
X-Forwarded-Encrypted: i=1; AJvYcCWNQyY+cKO793ajHx6OfN85Ba/QxTos6TE+aXsp+Bv9NBmY1mFzozQBtvb6cxXLSlBQenDRnT7CqAwS5tk=@lists.openwall.com
X-Gm-Message-State: AOJu0Yxxvh5fieWlM90qbZnzsLvfBXEZTha8+4cKQF5FpthqVnOWeJCX
	cbYLh/roYV7q6hTNuXvAmd8WGMhmIc0dAL/jW24vxR4hwQXxUnqjwTsnw0Yyc+RtQt8=
X-Gm-Gg: ATEYQzy8nVJzMjtKhOYidJCcj0r48jLcpRrYyXfGpLxBEAq5ofLDayyq3e2l4rC261K
	SkhbnolUwfHUxtarRSFzkNWmuBUFAihXY6bIaMo+MFF6dotdGWL+x42hsZdLMSArQQMUj3HgfCA
	J8/9zrItfjwxcDfqX4Fskzv2lLj+ppasJ78bXGGF/zMoSepoQE7xv8ss7bSwx398muLhYvBbLLc
	WgPigaI9BpU4Gn9y4YuHibcgMw8MFUabzr1lDcW4dmVc+60anS61GnMIW3KBV8eXV9xU2efqybw
	DFUEM/JcxeO0671OKWCcGS9Zk1WPUekmMIx4124A3TxSCdIWhuAfLewgdth/T3nGWsttqulCZd0
	XQ7SMdGmWn0L1DdjUNe6luaM0O/zIZMKhsgy7KbVb0Z8ag+1LeiTEr6ZndKk+8Y0JOk5SHCgWoh
	2R5vXHdEz9b3nI3gwDaH2CKdatig8Io3q6yyUNAOpzogF2Tu8ytWHpW2M43jHbM8mCMtSw47yHw
	X7U/p4eBz6DZh7R/r9qR5R9YdzoIsJRHl2HfYvr1tikalJdkUTQJg==
X-Received: by 2002:a17:907:e0d8:b0:b97:f12a:3f8c with SMTP id a640c23a62f3a-b9a3f17f152mr307406766b.20.1774527876090;
        Thu, 26 Mar 2026 05:24:36 -0700 (PDT)
Message-ID: <a8d5f53c-ad38-4439-9dc6-930519db9c0b@suse.com>
Date: Thu, 26 Mar 2026 13:24:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Greg KH <greg@kroah.com>, oss-security@lists.openwall.com
Cc: xen-devel@lists.xen.org, xen-users@lists.xen.org,
 "Xen.org security team" <security-team-members@xen.org>
References: <E1w50W0-00Bwo0-1i@xenbits.xenproject.org>
 <2026032453-departed-thrash-f153@gregkh>
 <2026032405-faculty-agony-2599@gregkh>
Content-Language: en-US
From: Juergen Gross <jgross@suse.com>
Autocrypt: addr=jgross@suse.com; keydata=
 xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjrioyspZKOB
 ycWxw3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2kaV2KL9650I1SJve
 dYm8Of8Zd621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i1TXkH09XSSI8mEQ/ouNcMvIJ
 NwQpd369y9bfIhWUiVXEK7MlRgUG6MvIj6Y3Am/BBLUVbDa4+gmzDC9ezlZkTZG2t14zWPvx
 XP3FAp2pkW0xqG7/377qptDmrk42GlSKN4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEB
 AAHNH0p1ZXJnZW4gR3Jvc3MgPGpncm9zc0BzdXNlLmNvbT7CwHkEEwECACMFAlOMcK8CGwMH
 CwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgAAKCRCw3p3WKL8TL8eZB/9G0juS/kDY9LhEXseh
 mE9U+iA1VsLhgDqVbsOtZ/S14LRFHczNd/Lqkn7souCSoyWsBs3/wO+OjPvxf7m+Ef+sMtr0
 G5lCWEWa9wa0IXx5HRPW/ScL+e4AVUbL7rurYMfwCzco+7TfjhMEOkC+va5gzi1KrErgNRHH
 kg3PhlnRY0Udyqx++UYkAsN4TQuEhNN32MvN0Np3WlBJOgKcuXpIElmMM5f1BBzJSKBkW0Jc
 Wy3h2Wy912vHKpPV/Xv7ZwVJ27v7KcuZcErtptDevAljxJtE7aJG6WiBzm+v9EswyWxwMCIO
 RoVBYuiocc51872tRGywc03xaQydB+9R7BHPzsBNBFOMcBYBCADLMfoA44MwGOB9YT1V4KCy
 vAfd7E0BTfaAurbG+Olacciz3yd09QOmejFZC6AnoykydyvTFLAWYcSCdISMr88COmmCbJzn
 sHAogjexXiif6ANUUlHpjxlHCCcELmZUzomNDnEOTxZFeWMTFF9Rf2k2F0Tl4E5kmsNGgtSa
 aMO0rNZoOEiD/7UfPP3dfh8JCQ1VtUUsQtT1sxos8Eb/HmriJhnaTZ7Hp3jtgTVkV0ybpgFg
 w6WMaRkrBh17mV0z2ajjmabB7SJxcouSkR0hcpNl4oM74d2/VqoW4BxxxOD1FcNCObCELfIS
 auZx+XT6s+CE7Qi/c44ibBMR7hyjdzWbABEBAAHCwF8EGAECAAkFAlOMcBYCGwwACgkQsN6d
 1ii/Ey9D+Af/WFr3q+bg/8v5tCknCtn92d5lyYTBNt7xgWzDZX8G6/pngzKyWfedArllp0Pn
 fgIXtMNV+3t8Li1Tg843EXkP7+2+CQ98MB8XvvPLYAfW8nNDV85TyVgWlldNcgdv7nn1Sq8g
 HwB2BHdIAkYce3hEoDQXt/mKlgEGsLpzJcnLKimtPXQQy9TxUaLBe9PInPd+Ohix0XOlY+Uk
 QFEx50Ki3rSDl2Zt2tnkNYKUCvTJq7jvOlaPd6d/W0tZqpyy7KVay+K4aMobDsodB3dvEAs6
 ScCnh03dDAFgIq5nsB11j3KPKdVoPlfucX2c7kGNH+LUMbzqV6beIENfNexkOfxHfw==
In-Reply-To: <2026032405-faculty-agony-2599@gregkh>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nw8gdKChhgJqVH12D0LHtpD0"
Subject: Re: [oss-security] Xen Security Advisory 482 v2 - Linux privcmd
 driver can circumvent kernel lockdown

--------------nw8gdKChhgJqVH12D0LHtpD0
Content-Type: multipart/mixed; boundary="------------KP00Cr08CaoLPpzGlMsnkBLb";
 protected-headers="v1"
From: Juergen Gross <jgross@suse.com>
To: Greg KH <greg@kroah.com>, oss-security@lists.openwall.com
Cc: xen-devel@lists.xen.org, xen-users@lists.xen.org,
 "Xen.org security team" <security-team-members@xen.org>
Message-ID: <a8d5f53c-ad38-4439-9dc6-930519db9c0b@suse.com>
Subject: Re: [oss-security] Xen Security Advisory 482 v2 - Linux privcmd
 driver can circumvent kernel lockdown
References: <E1w50W0-00Bwo0-1i@xenbits.xenproject.org>
 <2026032453-departed-thrash-f153@gregkh>
 <2026032405-faculty-agony-2599@gregkh>
In-Reply-To: <2026032405-faculty-agony-2599@gregkh>

--------------KP00Cr08CaoLPpzGlMsnkBLb
Content-Type: multipart/mixed; boundary="------------PP8RneE0SuDwvL0vSRYinmq3"

--------------PP8RneE0SuDwvL0vSRYinmq3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgR3JlZywNCg0KT24gMjQuMDMuMjYgMTM6MzEsIEdyZWcgS0ggd3JvdGU6DQo+IE9uIFR1ZSwg
TWFyIDI0LCAyMDI2IGF0IDAxOjE2OjA4UE0gKzAxMDAsIEdyZWcgS0ggd3JvdGU6DQo+PiBPbiBU
dWUsIE1hciAyNCwgMjAyNiBhdCAxMjowNTo0NFBNICswMDAwLCBYZW4ub3JnIHNlY3VyaXR5IHRl
YW0gd3JvdGU6DQo+Pj4gLS0tLS1CRUdJTiBQR1AgU0lHTkVEIE1FU1NBR0UtLS0tLQ0KPj4+IEhh
c2g6IFNIQTI1Ng0KPj4+DQo+Pj4gICAgICAgICAgICAgICAgICAgICAgWGVuIFNlY3VyaXR5IEFk
dmlzb3J5IFhTQS00ODINCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmVyc2lv
biAyDQo+Pj4NCj4+PiAgICAgICAgICAgIExpbnV4IHByaXZjbWQgZHJpdmVyIGNhbiBjaXJjdW12
ZW50IGtlcm5lbCBsb2NrZG93bg0KPj4+DQo+Pj4gVVBEQVRFUyBJTiBWRVJTSU9OIDINCj4+PiA9
PT09PT09PT09PT09PT09PT09PQ0KPj4+DQo+Pj4gUHVibGljIHJlbGVhc2UuDQo+Pj4NCj4+PiBJ
U1NVRSBERVNDUklQVElPTg0KPj4+ID09PT09PT09PT09PT09PT09DQo+Pj4NCj4+PiBUaGUgTGlu
dXgga2VybmVsJ3MgcHJpdmNtZCBkcml2ZXIgY2FuIGJlIGFidXNlZCB0byBjaXJjdW12ZW50IGtl
cm5lbA0KPj4+IGxvY2tkb3duIChzZWN1cmUgYm9vdCksIGUuZy4gYnkgbW9kaWZ5aW5nIHBhZ2Ug
dGFibGVzIHRvIGVuYWJsZSB1c2VyDQo+Pj4gbW9kZSB0byBtb2RpZnkga2VybmVsIG1lbW9yeS4N
Cj4+Pg0KPj4+IFRoZSBDTkEgY292ZXJpbmcgTGludXggaGFzIHJlZnVzZWQgdG8gYXNzaWduIGEg
Q1ZFIGF0IHRoaXMganVuY3R1cmUuDQo+Pg0KPj4gVGhpcyBpcyBub3cgYXNzaWduZWQgdG8gQ1ZF
LTIwMjYtMzE3ODgNCj4gDQo+IEFuZCwgdG8gYmUgbW9yZSBjbGVhciwgdGhlIGtlcm5lbCBDTkEg
c2hvdWxkIGhhdmUgZ2l2ZW4geW91IGEgQ1ZFDQo+IGVhcmxpZXIsIHNvcnJ5IGFib3V0IHRoYXQs
IHRoYXQgd2FzIG15IGZhdWx0LiAgV2UgaGFkIGJlZW4gImJ1cm5lZCIgYnkNCj4gb3RoZXIgZ3Jv
dXBzL2NvbXBhbmllcyBhc2tpbmcgZm9yIENWRXMgImFoZWFkIG9mIHRpbWUiIGZvciBMaW51eCBm
b3INCj4gdGhpbmdzIHRoYXQgdHVybmVkIG91dCB0byBiZSB3cm9uZyBvciBub3QgbmVlZGluZyBh
IENWRSBhdCBhbGwgYXQgdGhlDQo+IHNhbWUgdGltZSB5b3UgYWxsIGFza2VkIGZvciBvbmUsIHNv
IEkgcmVhY3RlZCBtdWNoIGhhcnNoZXIgaGVyZSB0aGFuIHlvdQ0KPiBhbGwgZGVzZXJ2ZWQgYnkg
c2F5aW5nIHdlIHdvdWxkIGFzc2lnbiBvbmUgb25jZSB0aGUgaXNzdWUgd2FzIHB1YmxpYy4gIEkN
Cj4gc2hvdWxkIGhhdmUgdHJ1c3RlZCB5b3UgYXMgb2J2aW91c2x5IHlvdSBrbm93IHdoYXQgeW91
IGFyZSBkb2luZyBoZXJlDQo+IGFuZCBzaG91bGQgaGF2ZSBnb3R0ZW4gYSBDVkUgZm9yIHlvdXIg
YWNjb3VudGluZyBlYXJsaWVyLg0KPiANCj4gQWdhaW4sIG15IGZhdWx0LCBzb3JyeSBhYm91dCB0
aGF0LCBpZiB5b3UgYWxsIG5lZWQgb25lIGluIHRoZSBmdXR1cmUgZm9yDQo+IGFueSBpc3N1ZSwg
d2Ugd2lsbCBhc3NpZ24gaXQgYWhlYWQgb2YgdGltZS4NCg0KVGhhbmtzIGZvciB0aGUgbm90aWNl
Lg0KDQpTdWNoIHRoaW5ncyBoYXBwZW4gYXMgbm9ib2R5IGlzIHBlcmZlY3QuDQoNClN0YXkgdHVu
ZWQgZm9yIGZ1dHVyZSBDVkUgcmVxdWVzdHMuIDotKQ0KDQoNCkp1ZXJnZW4NCg==

--------------PP8RneE0SuDwvL0vSRYinmq3
Content-Type: application/pgp-keys; name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Disposition: attachment; filename="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjri=0A=
oyspZKOBycWxw3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2=0A=
kaV2KL9650I1SJvedYm8Of8Zd621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i=0A=
1TXkH09XSSI8mEQ/ouNcMvIJNwQpd369y9bfIhWUiVXEK7MlRgUG6MvIj6Y3Am/B=0A=
BLUVbDa4+gmzDC9ezlZkTZG2t14zWPvxXP3FAp2pkW0xqG7/377qptDmrk42GlSK=0A=
N4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEBAAHNHEp1ZXJnZW4gR3Jvc3Mg=0A=
PGpnQHBmdXBmLm5ldD7CwHkEEwECACMFAlOMcBYCGwMHCwkIBwMCAQYVCAIJCgsE=0A=
FgIDAQIeAQIXgAAKCRCw3p3WKL8TL0KdB/93FcIZ3GCNwFU0u3EjNbNjmXBKDY4F=0A=
UGNQH2lvWAUy+dnyThpwdtF/jQ6j9RwE8VP0+NXcYpGJDWlNb9/JmYqLiX2Q3Tye=0A=
vpB0CA3dbBQp0OW0fgCetToGIQrg0MbD1C/sEOv8Mr4NAfbauXjZlvTj30H2jO0u=0A=
+6WGM6nHwbh2l5O8ZiHkH32iaSTfN7Eu5RnNVUJbvoPHZ8SlM4KWm8rG+lIkGurq=0A=
qu5gu8q8ZMKdsdGC4bBxdQKDKHEFExLJK/nRPFmAuGlId1E3fe10v5QL+qHI3EIP=0A=
tyfE7i9Hz6rVwi7lWKgh7pe0ZvatAudZ+JNIlBKptb64FaiIOAWDCx1SzR9KdWVy=0A=
Z2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+wsB5BBMBAgAjBQJTjHCvAhsDBwsJ=0A=
CAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey/HmQf/RtI7kv5A2PS4=0A=
RF7HoZhPVPogNVbC4YA6lW7DrWf0teC0RR3MzXfy6pJ+7KLgkqMlrAbN/8Dvjoz7=0A=
8X+5vhH/rDLa9BuZQlhFmvcGtCF8eR0T1v0nC/nuAFVGy+67q2DH8As3KPu0344T=0A=
BDpAvr2uYM4tSqxK4DURx5INz4ZZ0WNFHcqsfvlGJALDeE0LhITTd9jLzdDad1pQ=0A=
SToCnLl6SBJZjDOX9QQcyUigZFtCXFst4dlsvddrxyqT1f17+2cFSdu7+ynLmXBK=0A=
7abQ3rwJY8SbRO2iRulogc5vr/RLMMlscDAiDkaFQWLoqHHOdfO9rURssHNN8WkM=0A=
nQfvUewRz80hSnVlcmdlbiBHcm9zcyA8amdyb3NzQG5vdmVsbC5jb20+wsB5BBMB=0A=
AgAjBQJTjHDXAhsDBwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/=0A=
Ey8PUQf/ehmgCI9jB9hlgexLvgOtf7PJnFOXgMLdBQgBlVPO3/D9R8LtF9DBAFPN=0A=
hlrsfIG/SqICoRCqUcJ96Pn3P7UUinFG/I0ECGF4EvTE1jnDkfJZr6jrbjgyoZHi=0A=
w/4BNwSTL9rWASyLgqlA8u1mf+c2yUwcGhgkRAd1gOwungxcwzwqgljf0N51N5Jf=0A=
VRHRtyfwq/ge+YEkDGcTU6Y0sPOuj4Dyfm8fJzdfHNQsWq3PnczLVELStJNdapwP=0A=
OoE+lotufe3AM2vAEYJ9rTz3Cki4JFUsgLkHFqGZarrPGi1eyQcXeluldO3m91NK=0A=
/1xMI3/+8jbO0tsn1tqSEUGIJi7ox80eSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1=0A=
c2UuZGU+wsB5BBMBAgAjBQJTjHDrAhsDBwsJCAcDAgEGFQgCCQoLBBYCAwECHgEC=0A=
F4AACgkQsN6d1ii/Ey+LhQf9GL45eU5vOowA2u5N3g3OZUEBmDHVVbqMtzwlmNC4=0A=
k9Kx39r5s2vcFl4tXqW7g9/ViXYuiDXb0RfUpZiIUW89siKrkzmQ5dM7wRqzgJpJ=0A=
wK8Bn2MIxAKArekWpiCKvBOB/Cc+3EXE78XdlxLyOi/NrmSGRIov0karw2RzMNOu=0A=
5D+jLRZQd1Sv27AR+IP3I8U4aqnhLpwhK7MEy9oCILlgZ1QZe49kpcumcZKORmzB=0A=
TNh30FVKK1EvmV2xAKDoaEOgQB4iFQLhJCdP1I5aSgM5IVFdn7v5YgEYuJYx37Io=0A=
N1EblHI//x/e2AaIHpzK5h88NEawQsaNRpNSrcfbFmAg987ATQRTjHAWAQgAyzH6=0A=
AOODMBjgfWE9VeCgsrwH3exNAU32gLq2xvjpWnHIs98ndPUDpnoxWQugJ6MpMncr=0A=
0xSwFmHEgnSEjK/PAjppgmyc57BwKII3sV4on+gDVFJR6Y8ZRwgnBC5mVM6JjQ5x=0A=
Dk8WRXljExRfUX9pNhdE5eBOZJrDRoLUmmjDtKzWaDhIg/+1Hzz93X4fCQkNVbVF=0A=
LELU9bMaLPBG/x5q4iYZ2k2ex6d47YE1ZFdMm6YBYMOljGkZKwYde5ldM9mo45mm=0A=
we0icXKLkpEdIXKTZeKDO+Hdv1aqFuAcccTg9RXDQjmwhC3yEmrmcfl0+rPghO0I=0A=
v3OOImwTEe4co3c1mwARAQABwsBfBBgBAgAJBQJTjHAWAhsMAAoJELDendYovxMv=0A=
Q/gH/1ha96vm4P/L+bQpJwrZ/dneZcmEwTbe8YFsw2V/Buv6Z4Mysln3nQK5ZadD=0A=
534CF7TDVft7fC4tU4PONxF5D+/tvgkPfDAfF77zy2AH1vJzQ1fOU8lYFpZXTXIH=0A=
b+559UqvIB8AdgR3SAJGHHt4RKA0F7f5ipYBBrC6cyXJyyoprT10EMvU8VGiwXvT=0A=
yJz3fjoYsdFzpWPlJEBRMedCot60g5dmbdrZ5DWClAr0yau47zpWj3enf1tLWaqc=0A=
suylWsviuGjKGw7KHQd3bxALOknAp4dN3QwBYCKuZ7AddY9yjynVaD5X7nF9nO5B=0A=
jR/i1DG86lem3iBDXzXsZDn8R3/CwO0EGAEIACAWIQSFEmdy6PYElKXQl/ew3p3W=0A=
KL8TLwUCWt3w0AIbAgCBCRCw3p3WKL8TL3YgBBkWCAAdFiEEUy2wekH2OPMeOLge=0A=
gFxhu0/YY74FAlrd8NAACgkQgFxhu0/YY75NiwD/fQf/RXpyv9ZX4n8UJrKDq422=0A=
bcwkujisT6jix2mOOwYBAKiip9+mAD6W5NPXdhk1XraECcIspcf2ff5kCAlG0DIN=0A=
aTUH/RIwNWzXDG58yQoLdD/UPcFgi8GWtNUp0Fhc/GeBxGipXYnvuWxwS+Qs1Qay=0A=
7/Nbal/v4/eZZaWs8wl2VtrHTS96/IF6q2o0qMey0dq2AxnZbQIULiEndgR625EF=0A=
RFg+IbO4ldSkB3trsF2ypYLij4ZObm2casLIP7iB8NKmQ5PndL8Y07TtiQ+Sb/wn=0A=
g4GgV+BJoKdDWLPCAlCMilwbZ88Ijb+HF/aipc9hsqvW/hnXC2GajJSAY3Qs9Mib=0A=
4Hm91jzbAjmp7243pQ4bJMfYHemFFBRaoLC7ayqQjcsttN2ufINlqLFPZPR/i3IX=0A=
kt+z4drzFUyEjLM1vVvIMjkUoJs=3D=0A=
=3DeeAB=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------PP8RneE0SuDwvL0vSRYinmq3--

--------------KP00Cr08CaoLPpzGlMsnkBLb--

--------------nw8gdKChhgJqVH12D0LHtpD0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmnFJYMFAwAAAAAACgkQsN6d1ii/Ey/D
nQf/frf7lOqSmDBJXfXZ/2DO0ZGv6qn75PPVjrd9AQfEKvdy6l6uxLXb2IPKSAvpb3aZZvb/7ZI4
2c2aYM0KHLHgiZDakcqS45/5+V28yunp0hH7anGj/VJ2c9abvo4AJ9kFxkeRBi08LSNGTIcS0Wyd
18nkgzWuUN5djvS3Ou5anij2ozbpSVLWfYCY6KfUPuux+v58VF3HbxVfwCJujdxtgMbABGvE4YWe
R1LitIOk4WZS6TAyVBrLVZlDQ6fsvxaUs7zBt5O3iTattGbM5RNx3SiM5lyt23bRGIGAGv566C43
jJUvW97uZJMX9K3fH2axA+EXm3nGMYR/UTnHFqn83Q==
=F6F6
-----END PGP SIGNATURE-----

--------------nw8gdKChhgJqVH12D0LHtpD0--
