Received: (qmail 9310 invoked by uid 550); 8 Dec 2022 16:19:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5322 invoked from network); 8 Dec 2022 16:12:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1670515953; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3D56ixHg4GEvROv0g+h9EpASNrVkm5n82P5FiEPpmwA=;
	b=XgNzeg1x/da/TA6tHQZzVItq+Q5Zb/6H0T/+iaEhWFYR8jZzifjloG3dcVsuKWMJWUwec4
	kCKeR4nnzAQg/GLyBGoca52lrB653EWvsXb4YzHeixg9tKN8EY9pR4mvANFH+YYfE35x0/
	t2SGmvUXS17H4HTroHQBfSeREc6rAQw=
Message-ID: <e22fcdce-f029-de46-81a6-60f5ffc9c9a2@suse.com>
Date: Thu, 8 Dec 2022 17:12:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Pratyush Yadav <ptyadav@amazon.de>,
 "Xen.org security team" <security@xen.org>
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com,
 "Xen.org security team" <security-team-members@xen.org>
References: <E1p2ZhW-0005Xe-FG@xenbits.xenproject.org>
 <mafs0lenhlwcv.fsf@dev-dsk-ptyadav-1c-37607b33.eu-west-1.amazon.com>
From: Juergen Gross <jgross@suse.com>
In-Reply-To: <mafs0lenhlwcv.fsf@dev-dsk-ptyadav-1c-37607b33.eu-west-1.amazon.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Epe70gCUpcHe4aA3CqDhOehN"
Subject: [oss-security] Re: Xen Security Advisory 424 v1 (CVE-2022-42328,CVE-2022-42329) -
 Guests can trigger deadlock in Linux netback driver

--------------Epe70gCUpcHe4aA3CqDhOehN
Content-Type: multipart/mixed; boundary="------------BBFSoseI0wFH390kzl0Q9A3S";
 protected-headers="v1"
From: Juergen Gross <jgross@suse.com>
To: Pratyush Yadav <ptyadav@amazon.de>,
 "Xen.org security team" <security@xen.org>
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com,
 "Xen.org security team" <security-team-members@xen.org>
Message-ID: <e22fcdce-f029-de46-81a6-60f5ffc9c9a2@suse.com>
Subject: Re: Xen Security Advisory 424 v1 (CVE-2022-42328,CVE-2022-42329) -
 Guests can trigger deadlock in Linux netback driver
References: <E1p2ZhW-0005Xe-FG@xenbits.xenproject.org>
 <mafs0lenhlwcv.fsf@dev-dsk-ptyadav-1c-37607b33.eu-west-1.amazon.com>
In-Reply-To: <mafs0lenhlwcv.fsf@dev-dsk-ptyadav-1c-37607b33.eu-west-1.amazon.com>

--------------BBFSoseI0wFH390kzl0Q9A3S
Content-Type: multipart/mixed; boundary="------------FOIUDD6mMxRMmhHZoX2ZnxJ0"

