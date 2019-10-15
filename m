X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["22744" "Tuesday" "15" "October" "2019" "14:55:06" "-0600" "Todd C. Miller" "Todd.Miller@sudo.ws" "<818ccecb7de32608@sudo.ws>" "747" "Re: [oss-security] Sudo: CVE-2019-14287" "^Date:" nil nil "10" "2019101520:55:06" "[oss-security] Sudo: CVE-2019-14287" (number mark "        Todd.Miller@ Oct 15  747/22744 " thread-indent "\"Re: [oss-security] Sudo: CVE-2019-14287\"\n") "<818cb36f5cb471ae@sudo.ws>" ("<818cb36f5cb471ae@sudo.ws>") nil nil nil nil nil nil nil "Re: [oss-security] Sudo: CVE-2019-14287" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9578 invoked by uid 550); 15 Oct 2019 21:07:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6107 invoked from network); 15 Oct 2019 20:55:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=sudo.ws; h=from:to
	:subject:in-reply-to:references:mime-version:content-type
	:content-id:date:message-id; s=selector1; bh=D6NIgrKQHaX12KqdmEX
	trc57nskBlXbmbBW8b1KddT4=; b=Q98XeAu8jPZbaDVnArsMYs+NIyKBsJuzVW/
	F8aXXbIycxT3rl9ht5/leMoJu78JQpYGlT99RTP/38CuPkwx+/Tq9/rl/xEoAXnx
	l4lNY8++CkiZPmYf4bOq6d/t/LmAQPu1deb4LWkupYdkq+uC5dTeAASs5DoSGaUB
	P18GcYg4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=sudo.ws; h=from:to:subject
	:in-reply-to:references:mime-version:content-type:content-id
	:date:message-id; q=dns; s=selector1; b=itQh1OFlsuctSqR2cdeb6s1Y
	6WHB7t7As4AuqFhSoob8BS93uqcq94TruaaqzVyuGWjVQbCpbTIbgCtexxS5J38p
	PMLdgLLgoEshD2Uh3yYvtEg9e2phkKs7MfI62Mq6hH3Oeqmxl5ZIJRI+pLSKOxEo
	OLm28k2FGENdrAf2hrU=
In-reply-to: Your message of "Mon, 14 Oct 2019 09:00:31 -0600."
             <818cb36f5cb471ae@sudo.ws>
References: <818cb36f5cb471ae@sudo.ws>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----- =_aaaaaaaaaa0"
Content-ID: <72397.1571172879.0@xerxes.sudo.ws>
Message-ID: <818ccecb7de32608@sudo.ws>
Date: Tue, 15 Oct 2019 14:55:06 -0600
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Sudo: CVE-2019-14287
To: oss-security@lists.openwall.com

------- =_aaaaaaaaaa0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <72397.1571172879.1@xerxes.sudo.ws>

In an effort to aid distros trying to backport the fix for
CVE-2019-14287 to earlier sudo versions I've attached versions of
the fix for sudo 1.8.5 and 1.8.10.

 - todd

------- =_aaaaaaaaaa0
Content-Type: text/x-patch; name="sudo-1.8.10.patch"; charset="us-ascii"
Content-ID: <72397.1571172879.2@xerxes.sudo.ws>

diff -urN sudo-1.8.10/common/atoid.c sudo-1.8.10.patched/common/atoid.c
--- sudo-1.8.10/common/atoid.c	Fri Mar  7 14:51:19 2014
+++ sudo-1.8.10.patched/common/atoid.c	Tue Oct 15 14:51:52 2019
@@ -37,6 +37,7 @@
 #else
 # include "compat/stdbool.h"
 #endif
+#include <ctype.h>
 #include <errno.h>
 #include <limits.h>
 
