Received: (qmail 20050 invoked by uid 550); 8 Mar 2026 07:35:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11639 invoked from network); 8 Mar 2026 07:33:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:Bcc:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:reply-to:sender:
	content-type; bh=Sw0phm/EnLpCxJv2gCLhOUrPDtKBLXrDiVGoNij2pwE=; b=O0IoowhWvGjd
	lCg8zqlul33CoREfyHuMzJlkq4S9xwU2vMRVMbq7Bxm6uqeVuT52DZ97Tn0B9he3XXK+KQz/NFMdG
	aiJSXool2J7NaTlzXQ4vkpN7s/IyGyP0L0VLho0mTYNrsJezyryxzligyJN9FPzktBpiKeRWTQMST
	x58V/V2laC6npwzjy44/Bcb5z9N5KnVz1qqqnllclEPpZ7aG5XxJc7z+J9qaGvM/KHBlrGgo6cqGp
	xPRaXHFqSzp19a3pkxho2EbEA1XzdW0aE9xjaPqdqdSpQm+QwdQqR8al5xQaBVVxMYBey5eE2BbMb
	EdqLGwcIRMmzLq25nmzHbg==;
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: oss-security@lists.openwall.com
Cc: bug-inetutils@gnu.org,
	collin.funk1@gmail.com,
	simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de,
	ron.benyizhak@safebreach.com,
	solar@openwall.com
Date: Sun,  8 Mar 2026 09:34:22 +0200
Message-Id: <20260308073422.20218-1-justin.swartz@risingedge.co.za>
In-Reply-To: <fbfd407edbca76995b86ec45e9cf935d@risingedge.co.za>
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za> <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com> <20260307002011.18141-1-justin.swartz@risingedge.co.za> <20260308025745.GA24992@openwall.com> <fbfd407edbca76995b86ec45e9cf935d@risingedge.co.za>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (1.33938426722e-06)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuUyeHSAAVD8BtJqk3kv9iESpSwlfuBWfghg
 taciVfT/RSu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTjfSAOt520MsWpjtPr+RHedBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9Hj659XjhVt1bdQ9l6emukohSnw9YyoGHx/ukuag1WKCaQS9E
 zrNt4RDoLk/DvkzRKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBoCO4qTTFh+YfFhnsJKW+4WQB2ErbcicDbPONrkjWuIPYD7NLT3TvBNLPf1+s3ESe+GGIqRjk
 Mz2jvqlQOSgIbQECRt1aP8YzQYN5P+vibjZPSiBnQw3y7nuz0gOu+r9gjZDdeig9BJwj0llBjoDE
 KxCPKcLQtQ6y3jM9mskhF8RRWvWA8eksJH5frkvRY2AdUIwfdlBohvGaPXcHbK3TSr0LROulnNGH
 Yf44RulgbTgijSlklrk5DOjPe3kjnMEpMLNJJZ7bFL1tuRsTxFVf7ChPIpozLY04df6Vc4UxVyW4
 R+6UHnhrqKDB7hVymaERb+nQY56YBHczI9VrSkBcQO01+npnLCtlD2PsTQFI7+2Rwh/zbysUocUY
 70LVf6DXKjPTc9Bi5t6eH92KZgAaeKHYbE04rhZBVwX5kuEhEEhv9/dCEtFs6CKy+LlVT1402WH7
 25+y2Pi6XSn8nYV1KkECi53KQdYoAYFDTkiO90JDv3Qru3mOOsfu36pjw6IKrSOIPpeqwlm2NDGX
 IJ2x7C1GDHQzkP4E4DmzW72VoTq3b4F73qe2Yqslfe5P59SI/vUcMYyFSM475FwMtdNeeN/STCxH
 8DQLRZxuVhe+952JTxOKPmvS9FNQaEBx3Mzmo+aqL7i/jEFRlxxHHR2edU8lBysIgCGqonuzqB2w
 MqcL/PyVSe2/DDFq5n7HBuKWuG2VxN5Tk0oIOEgQvkpB2mDIWF9SLSSvBfyH78z8Pl2bD3xQ+XXk
 pcn8M/rMgPEzjA6ktpRxAMHlW2L66vScAWRVdBHvMOSsCIK1u2y67o71H/aAwarQpYDOYx/6JtUO
 88QFH8MDIR4rYBrcD0FJiQH1DNMnmiccMfxXP8hqHV3idsf9htp8mcWuKRLRaGd4RgFnzGg9rgSS
 O4p0kGP/3gydw9VcjiaDXW5/43LFbxilGU+e1pFQ+nUu7tVfyfBb
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: Telnetd Vulnerability Report

