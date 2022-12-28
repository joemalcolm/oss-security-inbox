Received: (qmail 20334 invoked by uid 550); 28 Dec 2022 20:00:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18297 invoked from network); 28 Dec 2022 19:57:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7iWWM5HBnxZTnzsqfsNwudjx2e2L6OFca5hFA/CkMLg=;
        b=dFEE/CgXN6VMgzULqrsH4OO67FJtEvk65BhlacsmgLKSgVQG1bsuSnD6hcRuvpEvLH
         RnJ4IJOUrHvWomnjN9fguiu6bITQ7mbz5xHV45i/3vnCjbvI/SdoBJDA2N0itKbTwej0
         tIe3r9mT1cAD9CHqTp1LPBBhHXYLo6XkIVvi8irATqi5zLEjXd+bTGGSNasAgkL6u1Oh
         TeCN2MvaJSffgzqqwfNm09hFf075L3PQEQIEOzLwyiS3MVuF4lLmiT0FTYHTjphdck6v
         0MCjyTrVhhPMzaeN1R5cH/2VO/ywEelGB9uPYMyhSfLEhrU57xbkMhRi2sp2751noljZ
         7F/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7iWWM5HBnxZTnzsqfsNwudjx2e2L6OFca5hFA/CkMLg=;
        b=W1uCY2wLm/twnNEbq9vtg9CQF9Q0nsA9DCHUwkE84O91BATyZfLwUDy0cEeq//RixS
         t4bDsOQPnSjgQ2gXvKTg4vpI5TiA9hFX4SQG6ZWcqeYJNAkEDb8fvJhoIRQaRZrBNgey
         wMWBxeHBOWuSHdJL+zBMikY+p2eKzEe93Qlxw71/IoR56maIt5X0fGmZknyBUpI3GxoI
         QgdPNKcd2DGgDvvtQnt4J9wZl8ZWQXEHmexVDRVKAjIGniGF/5QWMhi/3pLsjMMW2ktB
         UsXjwFUoGOKZdXQtyFCPJk8E5btpC94kedqltiGtOmCJxSF/jEgoNiy13aQxa4CbZorO
         SWkw==
X-Gm-Message-State: AFqh2kpYFm41LsyAT/YNYdz6Hkbl8YfqzIdPKND9CNeEjy6z/kEsnO67
	VYnhps6DXQTXvVMuKymMmUY=
X-Google-Smtp-Source: AMrXdXuLESOyOjZvL9HtbF43HfqRgS7qaQb87x2ZIjH/uvbuVfL5Vtih0H6mR4iIUtB9joy4CsJxhw==
X-Received: by 2002:a5d:6ac1:0:b0:284:2216:c23e with SMTP id u1-20020a5d6ac1000000b002842216c23emr3941322wrw.44.1672257443786;
        Wed, 28 Dec 2022 11:57:23 -0800 (PST)
Message-ID: <551c6d28-2b4e-ce4e-7602-29afe014d725@gmail.com>
Date: Wed, 28 Dec 2022 20:57:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Shawn Webb <shawn.webb@hardenedbsd.org>, oss-security@lists.openwall.com,
 John Helmert III <ajak@gentoo.org>,
 Demi Marie Obenour <demi@invisiblethingslab.com>,
 Jan Engelhardt <jengelh@inai.de>,
 "Lyndon Nerenberg (VE7TFX/VE6BBM)" <lyndon@orthanc.ca>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-kernel@vger.kernel.org,
 linux-man@vger.kernel.org
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email> <20221228172517.l7h3m7wjfpxr3dzw@mutt-hbsd>
 <Y6yEv+6iYQQNaqi9@itl-email> <20221228192436.viuoyil2ntr4lxjo@mutt-hbsd>
Content-Language: en-US
From: Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221228192436.viuoyil2ntr4lxjo@mutt-hbsd>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uQsnnfGhGlsKwv1EyHZlFxph"
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