--------------FOIUDD6mMxRMmhHZoX2ZnxJ0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMDguMTIuMjIgMTY6NTksIFByYXR5dXNoIFlhZGF2IHdyb3RlOg0KPiAN
Cj4gSGksDQo+IA0KPiBJIG5vdGljZWQgb25lIGludGVyZXN0aW5nIHRoaW5n
IGFib3V0IHRoaXMgcGF0Y2ggYnV0IEknbSBub3QgZmFtaWxpYXINCj4gZW5v
dWdoIHdpdGggdGhlIGRyaXZlciB0byBzYXkgZm9yIHN1cmUgd2hhdCB0aGUg
cmlnaHQgdGhpbmcgaXMuDQo+IA0KPiBPbiBUdWUsIERlYyAwNiAyMDIyLCBY
ZW4ub3JnIHNlY3VyaXR5IHRlYW0gd3JvdGU6DQo+IA0KPiBbLi4uXQ0KPj4N
Cj4+ICBGcm9tIGNmZGY4ZmQ4MTg0NTczNGI2MTUyYjQ2MTc3NDZjMTEyN2Vj
NTIyMjggTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxDQo+PiBGcm9tOiBKdWVy
Z2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+DQo+PiBEYXRlOiBUdWUsIDYg
RGVjIDIwMjIgMDg6NTQ6MjQgKzAxMDANCj4+IFN1YmplY3Q6IFtQQVRDSF0g
eGVuL25ldGJhY2s6IGRvbid0IGNhbGwga2ZyZWVfc2tiKCkgd2l0aCBpbnRl
cnJ1cHRzIGRpc2FibGVkDQo+Pg0KPj4gSXQgaXMgbm90IGFsbG93ZWQgdG8g
Y2FsbCBrZnJlZV9za2IoKSBmcm9tIGhhcmR3YXJlIGludGVycnVwdA0KPj4g
Y29udGV4dCBvciB3aXRoIGludGVycnVwdHMgYmVpbmcgZGlzYWJsZWQuIFNv
IHJlbW92ZSBrZnJlZV9za2IoKQ0KPj4gZnJvbSB0aGUgc3Bpbl9sb2NrX2ly
cXNhdmUoKSBzZWN0aW9uIGFuZCB1c2UgdGhlIGFscmVhZHkgZXhpc3RpbmcN
Cj4+ICJkcm9wIiBsYWJlbCBpbiB4ZW52aWZfc3RhcnRfeG1pdCgpIGZvciBk
cm9wcGluZyB0aGUgU0tCLiBBdCB0aGUNCj4+IHNhbWUgdGltZSByZXBsYWNl
IHRoZSBkZXZfa2ZyZWVfc2tiKCkgY2FsbCB0aGVyZSB3aXRoIGEgY2FsbCBv
Zg0KPj4gZGV2X2tmcmVlX3NrYl9hbnkoKSwgYXMgeGVudmlmX3N0YXJ0X3ht
aXQoKSBjYW4gYmUgY2FsbGVkIHdpdGgNCj4+IGRpc2FibGVkIGludGVycnVw
dHMuDQo+Pg0KPj4gVGhpcyBpcyBYU0EtNDI0IC8gQ1ZFLTIwMjItNDIzMjgg
LyBDVkUtMjAyMi00MjMyOS4NCj4+DQo+PiBGaXhlczogYmU4MTk5MmY5MDg2
ICgieGVuL25ldGJhY2s6IGRvbid0IHF1ZXVlIHVubGltaXRlZCBudW1iZXIg
b2YgcGFja2FnZXMiKQ0KPj4gUmVwb3J0ZWQtYnk6IFlhbmcgWWluZ2xpYW5n
IDx5YW5neWluZ2xpYW5nQGh1YXdlaS5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5
OiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+DQo+PiBSZXZpZXdl
ZC1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPg0KPj4gLS0t
DQo+PiAgIGRyaXZlcnMvbmV0L3hlbi1uZXRiYWNrL2NvbW1vbi5oICAgIHwg
MiArLQ0KPj4gICBkcml2ZXJzL25ldC94ZW4tbmV0YmFjay9pbnRlcmZhY2Uu
YyB8IDYgKysrKy0tDQo+PiAgIGRyaXZlcnMvbmV0L3hlbi1uZXRiYWNrL3J4
LmMgICAgICAgIHwgOCArKysrKy0tLQ0KPj4gICAzIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3hlbi1uZXRiYWNrL2NvbW1vbi5oIGIv
ZHJpdmVycy9uZXQveGVuLW5ldGJhY2svY29tbW9uLmgNCj4+IGluZGV4IDE1
NDVjYmVlNzdhNC4uM2RiZmM4YTY5MjRlIDEwMDY0NA0KPj4gLS0tIGEvZHJp
dmVycy9uZXQveGVuLW5ldGJhY2svY29tbW9uLmgNCj4+ICsrKyBiL2RyaXZl
cnMvbmV0L3hlbi1uZXRiYWNrL2NvbW1vbi5oDQo+PiBAQCAtMzg2LDcgKzM4
Niw3IEBAIGludCB4ZW52aWZfZGVhbGxvY19rdGhyZWFkKHZvaWQgKmRhdGEp
Ow0KPj4gICBpcnFyZXR1cm5fdCB4ZW52aWZfY3RybF9pcnFfZm4oaW50IGly
cSwgdm9pZCAqZGF0YSk7DQo+Pg0KPj4gICBib29sIHhlbnZpZl9oYXZlX3J4
X3dvcmsoc3RydWN0IHhlbnZpZl9xdWV1ZSAqcXVldWUsIGJvb2wgdGVzdF9r
dGhyZWFkKTsNCj4+IC12b2lkIHhlbnZpZl9yeF9xdWV1ZV90YWlsKHN0cnVj
dCB4ZW52aWZfcXVldWUgKnF1ZXVlLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKTsN
Cj4+ICtib29sIHhlbnZpZl9yeF9xdWV1ZV90YWlsKHN0cnVjdCB4ZW52aWZf
cXVldWUgKnF1ZXVlLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKTsNCj4+DQo+PiAg
IHZvaWQgeGVudmlmX2NhcnJpZXJfb24oc3RydWN0IHhlbnZpZiAqdmlmKTsN
Cj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQveGVuLW5ldGJhY2sv
aW50ZXJmYWNlLmMgYi9kcml2ZXJzL25ldC94ZW4tbmV0YmFjay9pbnRlcmZh
Y2UuYw0KPj4gaW5kZXggNjUwZmExODAyMjBmLi5mM2YyYzA3NDIzYTYgMTAw
NjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC94ZW4tbmV0YmFjay9pbnRlcmZh
Y2UuYw0KPj4gKysrIGIvZHJpdmVycy9uZXQveGVuLW5ldGJhY2svaW50ZXJm
YWNlLmMNCj4+IEBAIC0yNTQsMTQgKzI1NCwxNiBAQCB4ZW52aWZfc3RhcnRf
eG1pdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgbmV0X2RldmljZSAq
ZGV2KQ0KPj4gICAJaWYgKHZpZi0+aGFzaC5hbGcgPT0gWEVOX05FVElGX0NU
UkxfSEFTSF9BTEdPUklUSE1fTk9ORSkNCj4+ICAgCQlza2JfY2xlYXJfaGFz
aChza2IpOw0KPj4NCj4+IC0JeGVudmlmX3J4X3F1ZXVlX3RhaWwocXVldWUs
IHNrYik7DQo+PiArCWlmICgheGVudmlmX3J4X3F1ZXVlX3RhaWwocXVldWUs
IHNrYikpDQo+PiArCQlnb3RvIGRyb3A7DQo+PiArDQo+PiAgIAl4ZW52aWZf
a2lja190aHJlYWQocXVldWUpOw0KPj4NCj4+ICAgCXJldHVybiBORVRERVZf
VFhfT0s7DQo+Pg0KPj4gICAgZHJvcDoNCj4+ICAgCXZpZi0+ZGV2LT5zdGF0
cy50eF9kcm9wcGVkKys7DQo+IA0KPiBOb3cgdHhfZHJvcHBlZCBpcyBpbmNy
ZW1lbnRlZCBvbiBwYWNrZXQgZHJvcC4uLg0KPiANCj4+IC0JZGV2X2tmcmVl
X3NrYihza2IpOw0KPj4gKwlkZXZfa2ZyZWVfc2tiX2FueShza2IpOw0KPj4g
ICAJcmV0dXJuIE5FVERFVl9UWF9PSzsNCj4+ICAgfQ0KPj4NCj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC94ZW4tbmV0YmFjay9yeC5jIGIvZHJpdmVy
cy9uZXQveGVuLW5ldGJhY2svcnguYw0KPj4gaW5kZXggOTMyNzYyMTc3MTEw
Li4wYmE3NTRlYmM1YmEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC94
ZW4tbmV0YmFjay9yeC5jDQo+PiArKysgYi9kcml2ZXJzL25ldC94ZW4tbmV0
YmFjay9yeC5jDQo+PiBAQCAtODIsOSArODIsMTAgQEAgc3RhdGljIGJvb2wg
eGVudmlmX3J4X3Jpbmdfc2xvdHNfYXZhaWxhYmxlKHN0cnVjdCB4ZW52aWZf
cXVldWUgKnF1ZXVlKQ0KPj4gICAJcmV0dXJuIGZhbHNlOw0KPj4gICB9DQo+
Pg0KPj4gLXZvaWQgeGVudmlmX3J4X3F1ZXVlX3RhaWwoc3RydWN0IHhlbnZp
Zl9xdWV1ZSAqcXVldWUsIHN0cnVjdCBza19idWZmICpza2IpDQo+PiArYm9v
bCB4ZW52aWZfcnhfcXVldWVfdGFpbChzdHJ1Y3QgeGVudmlmX3F1ZXVlICpx
dWV1ZSwgc3RydWN0IHNrX2J1ZmYgKnNrYikNCj4+ICAgew0KPj4gICAJdW5z
aWduZWQgbG9uZyBmbGFnczsNCj4+ICsJYm9vbCByZXQgPSB0cnVlOw0KPj4N
Cj4+ICAgCXNwaW5fbG9ja19pcnFzYXZlKCZxdWV1ZS0+cnhfcXVldWUubG9j
aywgZmxhZ3MpOw0KPj4NCj4+IEBAIC05Miw4ICs5Myw3IEBAIHZvaWQgeGVu
dmlmX3J4X3F1ZXVlX3RhaWwoc3RydWN0IHhlbnZpZl9xdWV1ZSAqcXVldWUs
IHN0cnVjdCBza19idWZmICpza2IpDQo+PiAgIAkJc3RydWN0IG5ldF9kZXZp
Y2UgKmRldiA9IHF1ZXVlLT52aWYtPmRldjsNCj4+DQo+PiAgIAkJbmV0aWZf
dHhfc3RvcF9xdWV1ZShuZXRkZXZfZ2V0X3R4X3F1ZXVlKGRldiwgcXVldWUt
PmlkKSk7DQo+PiAtCQlrZnJlZV9za2Ioc2tiKTsNCj4+IC0JCXF1ZXVlLT52
aWYtPmRldi0+c3RhdHMucnhfZHJvcHBlZCsrOw0KPiANCj4gLi4uIGJ1dCBl
YXJsaWVyIHJ4X2Ryb3BwZWQgd2FzIGluY3JlbWVudGVkLg0KPiANCj4gV2hp
Y2ggb25lIGlzIGFjdHVhbGx5IGNvcnJlY3Q/IFRoaXMgbGluZSB3YXMgYWRk
ZWQgYnkgYmU4MTk5MmY5MDg2Yg0KPiAoInhlbi9uZXRiYWNrOiBkb24ndCBx
dWV1ZSB1bmxpbWl0ZWQgbnVtYmVyIG9mIHBhY2thZ2VzIiksIHdoaWNoIHdh
cyB0aGUNCj4gZml4IGZvciBYU0EtMzkyLiBJIHRoaW5rIGluY3JlbWVudGlu
ZyB0eF9kcm9wcGVkIGlzIHRoZSByaWdodCB0aGluZyB0bw0KPiBkbywgYXMg
d2FzIGRvbmUgYmVmb3JlIFhTQS0zOTIgYnV0IGl0IHdvdWxkIGJlIG5pY2Ug
aWYgc29tZW9uZSBlbHNlDQo+IHRha2VzIGEgbG9vayBhdCB0aGlzIGFzIHdl
bGwuDQoNClllcywgSSB0aGluayB0aGUgWFNBLTM5MiBwYXRjaCB3YXMgd3Jv
bmcgaW4gdGhpcyByZWdhcmQuDQoNCg0KSnVlcmdlbg0K