@@ -48,6 +49,27 @@
 #include "sudo_util.h"
 
 /*
+ * Make sure that the ID ends with a valid separator char.
+ */
+static bool
+valid_separator(const char *p, const char *ep, const char *sep)
+{
+    bool valid = false;
+    debug_decl(valid_separator, SUDO_DEBUG_UTIL)
+
+    if (ep != p) {
+	/* check for valid separator (including '\0') */
+	if (sep == NULL)
+	    sep = "";
+	do {
+	    if (*ep == *sep)
+		valid = true;
+	} while (*sep++ != '\0');
+    }
+    debug_return_bool(valid);
+}
+
+/*
  * Parse a uid/gid in string form.
  * If sep is non-NULL, it contains valid separator characters (e.g. comma, space)
  * If endp is non-NULL it is set to the next char after the ID.
@@ -59,27 +81,15 @@
 {
     char *ep;
     id_t rval = 0;
-    bool valid = false;
     debug_decl(atoid, SUDO_DEBUG_UTIL)
 
-    if (sep == NULL)
-	sep = "";
+    /* skip leading space so we can pick up the sign, if any */
+    while (isspace((unsigned char)*p))
+	p++;
+
     errno = 0;
     if (*p == '-') {
 	long lval = strtol(p, &ep, 10);
-	if (ep != p) {
-	    /* check for valid separator (including '\0') */
-	    do {
-		if (*ep == *sep)
-		    valid = true;
-	    } while (*sep++ != '\0');
-	}
-	if (!valid) {
-	    if (errstr != NULL)
-		*errstr = N_("invalid value");
-	    errno = EINVAL;
-	    goto done;
-	}
 	if ((errno == ERANGE && lval == LONG_MAX) || lval > INT_MAX) {
 	    errno = ERANGE;
 	    if (errstr != NULL)
@@ -92,26 +102,29 @@
 		*errstr = N_("value too small");
 	    goto done;
 	}
-	rval = (id_t)lval;
-    } else {
-	unsigned long ulval = strtoul(p, &ep, 10);
-	if (ep != p) {
-	    /* check for valid separator (including '\0') */
-	    do {
-		if (*ep == *sep)
-		    valid = true;
-	    } while (*sep++ != '\0');
-	}
-	if (!valid) {
+
+	/* Disallow id -1, which means "no change". */
+	if (!valid_separator(p, ep, sep) || lval == -1) {
 	    if (errstr != NULL)
 		*errstr = N_("invalid value");
 	    errno = EINVAL;
 	    goto done;
 	}
+	rval = (id_t)lval;
+    } else {
+	unsigned long ulval = strtoul(p, &ep, 10);
 	if ((errno == ERANGE && ulval == ULONG_MAX) || ulval > UINT_MAX) {
 	    errno = ERANGE;
 	    if (errstr != NULL)
 		*errstr = N_("value too large");
+	    goto done;
+	}
+
+	/* Disallow id -1, which means "no change". */
+	if (!valid_separator(p, ep, sep) || ulval == UINT_MAX) {
+	    if (errstr != NULL)
+		*errstr = N_("invalid value");
+	    errno = EINVAL;
 	    goto done;
 	}
 	rval = (id_t)ulval;
diff -urN sudo-1.8.10/plugins/sudoers/regress/testsudoers/test5.out.ok sudo-1.8.10.patched/plugins/sudoers/regress/testsudoers/test5.out.ok
--- sudo-1.8.10/plugins/sudoers/regress/testsudoers/test5.out.ok	Fri Mar  7 14:50:56 2014
+++ sudo-1.8.10.patched/plugins/sudoers/regress/testsudoers/test5.out.ok	Tue Oct 15 14:33:30 2019
@@ -4,7 +4,7 @@
 Entries for user root:
 
 Command unmatched
-testsudoers: test5.inc should be owned by gid 4294967295
+testsudoers: test5.inc should be owned by gid 4294967294
 Parse error in sudoers near line 1.
 
 Entries for user root:
diff -urN sudo-1.8.10/plugins/sudoers/regress/testsudoers/test5.sh sudo-1.8.10.patched/plugins/sudoers/regress/testsudoers/test5.sh
--- sudo-1.8.10/plugins/sudoers/regress/testsudoers/test5.sh	Fri Mar  7 14:50:56 2014
+++ sudo-1.8.10.patched/plugins/sudoers/regress/testsudoers/test5.sh	Tue Oct 15 14:33:33 2019
@@ -21,7 +21,7 @@
 
 # Test group writable
 chmod 664 $TESTFILE
-./testsudoers -U $MYUID -G -1 root id <<EOF
+./testsudoers -U $MYUID -G -2 root id <<EOF
 #include $TESTFILE
 EOF
 

------- =_aaaaaaaaaa0
Content-Type: text/x-patch; name="sudo-1.8.5.patch"; charset="us-ascii"
Content-ID: <72397.1571172879.3@xerxes.sudo.ws>

diff -urN sudo-1.8.5/common/Makefile.in sudo-1.8.5.patched/common/Makefile.in
--- sudo-1.8.5/common/Makefile.in	Tue May 15 10:22:01 2012
+++ sudo-1.8.5.patched/common/Makefile.in	Tue Oct 15 13:41:38 2019
@@ -52,7 +52,7 @@
 
 SHELL = @SHELL@
 
-LTOBJS = alloc.lo atobool.lo fileops.lo fmt_string.lo lbuf.lo list.lo \
+LTOBJS = alloc.lo atobool.lo atoid.lo fileops.lo fmt_string.lo lbuf.lo list.lo \
 	 secure_path.lo setgroups.lo sudo_conf.lo sudo_debug.lo term.lo \
 	 ttysize.lo zero_bytes.lo @COMMON_OBJS@
 
@@ -113,6 +113,9 @@
 atobool.lo: $(srcdir)/atobool.c $(top_builddir)/config.h $(incdir)/missing.h \
             $(incdir)/sudo_debug.h
 	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/atobool.c
+atoid.lo: $(srcdir)/atoid.c $(top_builddir)/config.h $(incdir)/missing.h \
+          $(incdir)/sudo_debug.h
+	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(PIE_CFLAGS) $(SSP_CFLAGS) $(DEFS) $(srcdir)/atoid.c
 fileops.lo: $(srcdir)/fileops.c $(top_builddir)/config.h \
             $(top_srcdir)/compat/stdbool.h $(top_srcdir)/compat/timespec.h \
             $(incdir)/missing.h $(incdir)/fileops.h $(incdir)/sudo_debug.h
diff -urN sudo-1.8.5/common/atoid.c sudo-1.8.5.patched/common/atoid.c
--- sudo-1.8.5/common/atoid.c	Wed Dec 31 17:00:00 1969
+++ sudo-1.8.5.patched/common/atoid.c	Tue Oct 15 14:51:36 2019
@@ -0,0 +1,135 @@
+/*
+ * Copyright (c) 2013 Todd C. Miller <Todd.Miller@courtesan.com>
+ *
+ * Permission to use, copy, modify, and distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
+ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
+ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
+ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ */
+
+#include <config.h>
+
+#include <sys/types.h>
+
+#include <stdio.h>
+#ifdef STDC_HEADERS
+# include <stdlib.h>
+# include <stddef.h>
+#else
+# ifdef HAVE_STDLIB_H
+#  include <stdlib.h>
+# endif
+#endif /* STDC_HEADERS */
+#if defined(HAVE_STDINT_H)
+# include <stdint.h>
+#elif defined(HAVE_INTTYPES_H)
+# include <inttypes.h>
+#endif
+#ifdef HAVE_STDBOOL_H
+# include <stdbool.h>
+#else
+# include "compat/stdbool.h"
+#endif
+#include <ctype.h>
+#include <errno.h>
+#include <limits.h>
+
+#include "missing.h"
+#include "sudo_debug.h"
+#include "gettext.h"
+
+/*
+ * Make sure that the ID ends with a valid separator char.
+ */
+static bool
+valid_separator(const char *p, const char *ep, const char *sep)
+{
+    bool valid = false;
+    debug_decl(valid_separator, SUDO_DEBUG_UTIL)
+
+    if (ep != p) {
+	/* check for valid separator (including '\0') */
+	if (sep == NULL)
+	    sep = "";
+	do {
+	    if (*ep == *sep)
+		valid = true;
+	} while (*sep++ != '\0');
+    }
+    debug_return_bool(valid);
+}
+
+/*
+ * Parse a uid/gid in string form.
+ * If sep is non-NULL, it contains valid separator characters (e.g. comma, space)
+ * If endp is non-NULL it is set to the next char after the ID.
+ * On success, returns the parsed ID and clears errstr.
+ * On error, returns 0 and sets errstr.
+ */
+id_t
+atoid(const char *p, const char *sep, char **endp, const char **errstr)
+{
+    char *ep;
+    id_t rval = 0;
+    debug_decl(atoid, SUDO_DEBUG_UTIL)
+
+    /* skip leading space so we can pick up the sign, if any */
+    while (isspace((unsigned char)*p))
+	p++;
+
+    errno = 0;
+    if (*p == '-') {
+	long lval = strtol(p, &ep, 10);
+	if ((errno == ERANGE && lval == LONG_MAX) || lval > INT_MAX) {
+	    errno = ERANGE;
+	    if (errstr != NULL)
+		*errstr = _("value too large");
+	    goto done;
+	}
+	if ((errno == ERANGE && lval == LONG_MIN) || lval < INT_MIN) {
+	    errno = ERANGE;
+	    if (errstr != NULL)
+		*errstr = _("value too small");
+	    goto done;
+	}
+
+	/* Disallow id -1, which means "no change". */
+	if (!valid_separator(p, ep, sep) || lval == -1) {
+	    if (errstr != NULL)
+		*errstr = _("invalid value");
+	    errno = EINVAL;
+	    goto done;
+	}
+	rval = (id_t)lval;
+    } else {
+	unsigned long ulval = strtoul(p, &ep, 10);
+	if ((errno == ERANGE && ulval == ULONG_MAX) || ulval > UINT_MAX) {
+	    errno = ERANGE;
+	    if (errstr != NULL)
+		*errstr = _("value too large");
+	    goto done;
+	}
+
+	/* Disallow id -1, which means "no change". */
+	if (!valid_separator(p, ep, sep) || ulval == UINT_MAX) {
+	    if (errstr != NULL)
+		*errstr = _("invalid value");
+	    errno = EINVAL;
+	    goto done;
+	}
+	rval = (id_t)ulval;
+    }
+    if (errstr != NULL)
+	*errstr = NULL;
+    if (endp != NULL)
+	*endp = ep;
+done:
+    debug_return_int(rval);
+}
diff -urN sudo-1.8.5/compat/getgrouplist.c sudo-1.8.5.patched/compat/getgrouplist.c
--- sudo-1.8.5/compat/getgrouplist.c	Mon Mar 12 12:02:04 2012
+++ sudo-1.8.5.patched/compat/getgrouplist.c	Tue Oct 15 12:01:19 2019
@@ -58,9 +58,10 @@
     aix_setauthdb((char *) name);
 #endif
     if ((grset = getgrset(name)) != NULL) {
+	const char *errstr;
 	for (cp = strtok(grset, ","); cp != NULL; cp = strtok(NULL, ",")) {
-	    gid = atoi(cp);
-	    if (gid != basegid) {
+	    gid = atoid(cp, NULL, NULL, &errstr);
+	    if (errstr == NULL && gid != basegid) {
 		if (ngroups == grpsize)
 		    goto done;
 		groups[ngroups++] = gid;
diff -urN sudo-1.8.5/plugins/sudoers/match.c sudo-1.8.5.patched/plugins/sudoers/match.c
--- sudo-1.8.5/plugins/sudoers/match.c	Tue May 15 10:22:03 2012
+++ sudo-1.8.5.patched/plugins/sudoers/match.c	Tue Oct 15 12:05:36 2019
@@ -633,11 +633,13 @@
 bool
 userpw_matches(char *sudoers_user, char *user, struct passwd *pw)
 {
+    const char *errstr;
+    uid_t uid;
     debug_decl(userpw_matches, SUDO_DEBUG_MATCH)
 
     if (pw != NULL && *sudoers_user == '#') {
-	uid_t uid = (uid_t) atoi(sudoers_user + 1);
-	if (uid == pw->pw_uid)
+	uid = (uid_t) atoid(sudoers_user + 1, NULL, NULL, &errstr);
+	if (errstr == NULL && uid == pw->pw_uid)
 	    debug_return_bool(true);
     }
     debug_return_bool(strcmp(sudoers_user, user) == 0);
@@ -650,11 +652,13 @@
 bool
 group_matches(char *sudoers_group, struct group *gr)
 {
+    const char *errstr;
+    gid_t gid;
     debug_decl(group_matches, SUDO_DEBUG_MATCH)
 
     if (*sudoers_group == '#') {
-	gid_t gid = (gid_t) atoi(sudoers_group + 1);
-	if (gid == gr->gr_gid)
+	gid = (gid_t) atoid(sudoers_group + 1, NULL, NULL, &errstr);
+	if (errstr == NULL && gid == gr->gr_gid)
 	    debug_return_bool(true);
     }
     debug_return_bool(strcmp(gr->gr_name, sudoers_group) == 0);
diff -urN sudo-1.8.5/plugins/sudoers/pwutil.c sudo-1.8.5.patched/plugins/sudoers/pwutil.c
--- sudo-1.8.5/plugins/sudoers/pwutil.c	Tue May 15 10:22:03 2012
+++ sudo-1.8.5.patched/plugins/sudoers/pwutil.c	Tue Oct 15 13:21:55 2019
@@ -400,9 +400,12 @@
 struct passwd *
 sudo_fakepwnam(const char *user, gid_t gid)
 {
+    const char *errstr;
     uid_t uid;
 
-    uid = (uid_t) atoi(user + 1);
+    uid = (uid_t) atoid(user + 1, NULL, NULL, &errstr);
+    if (errstr != NULL)
+	return NULL;
     return sudo_fakepwnamid(user, uid, gid);
 }
 
@@ -726,6 +729,7 @@
 sudo_fakegrnam(const char *group)
 {
     struct cache_item_gr *gritem;
+    const char *errstr;
     struct group *gr;
     struct rbnode *node;
     size_t len, namelen;
@@ -738,9 +742,15 @@
     for (i = 0; i < 2; i++) {
 	gritem = ecalloc(1, len);
 	gr = &gritem->gr;
-	gr->gr_gid = (gid_t) atoi(group + 1);
+	gr->gr_gid = (gid_t) atoid(group + 1, NULL, NULL, &errstr);
 	gr->gr_name = (char *)(gritem + 1);
 	memcpy(gr->gr_name, group, namelen + 1);
+	if (errstr != NULL) {
+	    sudo_debug_printf(SUDO_DEBUG_DEBUG|SUDO_DEBUG_DIAG,
+		"gid %s %s", group, errstr);
+	    efree(gritem);
+	    debug_return_ptr(NULL);
+	}
 
 	gritem->cache.refcnt = 1;
 	gritem->cache.d.gr = gr;
@@ -922,6 +932,7 @@
 {
     struct group_list *grlist;
     struct group *grp = NULL;
+    const char *errstr;
     int i;
     bool matched = false;
     debug_decl(user_in_group, SUDO_DEBUG_NSS)
@@ -931,15 +942,20 @@
 	 * If it could be a sudo-style group ID check gids first.
 	 */
 	if (group[0] == '#') {
-	    gid_t gid = atoi(group + 1);
-	    if (gid == pw->pw_gid) {
-		matched = true;
-		goto done;
-	    }
-	    for (i = 0; i < grlist->ngids; i++) {
-		if (gid == grlist->gids[i]) {
+	    gid_t gid = (gid_t) atoid(group + 1, NULL, NULL, &errstr);
+	    if (errstr != NULL) {
+		sudo_debug_printf(SUDO_DEBUG_DEBUG|SUDO_DEBUG_DIAG,
+		    "gid %s %s", group, errstr);
+	    } else {
+		if (gid == pw->pw_gid) {
 		    matched = true;
 		    goto done;
+		}
+		for (i = 0; i < grlist->ngids; i++) {
+		    if (gid == grlist->gids[i]) {
+			matched = true;
+			goto done;
+		    }
 		}
 	    }
 	}
diff -urN sudo-1.8.5/plugins/sudoers/sudoers.c sudo-1.8.5.patched/plugins/sudoers/sudoers.c
--- sudo-1.8.5/plugins/sudoers/sudoers.c	Tue May 15 10:22:03 2012
+++ sudo-1.8.5.patched/plugins/sudoers/sudoers.c	Tue Oct 15 14:52:44 2019
@@ -409,11 +409,15 @@
      * Look up the timestamp dir owner if one is specified.
      */
     if (def_timestampowner) {
-	struct passwd *pw;
+	struct passwd *pw = NULL;
 
-	if (*def_timestampowner == '#')
-	    pw = sudo_getpwuid(atoi(def_timestampowner + 1));
-	else
+	if (*def_timestampowner == '#') {
+	    const char *errstr;
+	    uid_t uid = atoid(def_timestampowner + 1, NULL, NULL, &errstr);
+	    if (errstr == NULL)
+		pw = sudo_getpwuid(uid);
+	}
+	if (pw == NULL)
 	    pw = sudo_getpwnam(def_timestampowner);
 	if (pw != NULL) {
 	    timestamp_uid = pw->pw_uid;
@@ -1103,17 +1107,24 @@
 static void
 set_runaspw(const char *user)
 {
+    struct passwd *pw = NULL;
     debug_decl(set_runaspw, SUDO_DEBUG_PLUGIN)
 
-    if (runas_pw != NULL)
-	pw_delref(runas_pw);
     if (*user == '#') {
-	if ((runas_pw = sudo_getpwuid(atoi(user + 1))) == NULL)
-	    runas_pw = sudo_fakepwnam(user, runas_gr ? runas_gr->gr_gid : 0);
-    } else {
-	if ((runas_pw = sudo_getpwnam(user)) == NULL)
-	    log_fatal(NO_MAIL|MSG_ONLY, _("unknown user: %s"), user);
+	const char *errstr;
+	uid_t uid = atoid(user + 1, NULL, NULL, &errstr);
+	if (errstr == NULL) {
+	    if ((pw = sudo_getpwuid(uid)) == NULL)
+		pw = sudo_fakepwnam(user, runas_gr ? runas_gr->gr_gid : 0);
+	}
     }
+    if (pw == NULL) {
+	if ((pw = sudo_getpwnam(user)) == NULL)
+	    log_fatal(NO_MAIL|MSG_ONLY, N_("unknown user: %s"), user);
+    }
+    if (runas_pw != NULL)
+	pw_delref(runas_pw);
+    runas_pw = pw;
     debug_return;
 }
 
@@ -1124,17 +1135,24 @@
 static void
 set_runasgr(const char *group)
 {
+    struct group *gr = NULL;
     debug_decl(set_runasgr, SUDO_DEBUG_PLUGIN)
 
-    if (runas_gr != NULL)
-	gr_delref(runas_gr);
     if (*group == '#') {
-	if ((runas_gr = sudo_getgrgid(atoi(group + 1))) == NULL)
-	    runas_gr = sudo_fakegrnam(group);
-    } else {
-	if ((runas_gr = sudo_getgrnam(group)) == NULL)
-	    log_fatal(NO_MAIL|MSG_ONLY, _("unknown group: %s"), group);
+	const char *errstr;
+	gid_t gid = atoid(group + 1, NULL, NULL, &errstr);
+	if (errstr == NULL) {
+	    if ((gr = sudo_getgrgid(gid)) == NULL)
+		gr = sudo_fakegrnam(group);
+	}
     }
+    if (gr == NULL) {
+	if ((gr = sudo_getgrnam(group)) == NULL)
+	    log_fatal(NO_MAIL|MSG_ONLY, N_("unknown group: %s"), group);
+    }
+    if (runas_gr != NULL)
+	gr_delref(runas_gr);
+    runas_gr = gr;
     debug_return;
 }
 
@@ -1211,7 +1229,7 @@
 deserialize_info(char * const args[], char * const settings[], char * const user_info[])
 {
     char * const *cur;
-    const char *p, *groups = NULL;
+    const char *p, *errstr, *groups = NULL;
     const char *debug_flags = NULL;
     int flags = 0;
     debug_decl(deserialize_info, SUDO_DEBUG_PLUGIN)
@@ -1226,11 +1244,17 @@
 		continue;
 	    }
 	    if (MATCHES(*cur, "sudoers_uid=")) {
-		sudoers_uid = (uid_t) atoi(*cur + sizeof("sudoers_uid=") - 1);
+		p = *cur + sizeof("sudoers_uid=") - 1;
+		sudoers_uid = (uid_t) atoid(p, NULL, NULL, &errstr);
+		if (errstr != NULL)
+		    errorx(1, "%s: %s", *cur, errstr);
 		continue;
 	    }
 	    if (MATCHES(*cur, "sudoers_gid=")) {
-		sudoers_gid = (gid_t) atoi(*cur + sizeof("sudoers_gid=") - 1);
+		p = *cur + sizeof("sudoers_gid=") - 1;
+		sudoers_gid = (gid_t) atoid(p, NULL, NULL, &errstr);
+		if (errstr != NULL)
+		    errorx(1, "%s: %s", *cur, errstr);
 		continue;
 	    }
 	    if (MATCHES(*cur, "sudoers_mode=")) {
@@ -1352,12 +1376,17 @@
 	    continue;
 	}
 	if (MATCHES(*cur, "uid=")) {
-	    user_uid = (uid_t) atoi(*cur + sizeof("uid=") - 1);
+	    p = *cur + sizeof("uid=") - 1;
+	    user_uid = (uid_t) atoid(p, NULL, NULL, &errstr);
+	    if (errstr != NULL)
+		errorx(1, "%s: %s", *cur, errstr);
 	    continue;
 	}
 	if (MATCHES(*cur, "gid=")) {
 	    p = *cur + sizeof("gid=") - 1;
-	    user_gid = (gid_t) atoi(p);
+	    user_gid = (gid_t) atoid(p, NULL, NULL, &errstr);
+	    if (errstr != NULL)
+		errorx(1, "%s: %s", *cur, errstr);
 	    continue;
 	}
 	if (MATCHES(*cur, "groups=")) {
@@ -1396,6 +1425,7 @@
 
     if (groups != NULL && groups[0] != '\0') {
 	const char *cp;
+	char *ep;
 	GETGROUPS_T *gids;
 	int ngids;
 
@@ -1412,13 +1442,14 @@
 	ngids = 1;
 	cp = groups;
 	for (;;) {
-	    gids[ngids] = atoi(cp);
+	    gids[ngids] = atoid(cp, ",", &ep, &errstr);
+	    if (errstr != NULL)
+		errorx(1, "%s: %s", cp, errstr);
 	    if (gids[0] != gids[ngids])
 		ngids++;
-	    cp = strchr(cp, ',');
-	    if (cp == NULL)
+	    if (*ep == '\0')
 		break;
-	    cp++; /* skip over comma */
+	    cp = ep + 1;
 	}
 	set_group_list(user_name, gids, ngids);
 	efree(gids);
diff -urN sudo-1.8.5/plugins/sudoers/sudoers.h sudo-1.8.5.patched/plugins/sudoers/sudoers.h
--- sudo-1.8.5/plugins/sudoers/sudoers.h	Tue May 15 10:22:03 2012
+++ sudo-1.8.5.patched/plugins/sudoers/sudoers.h	Tue Oct 15 13:37:09 2019
@@ -292,6 +292,9 @@
 /* atobool.c */
 int atobool(const char *str);
 
+/* atoid.c */
+id_t atoid(const char *p, const char *sep, char **endp, const char **errstr);
+
 /* boottime.c */
 int get_boottime(struct timeval *);
 
diff -urN sudo-1.8.5/src/sudo.c sudo-1.8.5.patched/src/sudo.c
--- sudo-1.8.5/src/sudo.c	Tue May 15 10:22:03 2012
+++ sudo-1.8.5.patched/src/sudo.c	Tue Oct 15 14:14:26 2019
@@ -516,9 +516,11 @@
 command_info_to_details(char * const info[], struct command_details *details)
 {
     int i;
+    id_t id;
     long lval;
     unsigned long ulval;
     char *cp, *ep;
+    const char *errstr;
     debug_decl(command_info_to_details, SUDO_DEBUG_PCOMM)
 
     memset(details, 0, sizeof(*details));
@@ -589,41 +591,29 @@
 	    case 'r':
 		if (strncmp("runas_egid=", info[i], sizeof("runas_egid=") - 1) == 0) {
 		    cp = info[i] + sizeof("runas_egid=") - 1;
-		    if (*cp == '\0')
-			break;
-		    errno = 0;
-		    ulval = strtoul(cp, &ep, 0);
-		    if (*cp != '\0' && *ep == '\0' &&
-			(errno != ERANGE || ulval != ULONG_MAX)) {
-			details->egid = (gid_t)ulval;
-			SET(details->flags, CD_SET_EGID);
-		    }
+		    id = atoid(cp, NULL, NULL, &errstr);
+		    if (errstr != NULL)
+			errorx(1, "%s: %s", info[i], errstr);
+		    details->egid = (gid_t)id;
+		    SET(details->flags, CD_SET_EGID);
 		    break;
 		}
 		if (strncmp("runas_euid=", info[i], sizeof("runas_euid=") - 1) == 0) {
 		    cp = info[i] + sizeof("runas_euid=") - 1;
-		    if (*cp == '\0')
-			break;
-		    errno = 0;
-		    ulval = strtoul(cp, &ep, 0);
-		    if (*cp != '\0' && *ep == '\0' &&
-			(errno != ERANGE || ulval != ULONG_MAX)) {
-			details->euid = (uid_t)ulval;
-			SET(details->flags, CD_SET_EUID);
-		    }
+		    id = atoid(cp, NULL, NULL, &errstr);
+		    if (errstr != NULL)
+			errorx(1, "%s: %s", info[i], errstr);
+		    details->euid = (uid_t)id;
+		    SET(details->flags, CD_SET_EUID);
 		    break;
 		}
 		if (strncmp("runas_gid=", info[i], sizeof("runas_gid=") - 1) == 0) {
 		    cp = info[i] + sizeof("runas_gid=") - 1;
-		    if (*cp == '\0')
-			break;
-		    errno = 0;
-		    ulval = strtoul(cp, &ep, 0);
-		    if (*cp != '\0' && *ep == '\0' &&
-			(errno != ERANGE || ulval != ULONG_MAX)) {
-			details->gid = (gid_t)ulval;
-			SET(details->flags, CD_SET_GID);
-		    }
+		    id = atoid(cp, NULL, NULL, &errstr);
+		    if (errstr != NULL)
+			errorx(1, "%s: %s", info[i], errstr);
+		    details->gid = (gid_t)id;
+		    SET(details->flags, CD_SET_GID);
 		    break;
 		}
 		if (strncmp("runas_groups=", info[i], sizeof("runas_groups=") - 1) == 0) {
@@ -644,13 +634,10 @@
 			    emalloc2(details->ngroups, sizeof(GETGROUPS_T));
 			cp = info[i] + sizeof("runas_groups=") - 1;
 			for (j = 0; j < details->ngroups;) {
-			    errno = 0;
-			    ulval = strtoul(cp, &ep, 0);
-			    if (*cp == '\0' || (*ep != ',' && *ep != '\0') ||
-				(ulval == ULONG_MAX && errno == ERANGE)) {
-				break;
-			    }
-			    details->groups[j++] = (gid_t)ulval;
+			    id = atoid(cp, ",", &ep, &errstr);
+			    if (errstr != NULL)
+				errorx(1, "%s: %s", cp, errstr);
+			    details->groups[j++] = (gid_t)id;
 			    cp = ep + 1;
 			}
 			details->ngroups = j;
@@ -659,15 +646,11 @@
 		}
 		if (strncmp("runas_uid=", info[i], sizeof("runas_uid=") - 1) == 0) {
 		    cp = info[i] + sizeof("runas_uid=") - 1;
-		    if (*cp == '\0')
-			break;
-		    errno = 0;
-		    ulval = strtoul(cp, &ep, 0);
-		    if (*cp != '\0' && *ep == '\0' &&
-			(errno != ERANGE || ulval != ULONG_MAX)) {
-			details->uid = (uid_t)ulval;
-			SET(details->flags, CD_SET_UID);
-		    }
+		    id = atoid(cp, NULL, NULL, &errstr);
+		    if (errstr != NULL)
+			errorx(1, "%s: %s", info[i], errstr);
+		    details->uid = (uid_t)id;
+		    SET(details->flags, CD_SET_UID);
 		    break;
 		}
 		break;
diff -urN sudo-1.8.5/src/sudo.h sudo-1.8.5.patched/src/sudo.h
--- sudo-1.8.5/src/sudo.h	Tue May 15 10:22:03 2012
+++ sudo-1.8.5.patched/src/sudo.h	Tue Oct 15 14:49:25 2019
@@ -191,6 +191,9 @@
 /* atobool.c */
 bool atobool(const char *str);
 
+/* atoid.c */
+id_t atoid(const char *p, const char *sep, char **endp, const char **errstr);
+
 /* parse_args.c */
 int parse_args(int argc, char **argv, int *nargc, char ***nargv,
     char ***settingsp, char ***env_addp);

------- =_aaaaaaaaaa0--
