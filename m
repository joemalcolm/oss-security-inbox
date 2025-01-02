Received: (qmail 25978 invoked by uid 550); 5 Jan 2025 04:27:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1910 invoked from network); 2 Jan 2025 12:08:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1735819677; x=1736424477; darn=lists.openwall.com;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pTdwL/KCe5Pn5t5XFHub7/aoY3sfOr8iS3jCq36ZaYs=;
        b=M52k6twt8luhySVbD8MQQYs+805TeERR/EAppSRcdJliPRoAqeYJw60Ix7/hXrLIYO
         AT/VNV2yiCUOj9MD1dut4y63l60I5I1SwB0a7otXTBi6UtZW1yE02esuVsjKonlyeVq+
         oD/0bZUrVkmxcNOAq80JogjahZ8p0Bvy+P1RqXEJ1bVjKKyuFaUDnOXP6P6vFi/y44CK
         +zAUB2LZJXPD+tAZX4/LGod+REfpx6V017m7OOVV3in3WUia0RDSaX1E7Ip3+OB8mb+F
         L7oMkNrA0bzKBmWqQ4ANHiybDb6Lrza+a01y67aFvYtFIZEoJIJ7dt1LJ0PMNiYrVspA
         Ar5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735819677; x=1736424477;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pTdwL/KCe5Pn5t5XFHub7/aoY3sfOr8iS3jCq36ZaYs=;
        b=i6T9fnCmj8EPvZbKZjT2Lx1Xq9ubOM4+2oo5BQlkYJO9rV6yaY5tcKLmqM/FCwZbGI
         +5oa3cZ5XL5gkNuDXiSNaJ+rtekd7ldAge4/BmKW1UWRYSLDarzrHrtT+wg/ZKv0H9gK
         JMXqip44c5WxbWD8s+jp+MIUAZkPu8d4ANnKexKa7wCUESI0cwae8+EyxZOoPO5v+QVc
         BbKZgLhHXrpzxQ+Bdvb7Vj0DCGGkaTeXx6RHmeMl/ooYMKnQPMRpHPKRe/nzjEIdxqtZ
         16OMFVBQHV3bCvFAFwaDPRIcbQGefReCTj/7SRUYsqdo8We0kPb9K0llzSnafgIuhFnS
         jRDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqfFaiZTHkz0fCFnJDqanJNSsLi010XYKRo3hpDKTLyN6wQt9LR/qiJfc6AFrjJhvkdIAD3q+M6Dvor04=@lists.openwall.com
X-Gm-Message-State: AOJu0YySwMZ0gvPbmaeMIoGFWmcpD7OEjFxs360byEtpeT2NKZIU+Fp9
	HiVN7ZHvEMLdwS9UXYukNDd2vcIdwLJm7S2b1RKSQSrxw6F//yP/nER80y/zCRc=
X-Gm-Gg: ASbGncucpjGGYVNFHzRCb+JKzLu1vLNEcief0AM6s8gHobhZHvlkBFSA28brHREdDyt
	igGMvmlsmyfDH0wzq+tckzMSdo/TK3GE8oAKw/may5wfStaOJRyamndtEzVAeW6VrmI3tTix4HW
	KHoZqo0AT2BtlNW4BND7ItUxaq+41e+mm4qHDHfOamZDn2XgpahNe2/S8a3ylzVr/+1geuzAXM9
	KXpKg0msgUHwj5YgQTWHTTVs0Klcfs58YAJjgaNsNawMhu28MMP1QHmj3i2STmJt94wvpnsEu4U
	a8GfO9qKUx1UvhF9oy8TeeGCd/UcRvwg34tPGpKeE6zdcgzIAXpMlaw31sT8riMYndWswCsc054
	vPalfjA==
X-Google-Smtp-Source: AGHT+IHL12MxRnBiagIn4NAHb2yoVccPRle7YHvncCvPEC7pBBtxAGV2hQpGMNzf7ulAq1dVAYiKkQ==
X-Received: by 2002:a50:cc04:0:b0:5d8:a46f:110b with SMTP id 4fb4d7f45d1cf-5d8a46f1123mr17548310a12.17.1735819676532;
        Thu, 02 Jan 2025 04:07:56 -0800 (PST)
Message-ID: <a3031e7d-fe9d-4db8-8ccd-923165c9af72@suse.com>
Date: Thu, 2 Jan 2025 13:07:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Woodhouse <dwmw2@infradead.org>,
 "Xen.org security team" <security@xen.org>, xen-announce@lists.xen.org,
 xen-devel@lists.xen.org, xen-users@lists.xen.org,
 oss-security@lists.openwall.com
