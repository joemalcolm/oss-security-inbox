Received: (qmail 13521 invoked by uid 550); 21 May 2024 14:00:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7476 invoked from network); 21 May 2024 13:56:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Type:MIME-Version:References:Subject:Cc:To:From:
	Message-ID:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cX1lt0Mrr49SC4lhODYL1+E2pzX58bw804mDhSawj7o=; b=JWSIGL/XSU11jT4ZI1zM8T0eKC
	XGfmIPSXb8YtPDN/f8OKX3QIAHhUuLu1lkUKEVW81pzhM5R7c+lqtNwhXCFWeQAe4TVyOpteejsmW
	s3i1kwQ49Zh2v/q1KeJR/QUNLAXhG+gpPn4toCAJ/xeHj0IK/yShEZ7LqH2fG+KI0jbdZx+1AoRlF
	YhFgkOVh+gLnY/FCNSG1atjrVURl8McY1dRoDbwPp3olgDIh7r6YRAVmyaDaiwnTqiLkhqunfAtuE
	cdridf+yh5/4p4EL4fNFuyWYLnzhju4NA689cu9aC3v9NF4ovfSS602cTQdCBi7M2XL7JqhBz8Eg3
	pwRWzhLw==;
Date: Tue, 21 May 2024 16:56:12 +0300
Message-ID: <20240521165612.GD613527@igalia.com>
From: Adrian Perez de Castro <aperez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, oss-security@lists.openwall.com
References:
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Fjc+e9so8vfBbiBq"; micalg="pgp-ripemd160"; protocol="application/pgp-signature"
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2024-0003

--Fjc+e9so8vfBbiBq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: base64

LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCldlYktpdEdUSyBhbmQgV1BF
IFdlYktpdCBTZWN1cml0eSBBZHZpc29yeSAgICAgICAgICAgICAgICAgV1NB
LTIwMjQtMDAwMwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCkRhdGUg
cmVwb3J0ZWQgICAgICAgICAgIDogTWF5IDIxLCAyMDI0CkFkdmlzb3J5IElE
ICAgICAgICAgICAgIDogV1NBLTIwMjQtMDAwMwpXZWJLaXRHVEsgQWR2aXNv
cnkgVVJMICA6IGh0dHBzOi8vd2Via2l0Z3RrLm9yZy9zZWN1cml0eS9XU0Et
MjAyNC0wMDAzLmh0bWwKV1BFIFdlYktpdCBBZHZpc29yeSBVUkwgOiBodHRw
czovL3dwZXdlYmtpdC5vcmcvc2VjdXJpdHkvV1NBLTIwMjQtMDAwMy5odG1s
CkNWRSBpZGVudGlmaWVycyAgICAgICAgIDogQ1ZFLTIwMjQtMjc4MzQuCgpT
ZXZlcmFsIHZ1bG5lcmFiaWxpdGllcyB3ZXJlIGRpc2NvdmVyZWQgaW4gV2Vi
S2l0R1RLIGFuZCBXUEUgV2ViS2l0LgoKQ1ZFLTIwMjQtMjc4MzQKICAgIFZl
cnNpb25zIGFmZmVjdGVkOiBXZWJLaXRHVEsgYW5kIFdQRSBXZWJLaXQgYmVm
b3JlIDIuNDQuMi4KICAgIE1hbmZyZWQgUGF1bCB3b3JraW5nIHdpdGggVHJl
bmQgTWljcm8ncyBaZXJvIERheSBJbml0aWF0aXZlLgogICAgSW1wYWN0OiBB
biBhdHRhY2tlciB3aXRoIGFyYml0cmFyeSByZWFkIGFuZCB3cml0ZSBjYXBh
YmlsaXR5IG1heSBiZQogICAgYWJsZSB0byBieXBhc3MgUG9pbnRlciBBdXRo
ZW50aWNhdGlvbi4gRGVzY3JpcHRpb246IFRoZSBpc3N1ZSB3YXMKICAgIGFk
ZHJlc3NlZCB3aXRoIGltcHJvdmVkIGNoZWNrcy4KICAgIFdlYktpdCBCdWd6
aWxsYTogMjcyNzUwCgpXZSByZWNvbW1lbmQgdXBkYXRpbmcgdG8gdGhlIGxh
dGVzdCBzdGFibGUgdmVyc2lvbnMgb2YgV2ViS2l0R1RLIGFuZCBXUEUKV2Vi
S2l0LiBJdCBpcyB0aGUgYmVzdCB3YXkgdG8gZW5zdXJlIHRoYXQgeW91IGFy
ZSBydW5uaW5nIHNhZmUgdmVyc2lvbnMKb2YgV2ViS2l0LiBQbGVhc2UgY2hl
Y2sgb3VyIHdlYnNpdGVzIGZvciBpbmZvcm1hdGlvbiBhYm91dCB0aGUgbGF0
ZXN0CnN0YWJsZSByZWxlYXNlcy4KCkZ1cnRoZXIgaW5mb3JtYXRpb24gYWJv
dXQgV2ViS2l0R1RLIGFuZCBXUEUgV2ViS2l0IHNlY3VyaXR5IGFkdmlzb3Jp
ZXMKY2FuIGJlIGZvdW5kIGF0OiBodHRwczovL3dlYmtpdGd0ay5vcmcvc2Vj
dXJpdHkuaHRtbCBvcgpodHRwczovL3dwZXdlYmtpdC5vcmcvc2VjdXJpdHku
CgpUaGUgV2ViS2l0R1RLIGFuZCBXUEUgV2ViS2l0IHRlYW0sCg==

--Fjc+e9so8vfBbiBq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABEDAB0WIQRao7wzT9fjNp58d7KRxVnb5MkSOwUCZkyn/AAKCRCRxVnb5MkS
OwAfAJ4mTGng8T1r74qZwPjxevL+HPwCdwCfZSusqfqYNky+n3lMm3NWNkEF2+4=
=+ORo
-----END PGP SIGNATURE-----

--Fjc+e9so8vfBbiBq--
