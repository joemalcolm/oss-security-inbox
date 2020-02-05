X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2361" "Wednesday" "5" "February" "2020" "10:59:55" "+0100" "Riccardo Schirone" "rschiron@redhat.com" nil "64" nil "^Date:" nil nil "2" nil nil (number mark "        rschiron@red Feb  5   64/2361  " thread-indent "\"[oss-security] CVE-2020-1712 systemd: use-after-free when asynchronous polkit queries are performed\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1712 systemd: use-after-free when asynchronous polkit queries are performed" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26320 invoked by uid 550); 5 Feb 2020 10:05:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23992 invoked from network); 5 Feb 2020 10:00:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580896805;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=AOAUCTjeu3Bo35xTaFMwDjPGmUCcTY0EWoHB7EjLaeI=;
	b=dtkSpDCq76eewuqGxrQGkX5Ztj7awV8d1QBgblNFDQSzt/UbXd8jBaM2ze/Rld63yDGC2n
	0b9Co8R1Lo0CkMWudWqT7hzIv5pwfRoQUpW74MrOEey7Ja3jLMhPjxKLtQTubFaL/ixcZt
	Z4jtQH1f76GErxJYmQMn6/6/f579HsU=
X-MC-Unique: nJK713TRNdKWp6s6F8qhkw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=4V8+adl33DCv5IFd3HZeh/KwMwmaNF5jY/j/gNL3DS4=;
        b=MqFATlvUb09kPlf156PwKI78GKFYKm2T7BrnZAigA4NPZDZy/L/VQUW1JekcRK97IW
         rdPQyjlkyY+SYgb1k9ZOPumH1hAAaNdnhR9k7w8VxVddZAxV5xWZGUaWJyUVBUwBjf3h
         4KIa+ZxrO7PSvBFdWaaS0iIxp/1sF3OalBf6MOs73tZIB89qxQWRCj7wBVuIxgFqfK3N
         clhYpXGLv8KnHcbkp7JRSCHFMBrTb2s+U7q7r4gvDUcHNkzI0VLGsywT0Z4CZZ1wvQMY
         Mlo18tqDEuCp2FImYiEbo8oCnNzdX0YV84mKsYI6KwhcjFXTRzVdgi8n66lUnc4XOx3r
         7Wnw==
X-Gm-Message-State: APjAAAXCsGTn6hUNIOOAvjb5GrYTRb9LoaaxVGfajeP4aW+YyRJLISDA
	ZHw585CJ9qA9MckL24EbRUlZ03qU/o6USaRL/8OI3OFKoinTmCb2cZIZGYcry4usuyCDNkdmxBs
	MA0Uc+1xck9uEybQAQgT2QEoPqBVh
X-Received: by 2002:a1c:960c:: with SMTP id y12mr4794909wmd.9.1580896798443;
        Wed, 05 Feb 2020 01:59:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqzI8kDWP2lEtl1bM4jFdKDE9Gz2BplCiGOaaQeBrEKZjldtVjDkqxFxCsbXzCzYxVpxMz6yVw==
X-Received: by 2002:a1c:960c:: with SMTP id y12mr4794860wmd.9.1580896797772;
        Wed, 05 Feb 2020 01:59:57 -0800 (PST)
Message-ID: <20200205095955.GI121861@fedorawork>
MIME-Version: 1.0
X-PGP-Key: http://keyserv.sr32.net/pks/lookup?op=get&search=0x1E8AB789CF96E110
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="M9kwpIYUMbI/2cCx"
Content-Disposition: inline
Date: Wed, 5 Feb 2020 10:59:55 +0100
From: Riccardo Schirone <rschiron@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-1712 systemd: use-after-free when asynchronous polkit
 queries are performed
To: oss-security@lists.openwall.com

--M9kwpIYUMbI/2cCx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

A heap use-after-free vulnerability was found in systemd, when asynchronous
Polkit queries are performed while handling Dbus messages. A local unprivil=
eged
attacker can abuse this flaw to crash systemd services or potentially execu=
te
code and elevate their privileges, by sending specially crafted Dbus messag=
es.

CVE-2020-1712 has been assigned to this issue.

This flaw happens due to the way bus_verify_polkit_async() works. Some DBus
interfaces use a cache to store objects for a short period and they clear i=
t as
soon as the bus is again in the idle state. However, if a DBus method uses
bus_verify_polkit_async(), the method may have to wait a while until the po=
lkit
action is resolved and when that happens the method handler is called again,
with the userdata previously allocated. If the polkit request takes too lon=
g,
the clearing of the cache would free the stored objects before the method is
called the second time, causing the use-after-free vulnerability.

The issue was reported by Tavis Ormandy, Google Project Zero.

Upstream fix is included in v245-rc1:
https://github.com/systemd/systemd/commit/ea0d0ede03c6f18dbc5036c5e9cccf97e=
415ccc2

Thanks,
--=20
Riccardo Schirone
Red Hat -- Product Security
Email: rschiron@redhat.com
PGP-Key ID: CF96E110

--M9kwpIYUMbI/2cCx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE3bt3kyIFawQJu6PaHoq3ic+W4RAFAl46khsACgkQHoq3ic+W
4RCkxxAAhi2B4QY2ylTkUGOypYtz1yDurgfr48ztnchhvOJidsV9+hYt6+Ty+EDU
vEpYIXPkfVFH5dXQMbRrXvNfFxU+M1NGhuymUVmxMLn/6A/rUlj7mfPTJupNGm8D
6XdQCL9K9F+kvHsstA+QxInnENmm0K4dqeuWiRj11o2zu6Y6FttMjTKwuW+gGYuQ
DJlQ5QUFBX96cDgvAAmMtggiMxqMUzFuqoW98AJ5+el4MKoaaZfthvIv76UEDMCJ
0r33tWCxWC+QrSzt6wo5UfIHY5/2qrE/wRYS+i37dSIcimK47Q+u9paSmc/hA3zF
Rq89nA4+P6gRnHAyCk32SQi+bemeAlcvyvvxpJefWmX6yTsGby66VPFWQHlk5Rzv
5ecf7XuotkOffHgWFu9uYKqqn5KKJAlP6yhACyl0Sv4is3ggmGoUtRGpKMcqkfu4
k8TX9eywV2xGMi/Swt/QOBE3wE+uFMstuNCekBCbXXx+SpVmIPC/8YuL0n9Q1JwL
Mc1htSHzUdlkr0vn7BPT8pgqebsm8Ulpz62aOuNsFED+gGHkxti52s5FkKYb3C3D
vfFVHs/BB+puf78CA7XFGbWYycrpwVeZM88q3uSEYFzF+HM/H2lkMRP2qlnbkKGj
Noe86p08SMYDAolPm3PNlbxJLQjhXYBkVF5jJvmXh6CcgLN5WVc=
=3WUn
-----END PGP SIGNATURE-----

--M9kwpIYUMbI/2cCx--