Cc: "Xen.org security team" <security-team-members@xen.org>
References: <E1tNWXG-00E268-2p@xenbits.xenproject.org>
 <54c892eded2b4ebdda8ee1085c383178f44414ad.camel@infradead.org>
Content-Language: en-US
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
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
In-Reply-To: <54c892eded2b4ebdda8ee1085c383178f44414ad.camel@infradead.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------d5C5ixIhUlO7wPMZWJ3AvT0M"
Subject: [oss-security] Re: Xen Security Advisory 466 v3 (CVE-2024-53241) - Xen hypercall
 page unsafe against speculative attacks

--------------d5C5ixIhUlO7wPMZWJ3AvT0M
Content-Type: multipart/mixed; boundary="------------3DtLA5VgbWMlh1ZUA0LYmvrT";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: David Woodhouse <dwmw2@infradead.org>,
 "Xen.org security team" <security@xen.org>, xen-announce@lists.xen.org,
 xen-devel@lists.xen.org, xen-users@lists.xen.org,
 oss-security@lists.openwall.com
Cc: "Xen.org security team" <security-team-members@xen.org>
Message-ID: <a3031e7d-fe9d-4db8-8ccd-923165c9af72@suse.com>
Subject: Re: Xen Security Advisory 466 v3 (CVE-2024-53241) - Xen hypercall
 page unsafe against speculative attacks
References: <E1tNWXG-00E268-2p@xenbits.xenproject.org>
 <54c892eded2b4ebdda8ee1085c383178f44414ad.camel@infradead.org>
In-Reply-To: <54c892eded2b4ebdda8ee1085c383178f44414ad.camel@infradead.org>
Autocrypt-Gossip: addr=security@xen.org; keydata=
 xsBNBE+hNqgBCADYua5OFR0/Jeu0rByk+Obk6+SewIeGej1FAcjo+Cvpcr1dfnLBAhmmhbfM
 b++qr6SG6Ek+cUQogYAFvZcEcusbRPy4MIzJkqoPSyOUhCxZoxWNWUfhDdt0TWA3Hs1vYmFO
 e+2jvlL3h7yAsGMYO8jo6ow8ceBEOmf8Q5BLq2OPkNpGcaHEhbSv0VZ3mdHM30ynY6GubIws
 c68LZ5hTORTSjKaj2WVCe4OorBMZte5Im+6MOEUbCjynqPJSU9KNFhIhUuyXp1vn0gZ2N5QS
 pkghpzBJLzeBNEI6ecV3Q0p+/pq8EvEAuUSNLUEbIZ/NSLqyTVMc9HZxnPu59im8wB9rABEB
 AAHNK1hlbi5vcmcgKGluY29taW5nIGVtYWlsKSA8c2VjdXJpdHlAeGVuLm9yZz7CwHgEEwEC
 ACIFAk+hNqgCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHQ6P8qC06lk1y0H/2Pj
 jQyPDZVS4zIVnR4xQOQ1KphPCdSTPlhj+VVrjZZNXWGCUKvJShL84XIONH62fIgQE/6CTWXJ
 tx6i4u1oAtFH4+8HayFjg609lxx9frJ4tJkJitw5TT6VEGAambchIG5QaP9hepgyrVXjQ0X2
 ot0jgpwL6G3sx0L1gewiMALXtGT6oTqLjXius/nv69yRe26wxU1GX80oWWH/5p585xt54C1X
 nhDEVzp0S9UW7VAAVDCWuSefSrihh3jZi4QE1fnGRwO0RfeLh1sXeuMn9uFIz0CmaCbAp5Pe
 UyNb6wgG60h4JLCDyhJntoHfq8pQLEJ8G9nvjDfw8BLvkBKYNvbOwE0ET6E2qAEIALqWNlGF
 d3uIj+DXZ40/i7fsoPb+HaYaG6Y+7+ZWxMxUeQDTLBnTYiAa+EGVutc4v52BXH8RZc9I/NH9
 lBT2/AwaEVSomxLicbixXUGoFC9kMp/VP1xwWJ+gm+ZEnQzY+2AFJGMvqEsGocQA7yLw121J
 UOrorny3CqpHykPUF3fqp4n/GL47VTaKxlsoV8o2JgZZ62NJlkBtnbA4ODzhWr6cA21smWFg
 sfFJ+EkXb1NEeYLs8CWtTn2EiQXlZTQ8OgBPahfvLZ+AJ4sM/Raoi2c3UIQrlCsg9BoojKMk
 Li8XUrywr8HEJYjhBYObCgbmaeIEfmrw5XJqOKlMg40XY+MAEQEAAcLAXwQYAQIACQUCT6E2
 qAIbDAAKCRB0Oj/KgtOpZDhJB/0XtxrlVuRttpjK1PEYK/A/9h47VH9p0UvVYCH+ZS2a+sTg
 sapx0zp4uni8wtytkvGw/EM06D4ZoaWAUcjXILNKGdi62q/z+WAfdEY/WrONxAbr2Dtv/LT0
 0/2nifYU9O1vGYS1Kx/B3D8fU0w+2Sjv+hYjbGDWn619etC8dNEIxczH6V/cVOZf0D2KhoBf
 MCHUoKeuAfaIKDMxOZjb7sajfUW70cxFFWYqH96Py01oxDroOKzy0x62iVdsYFGB3FvcD9tD
 WsxVWwGHA8DKEfKMuNPiuapzdxdrNm5AQilSUlfD65KK9d3kQdoOUPdPWoIQnz8GnHMPDe99
 7SuwxWGb

