Received: (qmail 14235 invoked by uid 550); 4 Dec 2025 16:33:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26155 invoked from network); 4 Dec 2025 16:02:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Type:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ZiOJAAjThnbRxTqIS/EXyNAFbqBu7ox9DbuLewSbxu4=; b=m4LxuFEHTCOw4E8JUEA0N8UtiP
	07D8RU5Jpg+GYe0QWWtdpo1121m95TdoX92ngOHC8xJJ4KV95R9sSnVNlXmx+G+d6iCA8NU5CPLtc
	IJ9p5cBH5Z+bMCfcj/wiGGYkbfSZJYXFME4vpI/yiNCJnhaVlO59Lq/CFDaxfDYoJkoVzW45FJ+Bp
	L3g+vyYaRYGsSvibGGeFmYf4AMJFSVgkLJQFfzMagjs5K88Bd5LJ31hBFU+afRIDCYJ4jn5sWswLR
	zA+nJtmU+DW8+n3/t3wNV2qmG3NwmDw/u5zdJUlUNM4c0H0U2BckuUmNZ7xHDKH34DXF5H562HnjB
	3D+ZJ2qQ==;
Date: Thu, 4 Dec 2025 18:01:55 +0200
Message-ID: <20251204180155.GC2659512@igalia.com>
From: Adrian Perez de Castro <aperez@igalia.com>
To: webkit-gtk@lists.webkit.org
Cc: webkit-wpe@lists.webkit.org, security@webkit.org,
 oss-security@lists.openwall.com
In-Reply-To: <20251204162045.GB2659024@igalia.com>
References: <20251204162045.GB2659024@igalia.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Vh/zNc9EPmynkkD/"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Subject: [oss-security] Re: [webkit-gtk] WebKitGTK and WPE WebKit Security Advisory
 WSA-2025-0009

--Vh/zNc9EPmynkkD/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: base64

SGVsbG8gYWxsLAoKSSBoYXZlIGEgc21hbGwgYW1lbmRtZW50IHRvIHRoZSBhZHZpc29yeSwgcGxl
YXNlIHJlYWQgYmVsb3cuCgpPbiBUaHUsIDA0IERlYyAyMDI1IDE2OjIwOjQ1ICswMjAwIEFkcmlh
biBQZXJleiBkZSBDYXN0cm8gPGFwZXJlekBpZ2FsaWEuY29tPiB3cm90ZToKPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiBXZWJLaXRHVEsgYW5kIFdQRSBXZWJLaXQgU2VjdXJpdHkgQWR2aXNvcnkgICAgICAg
ICAgICAgICAgIFdTQS0yMDI1LTAwMDkKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAKPiBEYXRlIHJlcG9y
dGVkICAgICAgICAgICA6IERlY2VtYmVyIDA0LCAyMDI1Cj4gQWR2aXNvcnkgSUQgICAgICAgICAg
ICAgOiBXU0EtMjAyNS0wMDA5Cj4gV2ViS2l0R1RLIEFkdmlzb3J5IFVSTCAgOiBodHRwczovL3dl
YmtpdGd0ay5vcmcvc2VjdXJpdHkvV1NBLTIwMjUtMDAwOS5odG1sCj4gV1BFIFdlYktpdCBBZHZp
c29yeSBVUkwgOiBodHRwczovL3dwZXdlYmtpdC5vcmcvc2VjdXJpdHkvV1NBLTIwMjUtMDAwOS5o
dG1sCj4gQ1ZFIGlkZW50aWZpZXJzICAgICAgICAgOiBDVkUtMjAyNS0xMzUwMiwgQ1ZFLTIwMjUt
MTM5NDcsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICBDVkUtMjAyNS00MzQyMSwgQ1ZFLTIw
MjUtNDM0NTgsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICBDVkUtMjAyNS02NjI4Ny4KPiAK
PiBTZXZlcmFsIHZ1bG5lcmFiaWxpdGllcyB3ZXJlIGRpc2NvdmVyZWQgaW4gV2ViS2l0R1RLIGFu
ZCBXUEUgV2ViS2l0Lgo+IAo+IENWRS0yMDI1LTEzNTAyCj4gICAgIFZlcnNpb25zIGFmZmVjdGVk
OiBXZWJLaXRHVEsgYW5kIFdQRSBXZWJLaXQgYmVmb3JlIDIuNTAuMy4KPiAgICAgQ3JlZGl0IHRv
IFN0YW5pc2xhdiBGb3J0LCBBaXNsZSBSZXNlYXJjaC4KPiAgICAgSW1wYWN0OiBQcm9jZXNzaW5n
IG1hbGljaW91c2x5IGNyYWZ0ZWQgd2ViIGNvbnRlbnQgbWF5IGxlYWQgdG8gYW4KPiAgICAgdW5l
eHBlY3RlZCBwcm9jZXNzIGNyYXNoLiBEZXNjcmlwdGlvbjogQSBidWZmZXIgb3ZlcmZsb3cgd2Fz
Cj4gICAgIGFkZHJlc3NlZCB3aXRoIGltcHJvdmVkIGJvdW5kcyBjaGVja2luZy4KPiAgICAgV2Vi
S2l0IEJ1Z3ppbGxhOiAzMDIyMTgKClRoaXMgaXNzdWUgd2FzIGFjdHVhbGx5IGZpeGVkIGFscmVh
ZHkgaW4gdmVyc2lvbiAyLjUwLjIgb2YgYm90aApXUEUgV2ViS2l0IGFuZCBXZWJLaXRHVEsuIFRo
ZSBhZHZpc29yaWVzIGluIHRoZSByZXNwZWN0aXZlIHByb2plY3Qncwp3ZWJzaXRlcyBoYXZlIGJl
ZW4gdXBkYXRlZCB0byByZWZsZWN0IHRoaXMgYXMgd2VsbC4KCkNoZWVycywK4oCUQWRyacOhbgo=

--Vh/zNc9EPmynkkD/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABEIAB0WIQRao7wzT9fjNp58d7KRxVnb5MkSOwUCaTGwcwAKCRCRxVnb5MkS
Ow4RAJ9ZZk1N0/xb9yup72W1ALK5goj5XwCggOgajmYyII+KNK3VmEPahguAil0=
=Aj+V
-----END PGP SIGNATURE-----

--Vh/zNc9EPmynkkD/--
