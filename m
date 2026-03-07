Received: (qmail 1674 invoked by uid 550); 7 Mar 2026 14:42:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11465 invoked from network); 7 Mar 2026 00:19:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:reply-to:sender:bcc
	:content-type; bh=rpgWXCNXCvT2JPYK+/9p5xW5egCFyd+Ws7EunDL1gu0=; b=E94pxdu0g8O
	PzlJG7K1CRRNbes3ZMoGBkPzEtnD29VSVb+8vyWkC5xb/2WMKZAsL1JveP+8gbcUu38uw6eXIlqnK
	g6mNNR8/sKtr/Bdl6AocvgiTrlC+KhCjsPg4BE4vWSoUoFc5gZ3GO8fyRaDUFRu5byp62Y1as3iyr
	ojiqIy0AwlxkdoqEYhf7dtnxMbSEQ8I4lbZ0ucevcmnFWzilJdNBwZjV1ri9RYGYrZmgnE9m3J3Zu
	ul9ojz83YvDt2USmYMZS7IpsZM7OXaG1I2wKzgHNBjPIlz20AjiI29q1qbOy4C3sieULDZCTc/JZt
	LyxwQXsTiCBjWDhkHGpQJbQ==;
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: oss-security@lists.openwall.com
Cc: solar@openwall.com,
	bug-inetutils@gnu.org,
	ron.benyizhak@safebreach.com,
	simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de
Date: Sat,  7 Mar 2026 02:20:11 +0200
Message-Id: <20260307002011.18141-1-justin.swartz@risingedge.co.za>
In-Reply-To: <20260224064351.GA14779@openwall.com>
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za> <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (2.74877320905e-09)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuXklChU6IML2Li8fHCGtW0dChjzQ3JIZVFF
 8HV60IETFiu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTjbS87DuGYofuM4uEjE72EqBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9Hj659XjhVt1bdQ9l6emukohSnw9YyoGHx/ukuag1WKCaQS9E
 zrNt4RDoLk/DvkzRKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBoCO4qTTFh+YfFhnsJKW+4WQB2ErbcicDbPONrkjWuIPYD7NLT3TvBNLPf1+s3ESe+GGIqRjk
 Mz2jvqlQOSgIbQECRt1aP8YzQYN5P+vibjZPSiBnQw3y7nuz0gOu+r9gMn9tYRAvl3Q8Q6olQq77
 hhmkQ8HDQ9Nin+n0m7/0PXm6Ma0wFdLTf4T3IkAGhpNhRbcHx+cK+Lgc2sFk5QJMXQFG9vqS6fvW
 O8fz5TkzI8JirLCVVM8n4l9KxiV3kvdvLXtHLqj9Wmh1xm49/NMLtk0IeuEoHBr/htq2SuL4gGjc
 Vm549Z1VdnEUpQrvhAAePE/RN2JypaPJ4k7Vi8sxpLkFAc68TjySEORREbDUq5kh0NTR1H9naQeI
 xvtDOwtI+px9EhQAC9MCJ/JI3E6aK44WH/zIDnQT64SFNkli8ariQwUHAL+rG1YY6u9b0QCbTfD6
 cxsdFKDXY5IAQfIM9Yv8AX3Cu6IjLOlnNyEgbgO81OZ/vDEZYYZXH04Pwn7PY3hmSS9GDkL2imdC
 /EWLaMRpgc8b/dr+WxwfNXLl4AyQKN/8jN5//Ysp3XLHNets6S87BBFzrd4LD0LqsfwtCnbRpMw6
 Agze1f399OurHEwFKjFopoBzI+w6TKsrBBDgW/0xkHbot3cFzW7g9SQ6huiKBaUBHCtkuAPfQdpG
 RXyU1Aj/y8yQVpUHEKroa/sdksjYpRedTaA67mOS21JCR3LYM3A6BXfvel8OEFDbU53+Nm6QiFwi
 vG3W4FEjePyAUilrsPEP817RuCGhzpmP4nLtjQrWaXuoYWDRg1yNL/J2IVXBo/3R5VqqcOmERbjE
 Y0U4ulWns12bE/QNfT32DxOszRsTJeuB7KShXm0ceD8YEXl+4zXRnLfgvZwKieh7ECmVE0RHl7Zm
 twbRq7eKTPY4ocfmWv3Fe9Iziczdq+A=
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: Telnetd Vulnerability Report

Greetings all,


On Tue, 24 Feb 2026 07:43:51 +0100, Solar Designer wrote:
> So it looks like in the Linux world non-use of an allow list is specific
> to InetUtils, which means primarily Debian and derived distros.