--------------3DtLA5VgbWMlh1ZUA0LYmvrT
Content-Type: multipart/mixed; boundary="------------0eWtS0PUDjsTPP5cJ7jLipMV"

--------------0eWtS0PUDjsTPP5cJ7jLipMV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjMuMTIuMjQgMTU6MjQsIERhdmlkIFdvb2Rob3VzZSB3cm90ZToNCj4gT24gVHVlLCAyMDI0
LTEyLTE3IGF0IDEyOjE4ICswMDAwLCBYZW4ub3JnIHNlY3VyaXR5IHRlYW0gd3JvdGU6DQo+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFhlbiBTZWN1cml0eSBBZHZpc29yeSBDVkUtMjAyNC01
MzI0MSAvIFhTQS00NjYNCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2ZXJzaW9uIDMNCj4+DQo+PiAgwqDCoMKgwqDCoMKg
wqDCoCBYZW4gaHlwZXJjYWxsIHBhZ2UgdW5zYWZlIGFnYWluc3Qgc3BlY3VsYXRpdmUgYXR0YWNr
cw0KPj4NCj4+IFVQREFURVMgSU4gVkVSU0lPTiAzDQo+PiA9PT09PT09PT09PT09PT09PT09PQ0K
Pj4NCj4+IFVwZGF0ZSBvZiBwYXRjaCA1LCBwdWJsaWMgcmVsZWFzZS4NCj4gDQo+IENhbid0IHdl
IGV2ZW4gdXNlIHRoZSBoeXBlcmNhbGwgcGFnZSBlYXJseSBpbiBib290PyBTdXJlbHkgd2UgaGF2
ZSB0bw0KPiBrbm93IHdoZXRoZXIgd2UncmUgcnVubmluZyBvbiBhbiBJbnRlbCBvciBBTUQgQ1BV
IGJlZm9yZSB3ZSBnZXQgdG8gdGhlDQo+IHBvaW50IHdoZXJlIHdlIGNhbiBlbmFibGUgYW55IG9m
IHRoZSBuZXcgY29udHJvbC1mbG93IGludGVncml0eQ0KPiBzdXBwb3J0PyBEbyB3ZSBuZWVkIHRv
IGp1bXAgdGhyb3VnaCB0aG9zZSBob29wcyBkbyBkbyB0aGF0IGVhcmx5DQo+IGRldGVjdGlvbiBh
bmQgc2V0dXA/DQoNClRoZSBkb3duc2lkZSBvZiB0aGlzIGFwcHJvYWNoIHdvdWxkIGJlIHRvIGhh
dmUgYW5vdGhlciB2YXJpYW50IHRvIGRvDQpoeXBlcmNhbGxzLiBTbyB5b3UnZCBoYXZlIHRvIHJl
cGxhY2UgdGhlIHZhcmlhbnQgYmVpbmcgYWJsZSB0byB1c2UgQU1EDQpvciBJTlRFTCBzcGVjaWZp
YyBpbnN0cnVjdGlvbnMgd2l0aCBhIGZ1bmN0aW9uIGRvaW5nIHRoZSBoeXBlcmNhbGwgdmlhDQp0
aGUgaHlwZXJjYWxsIHBhZ2UuDQoNCkknbSBwbGFubmluZyB0byBzZW5kIHBhdGNoZXMgZm9yIFhl
biBhbmQgdGhlIGtlcm5lbCB0byBhZGQgQ1BVSUQgZmVhdHVyZQ0KYml0cyBpbmRpY2F0aW5nIHdo
aWNoIGluc3RydWN0aW9uIHRvIHVzZS4gVGhpcyB3aWxsIG1ha2UgbGlmZSBtdWNoIGVhc2llci4N
Cg0KPiBFbmFibGluZyB0aGUgaHlwZXJjYWxsIHBhZ2UgaXMgYWxzbyBvbmUgb2YgdGhlIHR3byBw
b2ludHMgd2hlcmUgWGVuDQo+IHdpbGwgJ2xhdGNoJyB0aGF0IHRoZSBndWVzdCBpcyA2NC1iaXQs
IHdoaWNoIGFmZmVjdHMgdGhlIGxheW91dCBvZiB0aGUNCj4gc2hhcmVkX2luZm8sIHZjcHVfaW5m
byBhbmQgcnVuc3RhdGUgc3RydWN0dXJlcy4NCj4gDQo+IFRoZSBvdGhlciBzdWNoIGxhdGNoaW5n
IHBvaW50IGlzIHdoZW4gdGhlIGd1ZXN0IHNldHMNCj4gSFZNX1BBUkFNX0NBTExCQUNLX0lSUSwg
YW5kIEkgKnRoaW5rKiB0aGF0IHNob3VsZCB3b3JrIGluIGFsbA0KPiBpbXBsZW1lbnRhdGlvbnMg
b2YgdGhlIFhlbiBBQkkgKGluY2x1ZGluZyBRRU1VL0tWTSBhbmQgRUMyKS4gQnV0IHdvdWxkDQo+
IHdhbnQgdG8gdGVzdC4NCj4gDQo+IEJ1dCBwZXJoYXBzIGl0IHdvdWxkbid0IGh1cnQgZm9yIG1h
eGltYWwgY29tcGF0aWJpbGl0eSBmb3IgTGludXggdG8gc2V0DQo+IHRoZSBoeXBlcmNhbGwgcGFn
ZSAqYW55d2F5KiwgZXZlbiBpZiBMaW51eCBkb2Vzbid0IHRoZW4gdXNlIGl0IOKAlCBvcg0KPiBv
bmx5IHVzZXMgaXQgZHVyaW5nIGVhcmx5IGJvb3Q/DQoNCkknbSBzZWVpbmcgcG90ZW50aWFsIHBy
b2JsZW1zIHdpdGggdGhhdCBhcHByb2FjaCB3aGVuIHNvbWVvbmUgaXMgdXNpbmcNCmFuIG91dC1v
Zi10cmVlIG1vZHVsZSBkb2luZyBoeXBlcmNhbGxzLg0KDQpXaXRoIGhhdmluZyB0aGUgaHlwZXJj
YWxsIHBhZ2UgcHJlc2VudCBzdWNoIGEgbW9kdWxlIHdvdWxkIGFkZCBhIHdheSB0byBkbw0Kc3Bl
Y3VsYXRpdmUgYXR0YWNrcywgd2hpbGUgZGVsZXRpbmcgdGhlIGh5cGVyY2FsbCBwYWdlIHdvdWxk
IHJlc3VsdCBpbiBhDQpmYWlsdXJlIHRyeWluZyB0byBsb2FkIHN1Y2ggYSBtb2R1bGUuDQoNCg0K
SnVlcmdlbg0K