--------------uQsnnfGhGlsKwv1EyHZlFxph
Content-Type: multipart/mixed; boundary="------------GxGiU4j9OA3T2C2mhp0X8dga";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Shawn Webb <shawn.webb@hardenedbsd.org>, oss-security@lists.openwall.com,
 John Helmert III <ajak@gentoo.org>,
 Demi Marie Obenour <demi@invisiblethingslab.com>,
 Jan Engelhardt <jengelh@inai.de>,
 "Lyndon Nerenberg (VE7TFX/VE6BBM)" <lyndon@orthanc.ca>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-kernel@vger.kernel.org,
 linux-man@vger.kernel.org
Message-ID: <551c6d28-2b4e-ce4e-7602-29afe014d725@gmail.com>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email> <20221228172517.l7h3m7wjfpxr3dzw@mutt-hbsd>
 <Y6yEv+6iYQQNaqi9@itl-email> <20221228192436.viuoyil2ntr4lxjo@mutt-hbsd>
In-Reply-To: <20221228192436.viuoyil2ntr4lxjo@mutt-hbsd>

--------------GxGiU4j9OA3T2C2mhp0X8dga
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpPbiAxMi8yOC8yMiAyMDoyNCwgU2hhd24gV2ViYiB3cm90
ZToNCj4gT24gV2VkLCBEZWMgMjgsIDIwMjIgYXQgMDE6MDI6MzVQTSAtMDUw
MCwgRGVtaSBNYXJpZSBPYmVub3VyIHdyb3RlOg0KPj4gT24gV2VkLCBEZWMg
MjgsIDIwMjIgYXQgMTI6MjU6MTdQTSAtMDUwMCwgU2hhd24gV2ViYiB3cm90
ZToNCj4+PiBPbiBXZWQsIERlYyAyOCwgMjAyMiBhdCAxMTo0NzoyNUFNIC0w
NTAwLCBEZW1pIE1hcmllIE9iZW5vdXIgd3JvdGU6DQo+Pj4+IE9uIFdlZCwg
RGVjIDI4LCAyMDIyIGF0IDEwOjI0OjU4QU0gLTA1MDAsIFNoYXduIFdlYmIg
d3JvdGU6DQo+Pj4+PiBPbiBUdWUsIERlYyAyNywgMjAyMiBhdCAwNDo0NDo0
OVBNIC0wODAwLCBMeW5kb24gTmVyZW5iZXJnIChWRTdURlgvVkU2QkJNKSB3
cm90ZToNCj4+Pj4+PiBEb21pbmlxdWUgTWFydGluZXQgd3JpdGVzOg0KPj4+
Pj4+DQo+Pj4+Pj4+IEJ1dCwgcmVhbGx5LCBJIGp1c3QgZG9uJ3Qgc2VlIGhv
dyB0aGlzIGNhbiBwcmFjdGljYWxseSBiZSBzYWlkIHRvIGJlIHBhcnNhYmxl
Li4uDQo+Pj4+Pj4NCj4+Pj4+PiBJbiBpdHMgY3VycmVudCBmb3JtIGl0IG5l
dmVyIHdpbGwgYmUuICBUaGUgc29sdXRpb24gaXMgdG8gcGxhY2UNCj4+Pj4+
PiB0aGlzIHZhcmlhYmxlLWxlbmd0aCBmaWVsZCBsYXN0LiAgVGhlbiB5b3Ug
Y2FuICJjdXQgLWQgJyAnIC1mIDUxLSINCj4+Pj4+PiB0byBnZXQgdGhlIGNv
bW1hbmQrYXJncyBwYXJ0IChhc3N1bWluZyBJIGNvdW50ZWQgYWxsIHRob3Nl
IGZpZWxkcw0KPj4+Pj4+IGNvcnJlY3RseSAuLi4pDQo+Pj4+Pj4NCj4+Pj4+
PiBPZiBjb3Vyc2UsIHRoaXMgYnJlYWtzIGJhY2t3YXJkcyBjb21wYXRhYmls
aXR5Lg0KPj4+Pj4NCj4+Pj4+IEl0IHdvdWxkIGFsc28gYnJlYWsgZm9yd2Fy
ZHMgY29tcGF0aWJpbGl0eSBpbiB0aGUgY2FzZSBuZXcgZmllbGRzDQo+Pj4+
PiBuZWVkZWQgdG8gYmUgYWRkZWQuDQo+Pj4+Pg0KPj4+Pj4gVGhlIG9ubHkg
c29sdXRpb24gd291bGQgYmUgYSBsaWJ4by1zdHlsZSBmZWF0dXJlIHdoZXJl
aW4gYQ0KPj4+Pj4gbWFjaGluZS1wYXJzZWFibGUgZm9ybWF0IGlzIGV4cG9z
ZWQgYnkgdmlydHVlIG9mIGEgZmlsZSBleHRlbnNpb24uDQo+Pj4+Pg0KPj4+
Pj4gRXhhbXBsZXM6DQo+Pj4+Pg0KPj4+Pj4gMS4gL3Byb2MvcGlkL3N0YXRz
Lmpzb24NCj4+Pj4+IDIuIC9wcm9jL3BpZC9zdGF0cy54bWwNCj4+Pj4+IDMu
IC9wcm9jL3BpZC9zdGF0cy55YW1sX3Nob3VsZG50X2JlX2FfdGhpbmcNCj4+
Pj4NCj4+Pj4gQSBiaW5hcnkgZm9ybWF0IHdvdWxkIGJlIGV2ZW4gYmV0dGVy
LiAgTm8gcmlzayBvZiBhbWJpZ3VpdHkuDQo+Pj4NCj4+PiBJIHRoaW5rIHRo
ZSBhcmd1bWVudCBJJ20gdHJ5aW5nIHRvIG1ha2UgaXMgdG8gYmUgZmxleGli
bGUgaW4NCj4+PiBpbXBsZW1lbnRhdGlvbiwgYWxsb3dpbmcgZm9yIGZ1dHVy
ZSBuZWVkcyBhbmQgd2FudHMtLXRoYXQgaXMgImZ1dHVyZQ0KPj4+IHByb29m
aW5nIi4NCj4+DQo+PiBMaW51eCBzaG91bGQgbm90IGhhdmUgYW4gWE1MLCBK
U09OLCBvciBZQU1MIHNlcmlhbGl6ZXIuICBMaW51eCBhbHJlYWR5DQo+PiBk
b2VzIHdheSB0b28gbXVjaDsgbGV04oCZcyBub3QgYWRkIG9uZSBtb3JlIHRo
aW5nIHRvIHRoZSBsaXN0Lg0KPiANCj4gU29tZXdoYXQgYWdyZWVkLiBJIHRo
aW5rIGZvcm1hdHMgbGlrZSBKU09OIHByb3ZpZGUgYSBnb29kIGJhbGFuY2UN
Cj4gYmV0d2VlbiBtYWNoaW5lIHBhcnNlYWJsZSBhbmQgaHVtYW4gcmVhZGFi
bGUuDQo+IGENCj4gQXMgSSBkZXNjcmliZWQgZWFybGllciwgdGhvdWdoLCB3
aGVuIGl0IGNvbWVzIHRvIGNvbmNlcHRzIGxpa2UgcHJvY2ZzDQo+IGFuZCBz
eXNmcywgSSBoYXZlIGEgYmlhcyB0b3dhcmRzIGFiYW5kb25pbmcgdGhlbSBp
biBmYXZvciBvZiBzeXNjdGwuDQo+IElmIHN5c2N0bCBub2RlcyB3ZXJlIHRv
IGJlIHVzZWQsIG5vIG5ldyBzZXJpYWxpemF0aW9uIGZvcm1hdHMgd291bGQN
Cj4gbmVlZCB0byBiZSBpbXBsZW1lbnRlZC0tYW5kIGRldmVsb3BlcnMgd291
bGQgYWxzbyB1c2UgYSBzYWZ0ZXIgbWV0aG9kDQo+IG9mIHN5c3RlbSBhbmQg
cHJvY2VzcyBpbnNwZWN0aW9uIGFuZCBtYW5pcHVsYXRpb24uDQo+IA0KDQpK
dXN0IGEgY29tbWVudCBhcyBzb21lb25lIHdobyBpcyByZWFkaW5nIHdpdGhv
dXQgbXVjaCB1bmRlcnN0YW5kaW5nIG9mIHRoZSANCmNvbnRlbnRzIG9mIC9w
cm9kL3BpZC9zdGF0Og0KDQpJZiBvcmdhbml6YXRpb24gb2YgdGhlIGRhdGEg
aW4gdGhlIGZpbGUgaXMgYSBwcm9ibGVtLCBhbmQgdGhlIGZvcm1hdCBzdGFy
dHMgdG8gDQptYXR0ZXIsIG1heWJlIGl0J3MgYSBoaW50IHRoYXQgdGhlcmUg
YXJlIHRvbyBtYW55IGRpZmZlcmVudCBjb250ZW50cywgYW5kIGNvdWxkIA0K
YmUgc3BsaXQgaW50byBkaWZmZXJlbnQgZmlsZXMsIGVhY2ggb25lIHdpdGgg
aXRzIG93biBmb3JtYXR0aW5nIHJ1bGVzLiAgSSdsbCANCnN1Z2dlc3QgdGhh
dCBtYXliZSBhIHNldCBvZiBmaWxlcywgbWF5YmUgY29udGFpbmVkIGluIGEg
Y29tbW9uIGRpcmVjdG9yeSANCnN0YXRzLmQsIGlzIHdoYXQgeW91J3JlIGxv
b2tpbmcgZm9yPw0KDQpCaW5hcnkgZm9ybWF0IGlzIG5vdCBvZiBteSBwcmVm
ZXJlbmNlLCBzaW5jZSBtb3N0IHVzZXItc3BhY2UgdG9vbHMgd29yayB3aXRo
IHRoZSANCnN0YW5kYXJkIGludGVyZmFjZSwgdGhhdCBpcywgdGV4dC4NCg0K
Q2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------GxGiU4j9OA3T2C2mhp0X8dga--