Based on my interpretation of the whitelisting and path sanitization
concepts discussed in this thread, and of the feedback I have received
since starting this thread, I have submitted a patch set (including a
cover letter [1]) to bug-inetutils which implements:


WHITELISTING

The obsolete blacklist, implemented by scrub_env(), has been removed.
The daemon now clears the inherited environment and enforces a default
whitelist (USER, LOGNAME, TERM, LANG, and LC_*) for all NEW_ENVIRON
values.


PATH SANITIZATION

Expanding on the OWL patch approach, every allowed variable is sanitized.
Whitelisted variables are dropped if their values contain a path separator
('/'), an explicit reference to the current working directory (".") or an
explicit reference to the parent directory ("..").


TELOPT_TTYPE INTERCEPTION

The whitelist validation has been extended, in the second version of the
patch set, to intercept raw terminal type negotiations (aka TELOPT_TTYPE),
to prevent questionable TERM payloads from bypassing the NEW_ENVIRON
filter. 


OPT-IN EXTENSIBILITY

An --accept-env feature which allows an administrator to extend the white-
list with up to 16 additional variables has been included as a separate
patch. This feature is not mandatory if there is no need to augment the
default whitelist, and may be enabled at build-time via the autoconf flag:
--enable-accept-env.


Regards,
Justin Swartz


PS: I've attached the patch set inline below this message.

---

[1] https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00010.html


From 2c6048893f05ef7a34c895b3ea6816710372428b Mon Sep 17 00:00:00 2001
From: Justin Swartz <justin.swartz@risingedge.co.za>
Date: Fri, 6 Mar 2026 19:23:22 +0200
Subject: [PATCH v2 1/2] telnetd: replace environment blacklist with a
 whitelist.

The previous method of scrubbing environment variables, scrub_env(),
and targeted calls to unsetenv() were insufficient to protect against
glibc-based injection attacks, such as the recently reported
CVE-1999-0073 regression.

To fix this issue, the approach suggested by Simon Josefsson in
<https://lists.gnu.org/archive/html/bug-inetutils/2026-02/msg00002.html>
has been taken to replace the reactive blacklist with a fairly strict
default whitelist of the following allowed environment variables:

  USER LOGNAME TERM LANG LC_*

The daemon now clears the inherited environment (preserving PATH
and TERM, respectively, if present) before calling telnetd_setup().

As suggested by Solar Designer, all whitelisted variables are sanitized.
This ensures that the variable will be dropped if its value contains a
path separator, or a reference to the current working directory or its
parent.

* telnetd/telnetd.c (main): Call exorcise_env() after argument parsing.
* telnetd/utility.c (is_env_var_allowed): New function.
(exorcise_env): New function. Snapshot PATH and TERM, then clearenv().
(getterminaltype): Apply final whitelist validation to terminaltype.
(terminaltypeok): Validate terminal type against the whitelist.
* telnetd/state.c (suboption): Filter NEW_ENVIRON during parsing using
is_env_var_allowed() and discard empty values.
* telnetd/pty.c (start_login): Remove the obsolete scrubbing logic.
* telnetd/telnetd.h: Add prototypes for new functions.

---
Changes in v2:
- Added value inspection to the is_env_var_allowed() validation logic.
- Implemented sanitization for whitelisted variables to reject path
  separators, or reference to the current directory or its parent.
- Modified getterminaltype() and terminaltypeok() to prevent
  TELOPT_TTYPE abuse.
---
 telnetd/pty.c     | 32 ----------------
 telnetd/state.c   | 32 ++++++++++++----
 telnetd/telnetd.c |  2 +
 telnetd/telnetd.h |  3 ++
 telnetd/utility.c | 96 +++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 125 insertions(+), 40 deletions(-)

diff --git a/telnetd/pty.c b/telnetd/pty.c
index f3518049..4bf407ad 100644
--- a/telnetd/pty.c
+++ b/telnetd/pty.c
@@ -83,29 +83,6 @@ startslave (char *host, int autologin, char *autoname)
   return master;
 }
 
