Received: (qmail 21992 invoked by uid 550); 17 Mar 2023 10:48:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21974 invoked from network); 17 Mar 2023 10:48:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1679050126; bh=NOip+7xIt0GMjRMButpiF3C3GycxfvdxgLAXkXbzzj8=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=HbsYZMxBTtxh5+WRS9woQ7AUdoEu19yXpcDbmzd/fQIw+yioPQDD6vTyTSJMyYu3V
	 yFWFlQoWl0hfhUIvQ/MsLrZ/fqcqfjiey5yBGwOXqBqfJ6/WHQw8N8qWKJ8UZgdmgi
	 QuOCsRwV2Vcj5S3TyliyyxGRIH+HuDIjJFC9polg2dhtPjLB2pAMkG7ARnGEUQj7rR
	 TwLdaasm+Jmy7TAB/iMLiViuxqGIjW5RBOUEs1m1jLS88VrJvifQlDw3PXa+BAI2IZ
	 5ux9fbTwiFsRs5jfeu8LBT8ywLVCSlBGebFyYnz38G42PL36oi1uHvz+J7w65kefNs
	 1wk83TADZC/Nw==
Original-Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI
Author: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Date: Fri, 17 Mar 2023 11:48:44 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230317114844.21563d9a.hanno@hboeck.de>
In-Reply-To: <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
	<20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

On Tue, 14 Mar 2023 11:36:26 +0100
Jakub Wilk <jwilk@jwilk.net> wrote:

> On Linux virtual terminals, it's possible to achieve pretty much the=20
> same effect using TIOCLINUX, the ioctl used by gpm to implement=20
> copy&pasting.

This is interesting.

Given this works only on "virtual terminals" (aka not in a terminal
window on X, not over SSH), I think the severity is much lower than the
TIOCSTI issue. Still it should be fixed.

I've created a patch for the Linux kernel very similar to the patch
that allows disabling TIOCSTI. I'll send that to the kernel devs soon,
but maybe people here want to test and comment.

---
 drivers/tty/Kconfig  | 16 ++++++++++++++++
 drivers/tty/tty.h    |  1 +
 drivers/tty/tty_io.c |  7 +++++++
 drivers/tty/vt/vt.c  |  5 +++++
 4 files changed, 29 insertions(+)

diff --git a/drivers/tty/Kconfig b/drivers/tty/Kconfig
index d35fc068d..f808e4ee7 100644
--- a/drivers/tty/Kconfig
+++ b/drivers/tty/Kconfig
@@ -168,6 +168,22 @@ config LEGACY_TIOCSTI
 	  dev.tty.legacy_tiocsti sysctl. This configuration option sets
 	  the default value of the sysctl.
=20
+config LEGACY_TIOCLINUX
+	bool "Allow legacy TIOCLINUX usage"
+	default y
+	help
+	  The TIOCLINUX ioctl allows implementing copy-and-paste and
+	  mouse operations in virtual terminals, used by tools like
gpm.
+	  However, it can be abused by a low privilege process when
+	  called with tools like su or sudo to inject content on the
+	  root shell.
+
+	  Say Y here if you use tools like gpm.
+
+	  This functionality can be changed at runtime with the
+	  dev.tty.legacy_tioclinux sysctl. This configuration option
sets
+	  the default value of the sysctl.
+
 config LDISC_AUTOLOAD
 	bool "Automatically load TTY Line Disciplines"
 	default y
diff --git a/drivers/tty/tty.h b/drivers/tty/tty.h
index f45cd683c..3e4f1e094 100644
--- a/drivers/tty/tty.h
+++ b/drivers/tty/tty.h
@@ -94,6 +94,7 @@ int __must_check tty_ldisc_init(struct tty_struct
*tty); void tty_ldisc_deinit(struct tty_struct *tty);
=20
 extern int tty_ldisc_autoload;
+extern bool tty_legacy_tioclinux;
=20
 /* tty_audit.c */
 #ifdef CONFIG_AUDIT
diff --git a/drivers/tty/tty_io.c b/drivers/tty/tty_io.c
index 36fb945fd..badd1f909 100644
--- a/drivers/tty/tty_io.c
+++ b/drivers/tty/tty_io.c
@@ -3602,6 +3602,13 @@ static struct ctl_table tty_table[] =3D {
 		.mode		=3D 0644,
 		.proc_handler	=3D proc_dobool,
 	},
+	{
+		.procname	=3D "legacy_tioclinux",
+		.data		=3D &tty_legacy_tioclinux,
+		.maxlen		=3D sizeof(tty_legacy_tioclinux),
+		.mode		=3D 0644,
+		.proc_handler	=3D proc_dobool,
+	},
 	{
 		.procname	=3D "ldisc_autoload",
 		.data		=3D &tty_ldisc_autoload,
diff --git a/drivers/tty/vt/vt.c b/drivers/tty/vt/vt.c
index 57a5c23b5..3bc0d9149 100644
--- a/drivers/tty/vt/vt.c
+++ b/drivers/tty/vt/vt.c
@@ -3119,6 +3119,8 @@ static struct console vt_console_driver =3D {
  *	Handling of Linux-specific VC ioctls
  */
=20
+bool tty_legacy_tioclinux __read_mostly =3D
IS_ENABLED(CONFIG_LEGACY_TIOCLINUX); +
 /*
  * Generally a bit racy with respect to console_lock();.
  *
@@ -3137,6 +3139,9 @@ int tioclinux(struct tty_struct *tty, unsigned
long arg) int lines;
 	int ret;
=20
+	if (!tty_legacy_tioclinux)
+		return -EIO;
+
 	if (current->signal->tty !=3D tty && !capable(CAP_SYS_ADMIN))
 		return -EPERM;
 	if (get_user(type, p))
--=20
2.40.0


--=20
Hanno B=C3=B6ck
https://hboeck.de/
