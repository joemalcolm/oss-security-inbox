X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9860" "Thursday" "9" "November" "2017" "02:32:55" "+0000" "coypu@sdf.org" "coypu@sdf.org" "<20171109023255.GA12183@SDF.ORG>" "341" "[oss-security] nvi denial of service" nil nil nil "11" "2017110902:32:55" "[oss-security] nvi denial of service" (number mark "U       coypu@sdf.or Nov  9  341/9860  " thread-indent "\"[oss-security] nvi denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26152 invoked by uid 550); 9 Nov 2017 03:00:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25660 invoked from network); 9 Nov 2017 02:33:12 -0000
Date: Thu, 9 Nov 2017 02:32:55 +0000
From: coypu@sdf.org
To: oss-security@lists.openwall.com
Cc: maya@netbsd.org
Message-ID: <20171109023255.GA12183@SDF.ORG>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZfOjI3PrQbgiZnxM"
Content-Disposition: inline
User-Agent: Mutt/1.8.3 (2017-05-23)
Subject: [oss-security] nvi denial of service

--ZfOjI3PrQbgiZnxM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

hello,

there is an exploitable flaw in virecover in nvi (as used by netbsd and
possibly others).

the gist of it:
sudo touch /myrootownedfile
touch /var/tmp/vi.recover/vi. myrootownedfile
sudo service virecover restart # may happen naturally

now /myrootownedfile is deleted by the choice of an unprivileged user.

for your convenience, attached is the patch used in netbsd and commit
messages.

(Found by Maya Rashish, fix by Christos Zoulas and Robert Elz).

