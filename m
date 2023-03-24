Received: (qmail 27782 invoked by uid 550); 24 Mar 2023 18:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27764 invoked from network); 24 Mar 2023 18:57:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1679684212; bh=fZYPqFUaXknZGPwlWCVhRsuQ2oDCq/QsL7di0IKmWWE=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=dnYJ3ipN7iGq0LgrO30Nabid/H4AGjEN7dGf9qa5L/ZxgRYcDJ5D7Hf/Xra33Fsm1
	 s1U8IzeVq2FAD1o3ZUBxa5vXFCOo4rq5/grvx00r9wqFa41p93DoRockbi3KSrQV29
	 r13Dng4sIxPEGrkJIYYrhLMQrfeq9asPtXq5rWYVWz3zwxHGa4vMrdmhPL6apKEeKU
	 eYw624cRQQTa0tx5ds8JTIWJ8Dv7OsrqR87MbLwqXU1CwiRRnkSEULSeAvMUovwksi
	 fl27cu/yIYoLG4H46dl8519VxtAQyPBnM+E4qYT6ez1Th94Vkd2Asx0MuvOjeMtgRc
	 5hcDpfEk7fqqw==
Original-Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI
Author: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Date: Fri, 24 Mar 2023 19:56:50 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230324195650.6785dd20.hanno@hboeck.de>
In-Reply-To: <20230321154519.xoymfc2t6ixalgls@jwilk.net>
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
	<20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
	<20230317114844.21563d9a.hanno@hboeck.de>
	<20230317194102.wvso2ex65fuwbukg@jwilk.net>
	<20230319091821.6f2073fb.hanno@hboeck.de>
	<20230321154519.xoymfc2t6ixalgls@jwilk.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

Here's a proposed patch to restrict access to the dangerous
functionality. Waiting a few days for feedback here and will then try
to send it to the appropriate kernel lists.

------------------

Restrict access to TIOCLINUX selection functions

These functions can be used for privilege escalation when code is
executed with tools like su/sudo.

Signed-off-by: Hanno B=C3=B6ck <hanno@hboeck.de>
---
 drivers/tty/vt/vt.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/tty/vt/vt.c b/drivers/tty/vt/vt.c
index 3c2ea9c09..367117310 100644
--- a/drivers/tty/vt/vt.c
+++ b/drivers/tty/vt/vt.c
@@ -3146,10 +3146,14 @@ int tioclinux(struct tty_struct *tty, unsigned
long arg) switch (type)
 	{
 		case TIOCL_SETSEL:
+			if (!capable(CAP_SYS_ADMIN))
+				return -EPERM;
 			ret =3D set_selection_user((struct
tiocl_selection __user *)(p+1), tty);
 			break;
 		case TIOCL_PASTESEL:
+			if (!capable(CAP_SYS_ADMIN))
+				return -EPERM;
 			ret =3D paste_selection(tty);
 			break;
 		case TIOCL_UNBLANKSCREEN:
@@ -3158,6 +3162,8 @@ int tioclinux(struct tty_struct *tty, unsigned
long arg) console_unlock();
 			break;
 		case TIOCL_SELLOADLUT:
+			if (!capable(CAP_SYS_ADMIN))
+				return -EPERM;
 			console_lock();
 			ret =3D sel_loadlut(p);
 			console_unlock();
--=20
2.40.0



--=20
Hanno B=C3=B6ck
https://hboeck.de/