--------------FOIUDD6mMxRMmhHZoX2ZnxJ0
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
jR/i1DG86lem3iBDXzXsZDn8R38=3D=0A=
=3D2wuH=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------FOIUDD6mMxRMmhHZoX2ZnxJ0--

--------------BBFSoseI0wFH390kzl0Q9A3S--

--------------Epe70gCUpcHe4aA3CqDhOehN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmOSDPAFAwAAAAAACgkQsN6d1ii/Ey8i
lAf+JGrVjdHrOS8tbLhxv5V2MZGPw9Q2D8Jwnvh/nURZ87DAwKjuYM4RQ3w/skkWkaqLC+8TR193
4r73qKq/ROxwwaxwmN+gjVSL/OZlP7NKYqiWdLegPMqH3l2GQBo9GiInC/fDT7wxvDCtTwYgSiXx
XyIo3pOHYE1WSfi5r8q3/aNE/mAzpbVrZGPBMz76yqmsrDzGcv0LlX13Ax4g2DBHKCd8SMsvXbH7
4OpRZ9BWmc1WS/ilWqG4jB38iFYD9Tkqra60piHbG7WY5slRCSe/+yCnQ8kog8OVNSB+zBGYYH6L
3pHcKh9bD6wqvVBMDk7M1gddgaHHibHKFgr6YxNhzQ==
=2PYd
-----END PGP SIGNATURE-----

--------------Epe70gCUpcHe4aA3CqDhOehN--