--ZfOjI3PrQbgiZnxM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="nvi.diff"

 Pull up following revision(s) (requested by spz in ticket #344):

	external/bsd/nvi/usr.bin/recover/virecover: 1.2-1.3
	external/bsd/nvi/dist/common/recover.c: 1.6-1.9
be more careful about opening recovery files... in particular deal with
people trying to get 'vi -r' stuck using named pipes, symlink attacks,
and coercing others opening recovery files they did not create.
- don't use command substitution to glob a pattern into a list of filenames;
  it is less efficient than doing it directly and does not handle whitespace
  in filenames properly.
- change test to [
- quote variables
Put back the tests for "no files matched" (in a different way than they
were written previously - but that's just style.)   This is not csh...
Use the correct test operator to test for an empty file (rather than
testing for an empty file name...)
Write test ('[') commands in a way that is defined to work, rather than
just happens to - we can afford the (negligible) performance hit here.
Deal safely with recovery mail files.
oops, accidendally committed an earlier non-working version; fixed.
Don't use popenve() for portability; forking an extra shell here is not an
issue.



Index: src/external/bsd/nvi/dist/common/recover.c
diff -u src/external/bsd/nvi/dist/common/recover.c:1.5 src/external/bsd/nvi/dist/common/recover.c:1.5.22.1
--- src/external/bsd/nvi/dist/common/recover.c:1.5	Sun Jan 26 21:43:45 2014
+++ src/external/bsd/nvi/dist/common/recover.c	Mon Nov  6 09:37:24 2017
@@ -1,4 +1,4 @@
-/*	$NetBSD: recover.c,v 1.5 2014/01/26 21:43:45 christos Exp $ */
+/*	$NetBSD: recover.c,v 1.5.22.1 2017/11/06 09:37:24 snj Exp $ */
 /*-
  * Copyright (c) 1993, 1994
  *	The Regents of the University of California.  All rights reserved.
@@ -16,7 +16,7 @@
 static const char sccsid[] = "Id: recover.c,v 10.31 2001/11/01 15:24:44 skimo Exp  (Berkeley) Date: 2001/11/01 15:24:44 ";
 #endif /* not lint */
 #else
-__RCSID("$NetBSD: recover.c,v 1.5 2014/01/26 21:43:45 christos Exp $");
+__RCSID("$NetBSD: recover.c,v 1.5.22.1 2017/11/06 09:37:24 snj Exp $");
 #endif
 
 #include <sys/param.h>
@@ -115,17 +115,17 @@
 #define	VI_FHEADER	"X-vi-recover-file: "
 #define	VI_PHEADER	"X-vi-recover-path: "
 
-static int	 rcv_copy __P((SCR *, int, char *));
-static void	 rcv_email __P((SCR *, char *));
-static char	*rcv_gets __P((char *, size_t, int));
-static int	 rcv_mailfile __P((SCR *, int, char *));
-static int	 rcv_mktemp __P((SCR *, char *, const char *, int));
+static int	 rcv_copy(SCR *, int, char *);
+static void	 rcv_email(SCR *, const char *);
+static char	*rcv_gets(char *, size_t, int);
+static int	 rcv_mailfile(SCR *, int, char *);
+static int	 rcv_mktemp(SCR *, char *, const char *, int);
 
 /*
  * rcv_tmp --
  *	Build a file name that will be used as the recovery file.
  *
- * PUBLIC: int rcv_tmp __P((SCR *, EXF *, char *));
+ * PUBLIC: int rcv_tmp(SCR *, EXF *, char *);
  */
 int
 rcv_tmp(SCR *sp, EXF *ep, char *name)
@@ -186,7 +186,7 @@
  * rcv_init --
  *	Force the file to be snapshotted for recovery.
  *
- * PUBLIC: int rcv_init __P((SCR *));
+ * PUBLIC: int rcv_init(SCR *);
  */
 int
 rcv_init(SCR *sp)
@@ -248,7 +248,7 @@
  *		sending email to the user if the file was modified
  *		ending the file session
  *
- * PUBLIC: int rcv_sync __P((SCR *, u_int));
+ * PUBLIC: int rcv_sync(SCR *, u_int);
  */
 int
 rcv_sync(SCR *sp, u_int flags)
@@ -482,6 +482,22 @@
 }
 
 /*
+ * Since vi creates recovery files only accessible by the user, files
+ * accessible by group or others are probably malicious so avoid them.
+ * This is simpler than checking for getuid() == st.st_uid and we want
+ * to preserve the functionality that root can recover anything which
+ * means that root should know better and be careful.
+ */
+static int
+checkok(int fd)
+{
+	struct stat sb;
+
+	return fstat(fd, &sb) != -1 && S_ISREG(sb.st_mode) &&
+	    (sb.st_mode & (S_IRWXG|S_IRWXO)) == 0;
+}
+
+/*
  *	people making love
  *	never exactly the same
  *	just like a snowflake
@@ -489,7 +505,7 @@
  * rcv_list --
  *	List the files that can be recovered by this user.
  *
- * PUBLIC: int rcv_list __P((SCR *));
+ * PUBLIC: int rcv_list(SCR *);
  */
 int
 rcv_list(SCR *sp)
@@ -525,9 +541,14 @@
 		 * if we're using fcntl(2), there's no way to lock a file
 		 * descriptor that's not open for writing.
 		 */
-		if ((fp = fopen(dp->d_name, "r+")) == NULL)
+		if ((fp = fopen(dp->d_name, "r+efl")) == NULL)
 			continue;
 
+		if (!checkok(fileno(fp))) {
+			(void)fclose(fp);
+			continue;
+		}
+
 		switch (file_lock(sp, NULL, NULL, fileno(fp), 1)) {
 		case LOCK_FAILED:
 			/*
@@ -593,7 +614,7 @@
  * rcv_read --
  *	Start a recovered file as the file to edit.
  *
- * PUBLIC: int rcv_read __P((SCR *, FREF *));
+ * PUBLIC: int rcv_read(SCR *, FREF *);
  */
 int
 rcv_read(SCR *sp, FREF *frp)
@@ -638,9 +659,15 @@
 		 * if we're using fcntl(2), there's no way to lock a file
 		 * descriptor that's not open for writing.
 		 */
-		if ((fd = open(recpath, O_RDWR, 0)) == -1)
+		if ((fd = open(recpath, O_RDWR|O_NONBLOCK|O_NOFOLLOW|O_CLOEXEC,
+		    0)) == -1)
 			continue;
 
+		if (!checkok(fd)) {
+			(void)close(fd);
+			continue;
+		}
+
 		switch (file_lock(sp, NULL, NULL, fd, 1)) {
 		case LOCK_FAILED:
 			/*
@@ -849,24 +876,48 @@
  *	Send email.
  */
 static void
-rcv_email(SCR *sp, char *fname)
+rcv_email(SCR *sp, const char *fname)
 {
 	struct stat sb;
-	char buf[MAXPATHLEN * 2 + 20];
+	char buf[BUFSIZ];
+	FILE *fin, *fout;
+	size_t l;
 
-	if (_PATH_SENDMAIL[0] != '/' || stat(_PATH_SENDMAIL, &sb))
+	if (_PATH_SENDMAIL[0] != '/' || stat(_PATH_SENDMAIL, &sb) == -1) {
 		msgq_str(sp, M_SYSERR,
 		    _PATH_SENDMAIL, "071|not sending email: %s");
-	else {
-		/*
-		 * !!!
-		 * If you need to port this to a system that doesn't have
-		 * sendmail, the -t flag causes sendmail to read the message
-		 * for the recipients instead of specifying them some other
-		 * way.
-		 */
-		(void)snprintf(buf, sizeof(buf),
-		    "%s -t < %s", _PATH_SENDMAIL, fname);
-		(void)system(buf);
+		return;
+	}
+
+	/*
+	 * !!!
+	 * If you need to port this to a system that doesn't have
+	 * sendmail, the -t flag causes sendmail to read the message
+	 * for the recipients instead of specifying them some other
+	 * way.
+	 */
+	if ((fin = fopen(fname, "refl")) == NULL) {
+		msgq_str(sp, M_SYSERR,
+		    fname, "325|cannot open: %s");
+		return;
 	}
+
+	if (!checkok(fileno(fin))) {
+		(void)fclose(fin);
+		return;
+	}
+
+	fout = popen(_PATH_SENDMAIL " -t", "w");
+	if (fout == NULL) {
+		msgq_str(sp, M_SYSERR,
+		    _PATH_SENDMAIL, "326|cannot execute sendmail: %s");
+		fclose(fin);
+		return;
+	}
+
+	while ((l = fread(buf, 1, sizeof(buf), fin)) != 0)
+		(void)fwrite(buf, 1, l, fout);
+
+	(void)fclose(fin);
+	(void)pclose(fout);
 }
Index: src/external/bsd/nvi/usr.bin/recover/virecover
diff -u src/external/bsd/nvi/usr.bin/recover/virecover:1.1 src/external/bsd/nvi/usr.bin/recover/virecover:1.1.22.1
--- src/external/bsd/nvi/usr.bin/recover/virecover:1.1	Fri Nov 22 16:00:45 2013
+++ src/external/bsd/nvi/usr.bin/recover/virecover	Mon Nov  6 09:37:24 2017
@@ -1,6 +1,6 @@
 #!/bin/sh -
 #
-#	$NetBSD: virecover,v 1.1 2013/11/22 16:00:45 christos Exp $
+#	$NetBSD: virecover,v 1.1.22.1 2017/11/06 09:37:24 snj Exp $
 #
 #	@(#)recover.in	8.8 (Berkeley) 10/10/96
 #
@@ -10,40 +10,44 @@
 SENDMAIL="/usr/sbin/sendmail"
 
 # Check editor backup files.
-vibackup=`echo $RECDIR/vi.*`
-if [ "$vibackup" != "$RECDIR/vi.*" ]; then
-	for i in $vibackup; do
-		# Only test files that are readable.
-		if test ! -f $i || test ! -r $i; then
-			continue
-		fi
-
-		# Unmodified nvi editor backup files either have the
-		# execute bit set or are zero length.  Delete them.
-		if test -x $i -o ! -s $i; then
-			rm $i
-		fi
-	done
-fi
+for i in $RECDIR/vi.*; do
+
+	case "$i" in
+	$RECDIR/vi.\*) continue;;
+	esac
+
+	# Only test files that are readable.
+	if ! [ -f "$i" ] || ! [ -r "$i" ]; then
+		continue
+	fi
+
+	# Unmodified nvi editor backup files either have the
+	# execute bit set or are zero length.  Delete them.
+	if [ -x "$i" ] || ! [ -s "$i" ]; then
+		rm -f "$i"
+	fi
+done
 
 # It is possible to get incomplete recovery files, if the editor crashes
 # at the right time.
-virecovery=`echo $RECDIR/recover.*`
-if [ "$virecovery" != "$RECDIR/recover.*" ]; then
-	for i in $virecovery; do
-		# Only test files that are readable.
-		if test ! -r $i; then
-			continue
-		fi
-
-		# Delete any recovery files that are zero length, corrupted,
-		# or that have no corresponding backup file.  Else send mail
-		# to the user.
-		recfile=`awk '/^X-vi-recover-path:/{print $2}' < $i`
-		if test -n "$recfile" -a -s "$recfile"; then
-			$SENDMAIL -t < $i
-		else
-			rm $i
-		fi
-	done
-fi
+for i in $RECDIR/recover.*; do
+
+	case "$i" in
+	$RECDIR/recover.\*) continue;;
+	esac
+
+	# Only test files that are readable.
+	if ! [ -r "$i" ]; then
+		continue
+	fi
+
+	# Delete any recovery files that are zero length, corrupted,
+	# or that have no corresponding backup file.  Else send mail
+	# to the user.
+	recfile=$(awk '/^X-vi-recover-path:/{print $2}' < "$i")
+	if [ -n "$recfile" ] && [ -s "$recfile" ]; then
+		$SENDMAIL -t < "$i"
+	else
+		rm -f "$i"
+	fi
+done

--ZfOjI3PrQbgiZnxM--