-/*
- * scrub_env()
- *
- * Remove a few things from the environment that
- * don't need to be there.
- *
- * Security fix included in telnet-95.10.23.NE of David Borman <deb@cray.com>.
- */
-static void
-scrub_env (void)
-{
-  char **cpp, **cpp2;
-
-  for (cpp2 = cpp = environ; *cpp; cpp++)
-    {
-      if (strncmp (*cpp, "LD_", 3)
-	  && strncmp (*cpp, "_RLD_", 5)
-	  && strncmp (*cpp, "LIBPATH=", 8) && strncmp (*cpp, "IFS=", 4))
-	*cpp2++ = *cpp;
-    }
-  *cpp2 = 0;
-}
-
 void
 start_login (char *host, int autologin, char *name)
 {
@@ -117,8 +94,6 @@ start_login (char *host, int autologin, char *name)
   (void) autologin;
   (void) name;
 
-  scrub_env ();
-
   /* Set the environment variable "LINEMODE" to indicate our linemode */
   if (lmodetype == REAL_LINEMODE)
     setenv ("LINEMODE", "real", 1);
@@ -130,13 +105,6 @@ start_login (char *host, int autologin, char *name)
     fatal (net, "can't expand login command line");
   argcv_get (cmd, "", &argc, &argv);
 
-  /* util-linux's "login" introduced an authentication bypass method
-   * via environment variable "CREDENTIALS_DIRECTORY" in version 2.40.
-   * Clear it from the environment before executing "login" to prevent
-   * abuse via Telnet.
-   */
-  unsetenv ("CREDENTIALS_DIRECTORY");
-
   execv (argv[0], argv);
   syslog (LOG_ERR, "%s: %m\n", cmd);
   fatalperror (net, cmd);
diff --git a/telnetd/state.c b/telnetd/state.c
index a9a51e00..2efc65d4 100644
--- a/telnetd/state.c
+++ b/telnetd/state.c
@@ -1495,10 +1495,18 @@ suboption (void)
 	      case NEW_ENV_VAR:
 	      case ENV_USERVAR:
 		*cp = '\0';
-		if (valp)
-		  setenv (varp, valp, 1);
-		else
-		  unsetenv (varp);
+		if (is_env_var_allowed (varp, valp))
+		  {
+		    if (valp)
+		      {
+		        if (valp && *valp != 0)
+		          setenv (varp, valp, 1);
+		      }
+		    else
+		      {
+		          unsetenv (varp);
+		      }
+		  }
 		cp = varp = (char *) subpointer;
 		valp = 0;
 		break;
@@ -1514,10 +1522,18 @@ suboption (void)
 	      }
 	  }
 	*cp = '\0';
-	if (valp)
-	  setenv (varp, valp, 1);
-	else
-	  unsetenv (varp);
+	if (is_env_var_allowed (varp, valp))
+	  {
+	    if (valp)
+	      {
+	        if (valp && *valp != 0)
+	          setenv (varp, valp, 1);
+	      }
+	    else
+	      {
+	        unsetenv (varp);
+	      }
+	  }
 	break;
       }				/* end of case TELOPT_NEW_ENVIRON */
 #if defined AUTHENTICATION
diff --git a/telnetd/telnetd.c b/telnetd/telnetd.c
index 219a19da..affa2c96 100644
--- a/telnetd/telnetd.c
+++ b/telnetd/telnetd.c
@@ -218,6 +218,8 @@ main (int argc, char **argv)
   if (argc != index)
     error (EXIT_FAILURE, 0, "junk arguments in the command line");
 
+  exorcise_env ();
+
   telnetd_setup (0);
   return telnetd_run ();	/* Never returning.  */
 }
diff --git a/telnetd/telnetd.h b/telnetd/telnetd.h
index df31a819..5ee59e6e 100644
--- a/telnetd/telnetd.h
+++ b/telnetd/telnetd.h
@@ -316,6 +316,9 @@ extern void tty_setsofttab (int);
 extern void tty_tspeed (int);
 
 extern char *expand_line (const char *fmt);
+extern void exorcise_env (void);
+extern int is_env_var_allowed (const char *var, const char *val);
+
 
 /*  FIXME */
 extern void _termstat (void);
