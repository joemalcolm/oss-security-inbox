Received: (qmail 32002 invoked by uid 550); 28 Apr 2022 21:36:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11556 invoked from network); 28 Apr 2022 20:40:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tao.at; s=mail;
	t=1651178424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=on0gC4mbtUlheug//E1iHdH3uQYEfBxBMpBnLGEJ2M4=;
	b=XOBeAI3WBc721pr5ofeKMERbnr3C+GER0IezEU9KpuQuq7jcu75gl7ajKShj5Op+w91TRu
	dwTNp7HcKT/SJhexfvEaJi3kaEt1iqty2GkxqOmyOLDE/9LLSF/ARFtySBSpTOEstvJ1Vj
	RrJEKEHEUg3FlEbUGu39qYHxS/62Oo4JG7G2YYC7zPyffQZbs/fJ8cobCL/YkkpXc7v/Ux
	G+koU2mopJ2IB3XOAw/Lb0Gt7NayTuNdbkJ2I7PlWunORGKowSA709e1jkxWEJzYiqJRAV
	VzshRO0RKBjerjUug4NH90eUmK2Ib5hs5bNptAkE8Iq2WYQqODM/euTNVdmVXg==
Message-ID: <142a2b8b-f5f5-526e-741f-35337a5a81f2@tao.at>
Date: Thu, 28 Apr 2022 22:40:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
 <20220428201003.GA1260523@millbarge>
From: Sven Schwedas <sven.schwedas@tao.at>
Organization: TAO Digital
In-Reply-To: <20220428201003.GA1260523@millbarge>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hb3gIlLlFPBEDEFBj50Q6j7E"
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

--------------hb3gIlLlFPBEDEFBj50Q6j7E
Content-Type: multipart/mixed; boundary="------------18GH457g0qyQFlj0zP2wJFD5";
 protected-headers="v1"
From: Sven Schwedas <sven.schwedas@tao.at>
To: oss-security@lists.openwall.com
Message-ID: <142a2b8b-f5f5-526e-741f-35337a5a81f2@tao.at>
Subject: Re: [oss-security] CVE-2022-21449 and version reporting
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
 <20220428201003.GA1260523@millbarge>
In-Reply-To: <20220428201003.GA1260523@millbarge>

--------------18GH457g0qyQFlj0zP2wJFD5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQpPbiAyOC4wNC4yMiAyMjoxMCwgU2V0aCBBcm5vbGQgd3JvdGU6DQo+IE9u
IFRodSwgQXByIDI4LCAyMDIyIGF0IDAyOjEyOjA0UE0gKzAwMDAsIFNlYW1h
biwgQ2hhZCB3cm90ZToNCj4+IEluIHdoYXQgdW5pdmVyc2UgZXhhY3RseSBh
cmUgdmVyc2lvbnMgb21pdHRlZCBmcm9tIHZ1bG5lcmFiaWxpdHkNCj4+IHJl
cG9ydGluZyBiZWNhdXNlIGEgdmVuZG9yIOKAnG5vIGxvbmdlciBzdXBwb3J0
cyB0aGF0IHZlcnNpb27igJ3igKYgdGhpcw0KPj4gbm9uLXN1cHBvcnRlZCB2
ZXJzaW9uIGlzIHN0aWxsIHZ1bG5lcmFibGU/DQo+IA0KPiBBIGxhcmdlIHBh
cnQgb2Ygc29mdHdhcmUgbWFpbnRlbmFuY2UgaXMgbWFuYWdpbmcgdGVjaG5p
Y2FsIGRlYnQgLS0NCj4gYW5kIGJlaW5nIGFibGUgdG8gd2FsayBhd2F5IGZy
b20gbm8tbG9uZ2VyLXN1cHBvcnRlZCBwcm9kdWN0cyBpcyBhbg0KPiBpbXBv
cnRhbnQgcGFydCBvZiB0aGF0Lg0KPiANCj4gV291bGQgeW91IGV4cGVjdCBN
aWNyb3NvZnQgdG8gZXZhbHVhdGUgV2luZG93cyAzLjExLCBXaW5kb3dzIDk1
LA0KPiBXaW5kb3dzIDk4LCBXaW5kb3dzIE1FLCBXaW5kb3dzIE5UIDMuNTEs
IFdpbmRvd3MgTlQgNC4wLiBXaW5kb3dzIFhQLA0KPiBldGMgZm9yIGV2ZXJ5
IHNpbmdsZSB2dWxuZXJhYmlsaXR5IGRpc2NvdmVyZWQgaW4gbmV3ZXN0IHBy
b2R1Y3RzPw0KDQpZb3UgYW5kIEplcmVteSBhcmd1aW5nIGluIGJhZCBmYWl0
aCBoZXJlLCBPUCBkaWRuJ3QgYXNrIGFib3V0IGFueXRoaW5nIA0KbGlrZSB0
aGF0Lg0KDQpUaGUgcHJvYmxlbSBhdCBoYW5kIGlzLCBzb21lb25lICphbHJl
YWR5IGRpZCBhbGwgdGhhdCB3b3JrKiwgYW5kIE9yYWNsZSANCmlzICphY3Rp
dmVseSBpbnRlcnZlbmluZyogdG8gaGF2ZSBpdCBkcm9wcGVkIGZyb20gQ1ZF
IHJlcG9ydHMuDQoNClNvIHRoZSBxdWVzdGlvbiBpczogV2h5IGlzIHZ1bG5l
cmFiaWxpdHkgaW5mb3JtYXRpb24gdGhhdCBhbHJlYWR5IGV4aXN0cyANCmJl
aW5nIGNlbnNvcmVkPw0K

--------------18GH457g0qyQFlj0zP2wJFD5--

--------------hb3gIlLlFPBEDEFBj50Q6j7E
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEWzy3IsODZ+tfmjeBYUonfpuIUnIFAmJq+7cFAwAAAAAACgkQYUonfpuIUnKF
gAwAwgjH25ehkigeIzKn6C3NbjasikUSHLFJ0az4uCEdbQecTlUacsiTpI/1Gte1+kS8eKfpeXXr
CW9bvvoAw9enhBdFR1c8Q+Qba+gGblm1bXuKQg/WYuLwroMGXQ6yxV2XwTR2HedyI2gDUzmO0tRQ
u9Sh/RAr/1Fr/NCJdVA+y10Q94wjtA02BXHQsbu/RYe8UKf5hIuqbSKHo7Eho82qi7wzdWNZ+GU8
6VA3I3apMGWfS7Kd3yaNu5DI42nW8XT65m/oiuSghVsYR5LBdqHzRi2rFpi4nLRIJ98LgH6LPwJi
n+haXCfsd0hHqBOCssYIskTTHomP8IBCySjxWzJmKsfyfi73wcxhWSlPPYMjBYnBx/Zg0JxWURes
JOtlhjnBPXCMK0A/+v0Wp+tqfAsZ1X7yjrlXuvcI5dNxhcX7whDmIfc0O5knbJyGXyX4pzy2nE5v
S1omI8gJlEBkdEuHXSNZa4CcCmJu9ZeP1DjbZFTcNvAhOZvZigxLrnwqc1uc
=G5vH
-----END PGP SIGNATURE-----

--------------hb3gIlLlFPBEDEFBj50Q6j7E--