On Sun, 08 Mar 2026 06:05:45 +0200, Justin Swartz wrote:
> I'll submit a third version of this patch set later.

Based on the feedback provided, the third version of the patch set [1]:

- Leaves the inherited environment intact.
- Implements a default whitelist and whitelisted variable value
  sanitization.
- Places the strings of the allowed environment variables array into
  the .rodata section.
- Eliminates duplicated setenv/unsetenv logic in "telnetd/state.c".
- Discards the --accept-env feature [3], as an inetutils maintainer [2]
  is working on an implementation to extend the allowed environment
  using Gnulib instead.

Find the patch included below.

Regards,
Justin

---

[1] https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00020.html
[2] https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00017.html 
[3] https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00018.html 


From 1b9dc91cfd3c730317aa3bb6ec58ff1beb5dcc15 Mon Sep 17 00:00:00 2001
From: Justin Swartz <justin.swartz@risingedge.co.za>
Date: Sun, 8 Mar 2026 06:55:23 +0200
Subject: [PATCH v3 1/1] telnetd: replace environment blacklist with a
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

And as suggested by Solar Designer, all whitelisted variables will be
subject to sanitization, and the inherited environment will be left
intact.

Any negotiated variable will be dropped if its value contains a path
separator ('/'), or an explicit reference to the current working
directory (".") or its parent ("..").

* telnetd/utility.c (allowed_env_vars): New whitelist array.
(is_env_var_allowed): New function.
(set_env_var_if_allowed): New helper function.
(getterminaltype): Apply final whitelist validation to terminaltype.
(terminaltypeok): Validate terminal type against the whitelist.
* telnetd/state.c (suboption): Filter NEW_ENVIRON during parsing using
set_env_var_if_allowed().
* telnetd/pty.c (start_login): Remove the obsolete scrubbing logic.
* telnetd/telnetd.h: Add prototypes for new functions.
---
 telnetd/pty.c     | 32 ------------------
 telnetd/state.c   | 10 ++----
 telnetd/telnetd.h |  3 ++
 telnetd/utility.c | 83 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 88 insertions(+), 40 deletions(-)

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
index a9a51e00..ab6bfb11 100644
--- a/telnetd/state.c
+++ b/telnetd/state.c
@@ -1495,10 +1495,7 @@ suboption (void)
 	      case NEW_ENV_VAR:
 	      case ENV_USERVAR:
 		*cp = '\0';
-		if (valp)
-		  setenv (varp, valp, 1);
-		else
-		  unsetenv (varp);
+		set_env_var_if_allowed (varp, valp);
 		cp = varp = (char *) subpointer;
 		valp = 0;
 		break;
@@ -1514,10 +1511,7 @@ suboption (void)
 	      }
 	  }
 	*cp = '\0';
-	if (valp)
-	  setenv (varp, valp, 1);
-	else
-	  unsetenv (varp);
+	set_env_var_if_allowed (varp, valp);
 	break;
       }				/* end of case TELOPT_NEW_ENVIRON */
 #if defined AUTHENTICATION
diff --git a/telnetd/telnetd.h b/telnetd/telnetd.h
index df31a819..8b14d9dd 100644
--- a/telnetd/telnetd.h
+++ b/telnetd/telnetd.h
@@ -316,6 +316,9 @@ extern void tty_setsofttab (int);
 extern void tty_tspeed (int);
 
 extern char *expand_line (const char *fmt);
+extern int is_env_var_allowed (const char *var, const char *val);
+extern void set_env_var_if_allowed (const char *var, const char *val);
+
 
 /*  FIXME */
 extern void _termstat (void);
diff --git a/telnetd/utility.c b/telnetd/utility.c
index 2fe6730c..085065ea 100644
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
@@ -65,6 +75,66 @@ static int pcc;
 
 extern int not42;
 
+/* A default whitelist for environment variables. */
+static const char * const allowed_env_vars[] = {
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
+  const char * const *p;
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
+set_env_var_if_allowed (const char *var, const char *val)
+{
+  if (is_env_var_allowed (var, val))
+    {
+      if (val)
+        {
+          if (*val != 0)
+            setenv (var, val, 1);
+        }
+      else
+        {
+          unsetenv (var);
+        }
+    }
+}
+
 static int
 readstream (int p, char *ibuf, int bufsize)
 {
@@ -863,6 +933,16 @@ getterminaltype (char *uname, size_t len)
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
@@ -876,6 +956,9 @@ getterminaltype (char *uname, size_t len)
 int
 terminaltypeok (char *s)
 {
+  if (!is_env_var_allowed ("TERM", s))
+    return 0;
+
 #ifdef HAVE_TGETENT
   char buf[2048];
 
-- 