--------------0eWtS0PUDjsTPP5cJ7jLipMV
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

--------------0eWtS0PUDjsTPP5cJ7jLipMV--

--------------3DtLA5VgbWMlh1ZUA0LYmvrT--

--------------d5C5ixIhUlO7wPMZWJ3AvT0M
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmd2gZsFAwAAAAAACgkQsN6d1ii/Ey9B
3Af/fsSbEMj2KVLFyk4HNbmstc4UiK+Ynscvf/qTeZbNJCG2tJWv26stp7HDD/Croie6W4Uxts+K
Cs84SZd3pJZmjZOuar8/BIcV1ZigCSPVYIORTXNLwjQ/oFIEWbbbArYDiwKAGGX32Z6o5965NP/9
JvSyMj1ATMEFvkxv6vgT6PtV0VKQBPOU6Ponk/RBtTaWgiP5PeKrRMtb7IArVXfZ84s9UtOkPfk9
e4JFjJT+Vk2GRVUp1pnP9LzLik88z7ZWoYgGnmhK8kXLbOuEZcmkseRnmdNWpHW59T2Z61/LqQJU
UzafsAbbu1Jk+eHVmIC1nmT7Rq1Wt0+T+xz6d8TpvA==
=M+/n
-----END PGP SIGNATURE-----

--------------d5C5ixIhUlO7wPMZWJ3AvT0M--