diff --git a/telnetd/utility.c b/telnetd/utility.c
index 2fe6730c..cabdcdfd 100644
--- a/telnetd/utility.c
+++ b/telnetd/utility.c
@@ -17,6 +17,16 @@
   along with this program.  If not, see `http://www.gnu.org/licenses/'. */
 
 #include <config.h>
+#include <fnmatch.h>
+#include <string.h>
+
+#ifdef HAVE_PATHS_H
+# include <paths.h>
+#else
+# ifndef _PATH_DEFPATH
+#  define _PATH_DEFPATH "/usr/bin:/bin"
+# endif
+#endif
 
 #define TELOPTS
 #define TELCMDS
@@ -65,6 +75,79 @@ static int pcc;
 
 extern int not42;
 
+/* A default whitelist for environment variables. */
+static const char *allowed_env_vars[] = {
+  "USER",
+  "LOGNAME",
+  "TERM",
+  "LANG",
+  "LC_*",
+  NULL
+};
+
+int
+is_env_var_allowed (const char *var, const char *val)
+{
+  const char **p;
+  int allowed = 0;
+
+  for (p = allowed_env_vars; *p; p++)
+    {
+      if (fnmatch (*p, var, FNM_NOESCAPE) == 0)
+        {
+          allowed = 1;
+          break;
+        }
+    }
+
+  if (!allowed)
+    return 0;
+
+  if (val != NULL)
+    {
+      if (strchr (val, '/') != NULL)
+        return 0;
+
+      if (strcmp (val, "..") == 0)
+        return 0;
+
+      if (strcmp (val, ".") == 0)
+        return 0;
+    }
+
+  return 1;
+}
+
+void
+exorcise_env (void)
+{
+  char *path, *term, *value;
+
+  value = getenv ("PATH");
+  path = value ? strdup (value) : NULL;
+
+  value = getenv ("TERM");
+  term = is_env_var_allowed ("TERM", value) ? strdup (value) : NULL;
+
+  clearenv();
+
+  if (path)
+    {
+      setenv ("PATH", path, 1);
+      free (path);
+    }
+  else
+    {
+      setenv ("PATH", _PATH_DEFPATH, 1);
+    }
+
+  if (term)
+    {
+      setenv ("TERM", term, 1);
+      free (term);
+    }
+}
+
 static int
 readstream (int p, char *ibuf, int bufsize)
 {
@@ -863,6 +946,16 @@ getterminaltype (char *uname, size_t len)
 	}
       free (first);
       free (last);
+
+      /* Does TERM appear to be illogical? */
+      if (terminaltype)
+	{
+	   if (!is_env_var_allowed ("TERM", terminaltype))
+	     {
+		free (terminaltype);
+		terminaltype = NULL;
+	     }
+	}
     }
   return retval;
 }
@@ -876,6 +969,9 @@ getterminaltype (char *uname, size_t len)
 int
 terminaltypeok (char *s)
 {
+  if (!is_env_var_allowed ("TERM", s))
+    return 0;
+
 #ifdef HAVE_TGETENT
   char buf[2048];
 
-- 


From f541133cd6ed58cbec37442e9eb174f65f59fb28 Mon Sep 17 00:00:00 2001
From: Justin Swartz <justin.swartz@risingedge.co.za>
Date: Sat, 7 Mar 2026 00:41:49 +0200
Subject: [PATCH v2 2/2] telnetd: add optional --accept-env feature to extend
 the whitelist.

A new command line option, -W or --accept-env, has been added to
allow administrators to extend the default whitelist with additional
environment variable patterns.

This feature is requires opt-in at compile time and must be enabled
using the configure flag: --enable-accept-env

This is useful for systems that require specific variables to be
passed to the login process, which would otherwise be dropped by
the default whitelist. Any variables allowed via this option are
still subject to the global path-traversal sanitization implemented
in the previous patch.

* configure.ac: Add --enable-accept-env argument and define
ENABLE_ACCEPT_ENV macro.
* telnetd/telnetd.h: Add prototype for add_allowed_env_pattern()
guarded by ENABLE_ACCEPT_ENV.
* telnetd/telnetd.c (argp_options): Add the "W"/"accept-env" option
guarded by ENABLE_ACCEPT_ENV.
(parse_opt): Handle the 'W' case by calling add_allowed_env_pattern(),
guarded by ENABLE_ACCEPT_ENV.
* telnetd/utility.c: Declare user_env_vars storage and extend
is_env_var_allowed() to check user patterns first, guarding all
additions with ENABLE_ACCEPT_ENV.
---
 configure.ac      |  8 ++++++++
 telnetd/telnetd.c | 10 ++++++++++
 telnetd/telnetd.h |  4 ++++
 telnetd/utility.c | 42 ++++++++++++++++++++++++++++++++++++++++--
 4 files changed, 62 insertions(+), 2 deletions(-)

diff --git a/configure.ac b/configure.ac
index ac6e6c59..89f73929 100644
--- a/configure.ac
+++ b/configure.ac
@@ -74,6 +74,14 @@ AC_ARG_ENABLE([authentication],
               [test -z "$KERBEROS_VERSION" && AC_MSG_ERROR([--enable-authentication is given, but a Kerberos version is not provided])],
 	      [test -z "$KERBEROS_VERSION" && enable_authentication=no])
 
+AC_ARG_ENABLE([accept-env],
+              AS_HELP_STRING([--enable-accept-env],
+                             [Enable the --accept-env option in telnetd]),
+              [if test "$enableval" = yes; then
+                 AC_DEFINE([ENABLE_ACCEPT_ENV], 1, [Define as 1 to enable the --accept-env option in telnetd])
+              fi],
+              [enable_accept_env=no])
+
 if test -n "$KERBEROS_VERSION"; then
   test -n "$enable_authentication" || enable_authentication=yes
   test -n "$enable_encryption" || enable_encryption=yes
diff --git a/telnetd/telnetd.c b/telnetd/telnetd.c
index affa2c96..acb6ce08 100644
--- a/telnetd/telnetd.c
+++ b/telnetd/telnetd.c
@@ -117,6 +117,10 @@ static struct argp_option argp_options[] = {
    "do not print host information before login has been completed", GRID},
   {"linemode", 'l', "MODE", OPTION_ARG_OPTIONAL,
    "set line mode", GRID},
+#ifdef ENABLE_ACCEPT_ENV
+  {"accept-env", 'W', "PATTERN", 0,
+   "specify an additional environment variable pattern to accept", GRID},
+#endif
   {"no-keepalive", 'n', NULL, 0,
    "disable TCP keep-alive", GRID},
   {"reverse-lookup", 'U', NULL, 0,
@@ -180,6 +184,12 @@ parse_opt (int key, char *arg, struct argp_state *state MAYBE_UNUSED)
       reverse_lookup = 1;
       break;
 
+#ifdef ENABLE_ACCEPT_ENV
+    case 'W':
+      add_allowed_env_pattern (arg);
+      break;
+#endif
+
 #ifdef	AUTHENTICATION
     case 'X':
       auth_disable_name (arg);
diff --git a/telnetd/telnetd.h b/telnetd/telnetd.h
index 5ee59e6e..259b3126 100644
--- a/telnetd/telnetd.h
+++ b/telnetd/telnetd.h
@@ -319,6 +319,10 @@ extern char *expand_line (const char *fmt);
 extern void exorcise_env (void);
 extern int is_env_var_allowed (const char *var, const char *val);
 
+#ifdef ENABLE_ACCEPT_ENV
+extern void add_allowed_env_pattern (const char *pattern);
+#endif
+
 
 /*  FIXME */
 extern void _termstat (void);
diff --git a/telnetd/utility.c b/telnetd/utility.c
index cabdcdfd..c9d38867 100644
--- a/telnetd/utility.c
+++ b/telnetd/utility.c
@@ -75,6 +75,12 @@ static int pcc;
 
 extern int not42;
 
+#ifdef ENABLE_ACCEPT_ENV
+# define MAX_USER_ENV_VARS 16
+static const char *user_env_vars[MAX_USER_ENV_VARS];
+static size_t user_env_var_count = 0;
+#endif
+
 /* A default whitelist for environment variables. */
 static const char *allowed_env_vars[] = {
   "USER",
@@ -90,15 +96,30 @@ is_env_var_allowed (const char *var, const char *val)
 {
   const char **p;
   int allowed = 0;
+#ifdef ENABLE_ACCEPT_ENV
+  size_t i;
 
-  for (p = allowed_env_vars; *p; p++)
+  for (i = 0; i < user_env_var_count; i++)
     {
-      if (fnmatch (*p, var, FNM_NOESCAPE) == 0)
+      if (fnmatch (user_env_vars[i], var, FNM_NOESCAPE) == 0)
         {
           allowed = 1;
           break;
         }
     }
+#endif
+
+  if (!allowed)
+    {
+      for (p = allowed_env_vars; *p; p++)
+        {
+          if (fnmatch (*p, var, FNM_NOESCAPE) == 0)
+            {
+              allowed = 1;
+              break;
+            }
+        }
+    }
 
   if (!allowed)
     return 0;
@@ -118,6 +139,23 @@ is_env_var_allowed (const char *var, const char *val)
   return 1;
 }
 
+#ifdef ENABLE_ACCEPT_ENV
+void
+add_allowed_env_pattern (const char *pattern)
+{
+  if (!pattern || *pattern == 0)
+    return;
+
+  if (user_env_var_count >= MAX_USER_ENV_VARS)
+    {
+      syslog (LOG_NOTICE, "Ignoring --accept-env option: limit reached");
+      return;
+    }
+
+  user_env_vars[user_env_var_count++] = pattern;
+}
+#endif
+
 void
 exorcise_env (void)
 {
-- 

