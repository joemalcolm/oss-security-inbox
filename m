Received: (qmail 11631 invoked by uid 550); 13 Oct 2025 22:46:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9350 invoked from network); 13 Oct 2025 19:45:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Type:MIME-Version:References:Subject:Cc:To:From:
	Message-ID:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qIlLW7Gca8JisnDHeWvPPFs7j21Au0wrJe9/UP8KxuI=; b=KKiiJ3F3HgppsF57ktWO0pXCGA
	RMst+XuAK4zq1xR2jDl+ttEjHUO1kengR5e+bCQ9jW5JFDrOZTIoxdqw6+ZbGm1eA96ttJlWjVoGW
	Pvk6FTuLfm+oRtb5qah7W+JObf3lLKxCyLir762NZGqAWwn5z1KSsYyPIfkNY6vx0X+fT4e7iWQH5
	9YmJU52NYqpAzzUWarSKjo+lk36OasGxzG1h9jdbnGy0s3Zjc6wmv1G4kNOVZkzUck2nooqKB1pve
	/7pg7vXiCPIhg09dULx9kaafEdE7ZE8RVfDB9ZWrAMVi16UCxfGj26uLVY3MmiLr6wsVYYqaLB681
	E4984hsw==;
Date: Mon, 13 Oct 2025 22:45:13 +0300
Message-ID: <20251013224513.GG1422726@igalia.com>
From: Adrian Perez de Castro <aperez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, oss-security@lists.openwall.com
References:
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="8lJlc/WuDxLtgrVd"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2025-0007

--8lJlc/WuDxLtgrVd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: base64

LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCldlYktpdEdUSyBhbmQgV1BFIFdlYktpdCBTZWN1cml0eSBBZHZpc29y
eSAgICAgICAgICAgICAgICAgV1NBLTIwMjUtMDAwNwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCkRhdGUgcmVw
b3J0ZWQgICAgICAgICAgIDogT2N0b2JlciAxMywgMjAyNQpBZHZpc29yeSBJRCAgICAgICAgICAg
ICA6IFdTQS0yMDI1LTAwMDcKV2ViS2l0R1RLIEFkdmlzb3J5IFVSTCAgOiBodHRwczovL3dlYmtp
dGd0ay5vcmcvc2VjdXJpdHkvV1NBLTIwMjUtMDAwNy5odG1sCldQRSBXZWJLaXQgQWR2aXNvcnkg
VVJMIDogaHR0cHM6Ly93cGV3ZWJraXQub3JnL3NlY3VyaXR5L1dTQS0yMDI1LTAwMDcuaHRtbApD
VkUgaWRlbnRpZmllcnMgICAgICAgICA6IENWRS0yMDI1LTQzMzQzLgoKU2V2ZXJhbCB2dWxuZXJh
YmlsaXRpZXMgd2VyZSBkaXNjb3ZlcmVkIGluIFdlYktpdEdUSyBhbmQgV1BFIFdlYktpdC4KCkNW
RS0yMDI1LTQzMzQzCiAgICBWZXJzaW9ucyBhZmZlY3RlZDogV2ViS2l0R1RLIGFuZCBXUEUgV2Vi
S2l0IGJlZm9yZSAyLjUwLjEuCiAgICBDcmVkaXQgdG8gYW4gYW5vbnltb3VzIHJlc2VhcmNoZXIu
CiAgICBJbXBhY3Q6IFByb2Nlc3NpbmcgbWFsaWNpb3VzbHkgY3JhZnRlZCB3ZWIgY29udGVudCBt
YXkgbGVhZCB0byBhbgogICAgdW5leHBlY3RlZCBwcm9jZXNzIGNyYXNoLiBEZXNjcmlwdGlvbjog
VGhlIGlzc3VlIHdhcyBhZGRyZXNzZWQgd2l0aAogICAgaW1wcm92ZWQgbWVtb3J5IGhhbmRsaW5n
LgogICAgV2ViS2l0IEJ1Z3ppbGxhOiAyOTY0OTAKCldlIHJlY29tbWVuZCB1cGRhdGluZyB0byB0
aGUgbGF0ZXN0IHN0YWJsZSB2ZXJzaW9ucyBvZiBXZWJLaXRHVEsgYW5kIFdQRQpXZWJLaXQuIEl0
IGlzIHRoZSBiZXN0IHdheSB0byBlbnN1cmUgdGhhdCB5b3UgYXJlIHJ1bm5pbmcgc2FmZSB2ZXJz
aW9ucwpvZiBXZWJLaXQuIFBsZWFzZSBjaGVjayBvdXIgd2Vic2l0ZXMgZm9yIGluZm9ybWF0aW9u
IGFib3V0IHRoZSBsYXRlc3QKc3RhYmxlIHJlbGVhc2VzLgoKRnVydGhlciBpbmZvcm1hdGlvbiBh
Ym91dCBXZWJLaXRHVEsgYW5kIFdQRSBXZWJLaXQgc2VjdXJpdHkgYWR2aXNvcmllcwpjYW4gYmUg
Zm91bmQgYXQ6IGh0dHBzOi8vd2Via2l0Z3RrLm9yZy9zZWN1cml0eS5odG1sIG9yCmh0dHBzOi8v
d3Bld2Via2l0Lm9yZy9zZWN1cml0eS4KClRoZSBXZWJLaXRHVEsgYW5kIFdQRSBXZWJLaXQgdGVh
bSwK

--8lJlc/WuDxLtgrVd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABEIAB0WIQRao7wzT9fjNp58d7KRxVnb5MkSOwUCaO1WyQAKCRCRxVnb5MkS
O/ANAJ9g14gWwGBFA5rEgu310kbVljElcgCeJQU7f/dgSVKonhn7XpUyWa0tYMc=
=K7tv
-----END PGP SIGNATURE-----

--8lJlc/WuDxLtgrVd--