--------------uQsnnfGhGlsKwv1EyHZlFxph
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOsn5EACgkQnowa+77/
2zIp/A/+IqPIZTuf0y61jeMBYgI8X43oyFZ3i47GCDW/8EUv7gE5cNN8U4Xqb4xq
UzzItqIluptCq9hHW2vVLjzx47oJ03tLnxK521nRYECItq3XCl1kS4QuNXqcGDFk
tblwxmQCdO2VT2DDVVNe+hF1VlOZF0VAIVQIRQi0XifdQKNZlnnlkMHyaa0llOKu
Jwiq2ZD3cJGrkr6UlqOCT+DySZXceHOApr7CfXnDax5v3CNpF3Ho+yMZ7xmZbPKs
BSBJ0JtBmF5F67yhGlvwThNqO0NqqQ553ftdx/20LL3zR0ihcwQIKzQor0xiLNIM
W+GUiawt7UjGTDQwP/LWBmXTFTy0RRhy7PWFmAnWwFMvGLQtN4vy5Hswzu5xWT21
pAhy1Pl+ApqI/YngDyiKoRVSt/VGCWIX3WSJG46M7+QGlYCfa0c1IaZUemJv3WEF
EjOwwFrBSh+Alst7RChZQbEJnPAcTEONZnrFFViteSGmcOtPygYZPHc4ES02BKcd
VF/1Iwqlu5G7ZyDegmKiJB6am6yN3UQJk57e37/iWQaHHZXTuqlxW/clxVoIj1R3
OlvInEgS9/KFSXHGJeZGa+Gnwqe4D9clgv4xSnWqVTq6Ltu4MxNAXXEHhYZ6Qoq6
ybg4PWdzpUXnekude4aZd2HAiCsONO5A4exttpbTRUcdqIQC8kg=
=+Hm7
-----END PGP SIGNATURE-----

--------------uQsnnfGhGlsKwv1EyHZlFxph--
