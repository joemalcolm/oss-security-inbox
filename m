X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9919" "Monday" "5" "October" "2015" "17:00:52" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9q0Xxcm7VyO-W+VkFLYW5x0Y_BgR8mbgENb1SUEFHnQbQ@mail.gmail.com>" "255" "[oss-security] CVE Request: OpenSMTPD <= 5.7.2 buffer overflow" nil nil nil "10" "2015100515:00:52" "[oss-security] CVE Request: OpenSMTPD <= 5.7.2 buffer overflow" (number mark "        Jason@zx2c4. Oct  5  255/9919  " thread-indent "\"[oss-security] CVE Request: OpenSMTPD <= 5.7.2 buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25973 invoked by uid 550); 5 Oct 2015 15:01:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25949 invoked from network); 5 Oct 2015 15:01:07 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:content-type; s=mail; bh=Ws1hhT
	1U0frxShzAlavP3Qu10Rc=; b=EMqy68X+8EP5Vl5CLQPpMLpZgjI8KJAzbivPRs
	Zz/r13lvl7d92pLxNDNY7NXO5opXCtdQMBSS19k2iJU1+aOJz/UoEfKApwVQisep
	4t5LQzryY0ZJq4Eg/0Pcbirmb1J0MZgBuxlT0VqR/fAG0gdMteR0Z6JIfxxFWuOD
	WoN54X9h0j/FDxHS4k9/GhgEk5UFXce+j3yKcFXXiRswUBDn7VvKhGBIXjBxQWF1
	TGi3wYe0puidUmWHaVRJb28lPOrRMloGu0x1eFB4gqDOBhDhmFK8207FfFKgiNDw
	N9L4fIn/QocIm91k1d1Mg0emwaicU7Vn78fdfnYQTK1eMVqg==
MIME-Version: 1.0
X-Received: by 10.112.14.9 with SMTP id l9mr11956308lbc.91.1444057252966; Mon,
 05 Oct 2015 08:00:52 -0700 (PDT)
Message-ID: <CAHmME9q0Xxcm7VyO-W+VkFLYW5x0Y_BgR8mbgENb1SUEFHnQbQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 5 Oct 2015 17:00:52 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: OpenSMTPD <= 5.7.2 buffer overflow
To: oss-security <oss-security@lists.openwall.com>, cve-assign@mitre.org

Hello,

As reported in [1], OpenSMTPD <= 5.7.2 has a remotely exploitable
buffer overflow. This overflow requires a CVE. A PoC is attached to
[1].

OpenSMTPD 5.7.3 was released with fixes, and the release notes follow
below. There may be other vulnerabilities also fixed by this release.
A full diff follows for analysis and additional CVE assignment, in
case that is necessary.

Thanks,
Jason

[1] http://seclists.org/oss-sec/2015/q4/25


---------- Forwarded message ----------
From: Gilles Chehade <gilles@poolp.org>
Date: Mon, Oct 5, 2015 at 3:30 PM
Subject: Announce: OpenSMTPD 5.7.3 released
To: misc@opensmtpd.org

[snipped]

Issues fixed in this release (since 5.7.2):
===========================================

- fix an mda buffer truncation bug which allows a user to create forward
  files that pass session checks but fail delivery later down the chain,
  within the user mda [0]
- fix remote buffer overflow in unprivileged pony process [1]
- reworked offline enqueue to better protect against hardlink attacks [2]


[0] reported by Holger Jahn
[1] reported by Jason A. Donenfeld
[2] reported by Qualys Security

------ DIFF -----

diff -ru opensmtpd-5.7.2p1/smtpd/enqueue.c opensmtpd-5.7.3p1/smtpd/enqueue.c
--- opensmtpd-5.7.2p1/smtpd/enqueue.c        2015-10-02 01:46:21.000000000 +0200
+++ opensmtpd-5.7.3p1/smtpd/enqueue.c        2015-10-05 13:33:41.000000000 +0200
@@ -795,12 +795,25 @@
         FILE        *fp;
         int         i, fd, ch;
         mode_t         omode;
+        uint64_t        rnd;
+        int         ret;

         if (ckdir(PATH_SPOOL PATH_OFFLINE, 01777, 0, 0, 0) == 0)
                 errx(EX_UNAVAILABLE, "error in offline directory setup");

-        if (! bsnprintf(path, sizeof(path), "%s%s/%lld.XXXXXXXXXX", PATH_SPOOL,
-                PATH_OFFLINE, (long long int) time(NULL)))
+        do {
+                rnd = generate_uid();
+                if (! bsnprintf(path, sizeof(path),
"%s%s/%016"PRIx64, PATH_SPOOL,
+                        PATH_OFFLINE, rnd))
+                        err(EX_UNAVAILABLE, "snprintf");
+                ret = mkdir(path, 0700);
+                if (ret == -1)
+                        if (errno != EEXIST)
+                                err(EX_UNAVAILABLE, "mkdir");
+        } while (ret == -1);
+
+        if (! bsnprintf(path, sizeof(path),
"%s%s/%016"PRIx64"/%lld.XXXXXXXXXX", PATH_SPOOL,
+                PATH_OFFLINE, rnd, (long long int) time(NULL)))
                 err(EX_UNAVAILABLE, "snprintf");

         omode = umask(7077);
diff -ru opensmtpd-5.7.2p1/smtpd/filter.c opensmtpd-5.7.3p1/smtpd/filter.c
--- opensmtpd-5.7.2p1/smtpd/filter.c        2015-10-02 01:46:21.000000000 +0200
+++ opensmtpd-5.7.3p1/smtpd/filter.c        2015-10-05 13:33:41.000000000 +0200
@@ -728,7 +728,6 @@
         struct filter_session        *s = io->arg;
         size_t                         len, n;
         char                        *data;
-        char                        buf[65535];

         log_trace(TRACE_FILTERS, "filter: filter_tx_io(%p, %s)", s,
io_strevent(evt));

@@ -736,10 +735,9 @@
         case IO_DATAIN:
                 data = iobuf_data(&s->ibuf);
                 len = iobuf_len(&s->ibuf);
-                memmove(buf, data, len);
-                buf[len] = 0;
-                log_trace(TRACE_FILTERS, "filter: filter_tx_io:
datain (%zu) for req %016"PRIx64": %s",
-                    len, s->id, buf);
+
+                log_trace(TRACE_FILTERS, "filter: filter_tx_io:
datain (%zu) for req %016"PRIx64"",
+                    len, s->id);

                 n = fwrite(data, 1, len, s->ofile);
                 if (n != len) {
diff -ru opensmtpd-5.7.2p1/smtpd/mda.c opensmtpd-5.7.3p1/smtpd/mda.c
--- opensmtpd-5.7.2p1/smtpd/mda.c        2015-10-02 01:46:21.000000000 +0200
+++ opensmtpd-5.7.3p1/smtpd/mda.c        2015-10-05 13:33:41.000000000 +0200
@@ -286,8 +286,17 @@
                                 deliver.userinfo = *userinfo;
                                 (void)strlcpy(deliver.user, userinfo->username,
                                     sizeof(deliver.user));
-                                (void)strlcpy(deliver.to, e->buffer,
-                                    sizeof(deliver.to));
+                                if (strlcpy(deliver.to, e->buffer,
+                                        sizeof(deliver.to))
+                                    >= sizeof(deliver.to)) {
+                                        mda_queue_tempfail(e->id,
+                                            "mda command too long",
+                                            ESC_OTHER_MAIL_SYSTEM_STATUS);
+                                        mda_log(e, "TempFail",
+                                            "mda command too long");
+                                        mda_done(s);
+                                        return;
+                                }
                                 break;

                         case A_MBOX:
diff -ru opensmtpd-5.7.2p1/smtpd/smtpd.c opensmtpd-5.7.3p1/smtpd/smtpd.c
--- opensmtpd-5.7.2p1/smtpd/smtpd.c        2015-10-02 01:46:21.000000000 +0200
+++ opensmtpd-5.7.3p1/smtpd/smtpd.c        2015-10-05 13:33:41.000000000 +0200
@@ -50,9 +50,11 @@
 #include <errno.h>
 #include <event.h>
 #include <fcntl.h>
+#include <fts.h>
 #include <grp.h> /* needed for setgroups */
 #include <imsg.h>
 #include <inttypes.h>
+#include <libgen.h>
 #ifdef HAVE_LOGIN_CAP_H
 #include <login_cap.h>
 #endif
@@ -440,8 +442,10 @@
                                             "couldn't enqueue offline "
                                             "message %s; smtpctl %s",
                                             child->path, cause);
-                                else
+                                else {
                                         unlink(child->path);
+                                        rmdir(dirname(child->path));
+                                }
                                 free(child->path);
                                 offline_done();
                                 break;
@@ -1075,28 +1079,43 @@
 static void
 offline_scan(int fd, short ev, void *arg)
 {
-        DIR                *dir = arg;
-        struct dirent        *d;
+        char                *path_argv[2];
+        FTS                *fts = arg;
+        FTSENT                *e;
         int                 n = 0;

-        if (dir == NULL) {
+        path_argv[0] = PATH_SPOOL PATH_OFFLINE;
+        path_argv[1] = NULL;
+
+        if (fts == NULL) {
                 log_debug("debug: smtpd: scanning offline queue...");
-                if ((dir = opendir(PATH_SPOOL PATH_OFFLINE)) == NULL)
-                        errx(1, "smtpd: opendir");
+                fts = fts_open(path_argv, FTS_PHYSICAL | FTS_NOCHDIR, NULL);
+                if (fts == NULL) {
+                        log_warn("fts_open: %s", path_argv[0]);
+                        return;
+                }
         }

-        while ((d = readdir(dir)) != NULL) {
-                if (d->d_type != DT_REG)
+        while ((e = fts_read(fts)) != NULL) {
+                if (e->fts_info != FTS_F)
+                        continue;
+
+                /* offline files must be at depth 2 */
+                if (e->fts_level != 2)
+                        continue;
+
+                /* offline file owner must match parent directory owner */
+                if (e->fts_statp->st_uid != e->fts_parent->fts_statp->st_uid)
                         continue;

-                if (offline_add(d->d_name)) {
+                if (offline_add(e->fts_accpath)) {
                         log_warnx("warn: smtpd: "
-                            "could not add offline message %s", d->d_name);
+                            "could not add offline message %s", e->fts_name);
                         continue;
                 }

                 if ((n++) == OFFLINE_READMAX) {
-                        evtimer_set(&offline_ev, offline_scan, dir);
+                        evtimer_set(&offline_ev, offline_scan, fts);
                         offline_timeout.tv_sec = 0;
                         offline_timeout.tv_usec = 100000;
                         evtimer_add(&offline_ev, &offline_timeout);
@@ -1105,24 +1124,19 @@
         }

         log_debug("debug: smtpd: offline scanning done");
-        closedir(dir);
+        fts_close(fts);
 }

 static int
 offline_enqueue(char *name)
 {
-        char                 t[PATH_MAX], *path;
+        char                *path;
         struct stat         sb;
         pid_t                 pid;
         struct child        *child;
         struct passwd        *pw;

-        if (!bsnprintf(t, sizeof t, "%s/%s", PATH_SPOOL PATH_OFFLINE, name)) {
-                log_warnx("warn: smtpd: path name too long");
-                return (-1);
-        }
-
-        if ((path = strdup(t)) == NULL) {
+        if ((path = strdup(name)) == NULL) {
                 log_warn("warn: smtpd: strdup");
                 return (-1);
         }
diff -ru opensmtpd-5.7.2p1/smtpd/smtpd.h opensmtpd-5.7.3p1/smtpd/smtpd.h
--- opensmtpd-5.7.2p1/smtpd/smtpd.h        2015-10-02 01:46:21.000000000 +0200
+++ opensmtpd-5.7.3p1/smtpd/smtpd.h        2015-10-05 13:33:41.000000000 +0200
@@ -67,7 +67,7 @@
 #ifndef SMTPD_NAME
 #define        SMTPD_NAME                 "OpenSMTPD"
 #endif
-#define        SMTPD_VERSION                 "5.7.2p1"
+#define        SMTPD_VERSION                 "5.7.3p1"
 #define SMTPD_SESSION_TIMEOUT         300
 #define SMTPD_BACKLOG                 5

@@ -684,7 +684,7 @@
 };

 struct deliver {
-        char                        to[SMTPD_MAXMAILADDRSIZE];
+        char                        to[EXPAND_BUFFER];
         char                        from[SMTPD_MAXMAILADDRSIZE];
         char                        dest[SMTPD_MAXMAILADDRSIZE];
         char                        user[SMTPD_VUSERNAME_SIZE];
