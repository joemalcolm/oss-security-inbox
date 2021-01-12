X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8131" "Tuesday" "12" "January" "2021" "13:59:59" "+0100" "Marcus Meissner" "meissner@suse.de" "<20210112125959.GI7776@suse.de>" "224" "[oss-security] Security issues in hawk2 and crmsh" nil nil nil "1" "2021011212:59:59" "[oss-security] Security issues in hawk2 and crmsh" (number mark "U       meissner@sus Jan 12  224/8131  " thread-indent "\"[oss-security] Security issues in hawk2 and crmsh\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Security issues in hawk2 and crmsh" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32590 invoked by uid 550); 12 Jan 2021 13:00:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32560 invoked from network); 12 Jan 2021 13:00:11 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 12 Jan 2021 13:59:59 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20210112125959.GI7776@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="JYK4vJDZwFMowpUq"
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Security issues in hawk2 and crmsh

--JYK4vJDZwFMowpUq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi folks,

We have received reports of 2 security issues for hawk and crmsh. These
hawk and crmsh projects refer to distros@ for their disclosure work.

These issues were reported to SUSE by Vincent Berg of Anvil Ventures.

1. Remote unauthenticated shell injection into the Hawk webserver

   Hawk is a High Availability specific webconsole with its own webserver.

   The Hawk webserver versions 2.2 up to now have a shell code injection
   issue via the "hawk_remember_me_id" cookie.

   It can be triggered from 2 places, via /login (with login_from_cookie) and /logout 
   interfaces.

   The cookie value is passed unquoted and unfiltered from ruby to a
   shell command as commandline argument. (Using %[shellcommand] pattern.)

   As hawk is running as "hauser" usually, this allows unauthenticated
   remote attackers to gain access to the "hauser" account.

   Introduced by https://github.com/ClusterLabs/hawk/commit/a939a099c6abdac383fbaede5e8655853222c887#diff-5349b200e8dc7ea82818115aa0aa1522

   We have received CVE-2020-35458 from Mitre for this issue.

   Our team did a fix that does not use an subshell to invoke the command, patch is attached.


2. Local root privilege escalation via hawk and crmsh shell code injection

   crmsh is a commandline shell utility to query or configure a HA cluster.

   The Hawk webconsole contains a "setuid root" helper tool called "hawk_invoke", which
   allows hawk to call some root functionality in "crmsh".

   hawk_invoke allows calls from "hauser" or "vagrant" users only.

   hawk_invoke has a whitelist of "crmsh" commandline options, but does not do any
   filtering or blocking of stdin.

   The "crm history" sub-command is whitelisted by hawk_invoke.

   It opens its own sub-shell with various commands, one of them is "session create SESSION"
   This subcommand will create a directory "SESSION" by calling:

		if utils.pipe_cmd_nosudo("mkdir -p %s" % session_dir) != 0:

   which again does not filter the input.

   This allows local privilege escalation from "hauser" or "vagrant" to root.

   We have received CVE-2020-35459 from Mitre for this issue.

   Currently we will fix only the unsafe mkdir and add ; to the blacklist filtering, a patch is attached.

Due to shortness of time we did not yet do a full (re)audit of crmsh and hawk, we are currently working on that.

The whole hawk_invoke setuid root setup also needs a full redesign.

Ciao, Marcus

--JYK4vJDZwFMowpUq
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="hawk2-CVE-2020-35458.patch"

>From 2522460e50f61333cc8a940a385b2c77a7f4f301 Mon Sep 17 00:00:00 2001
From: dmaiocchi <dmaiocchi@suse.com>
Date: Tue, 15 Dec 2020 17:44:37 +0100
Subject: [PATCH] Improve controllers

---
 hawk/app/controllers/application_controller.rb | 3 ++-
 hawk/app/controllers/sessions_controller.rb    | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/hawk/app/controllers/application_controller.rb b/hawk/app/controllers/application_controller.rb
index fd1f2527..259a2a0d 100644
--- a/hawk/app/controllers/application_controller.rb
+++ b/hawk/app/controllers/application_controller.rb
@@ -185,11 +185,12 @@ class ApplicationController < ActionController::Base
     not_authenticated unless logged_in?
   end
 
+
   def login_from_cookie
     user = cookies['hawk_remember_me_id']
     return if user.nil?
     # read from attrd
-    values = %x[/usr/sbin/attrd_updater -R -Q -A -n "hawk_session_#{user}"].scan(/value=\"(.*)\"/).flatten(1)
+    values = system("/usr/sbin/attrd_updater", "-R", "-Q","-A", "-n", "hawk_session_#{user}").scan(/value=\"(.*)\"/).flatten(1)
     user if values.include? cookies['hawk_remember_me_key']
   end
 
diff --git a/hawk/app/controllers/sessions_controller.rb b/hawk/app/controllers/sessions_controller.rb
index 614fcb1b..f38de314 100644
--- a/hawk/app/controllers/sessions_controller.rb
+++ b/hawk/app/controllers/sessions_controller.rb
@@ -62,7 +62,7 @@ class SessionsController < ApplicationController
     end
     # delete remember-me keys from cluster nodes by overwriting them with a random number
     random_value = SecureRandom.hex(128)
-    system("/usr/sbin/attrd_updater -R -p -n \"hawk_session_#{cookies['hawk_remember_me_id']}\" -U \"#{random_value}\"")
+    system("/usr/sbin/attrd_updater", "-R", "-p", "-n", "hawk_session_#{cookies['hawk_remember_me_id']}", "-U", "#{random_value}")
     cookies.delete :hawk_remember_me_id
     cookies.delete :hawk_remember_me_key
     session[:username] = nil
-- 
2.26.2


--JYK4vJDZwFMowpUq
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="crmsh-CVE-2020-35459.patch"

>From 1a4ed641835c6b6d45b2480c7ff2227e0611fe9d Mon Sep 17 00:00:00 2001
From: liangxin1300 <XLiang@suse.com>
Date: Fri, 18 Dec 2020 13:16:14 +0800
Subject: [PATCH] Fix: history: use Path.mkdir instead of mkdir
 command(bsc#1179999)

And check if the directory name was sane
---
 crmsh/history.py | 10 ++++++----
 crmsh/utils.py   | 14 ++++++++------
 2 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/crmsh/history.py b/crmsh/history.py
index 811bcac5..892105c0 100644
--- a/crmsh/history.py
+++ b/crmsh/history.py
@@ -465,6 +465,8 @@ class Report(object):
             return None
 
         d = self._live_loc()
+        if not utils.is_path_sane(d):
+            return None
         utils.rmdir_r(d)
         tarball = "%s.tar.bz2" % d
         to_option = ""
@@ -473,8 +475,7 @@ class Report(object):
         nodes_option = ""
         if self.setnodes:
             nodes_option = "'-n %s'" % ' '.join(self.setnodes)
-        if utils.pipe_cmd_nosudo("mkdir -p %s" % os.path.dirname(d)) != 0:
-            return None
+        utils.mkdirp(os.path.dirname(d))
         common_info("Retrieving information from cluster nodes, please wait...")
         rc = utils.pipe_cmd_nosudo("%s -Z -Q -f '%s' %s %s %s %s" %
                                    (extcmd,
@@ -981,6 +982,8 @@ class Report(object):
 
     def manage_session(self, subcmd, name):
         session_dir = self.get_session_dir(name)
+        if not utils.is_path_sane(session_dir):
+            return False
         if subcmd == "save" and os.path.exists(session_dir):
             common_err("history session %s exists" % name)
             return False
@@ -988,8 +991,7 @@ class Report(object):
             common_err("history session %s does not exist" % name)
             return False
         if subcmd == "save":
-            if utils.pipe_cmd_nosudo("mkdir -p %s" % session_dir) != 0:
-                return False
+            utils.mkdirp(session_dir)
             if self.source == "live":
                 rc = utils.pipe_cmd_nosudo("tar -C '%s' -c . | tar -C '%s' -x" %
                                            (self._live_loc(), session_dir))
diff --git a/crmsh/utils.py b/crmsh/utils.py
index fbf89151..d5d2154d 100644
--- a/crmsh/utils.py
+++ b/crmsh/utils.py
@@ -16,6 +16,7 @@ import fnmatch
 import gc
 import ipaddress
 import argparse
+from pathlib import Path
 from contextlib import contextmanager, closing
 from . import config
 from . import userdir
@@ -568,14 +569,14 @@ def safe_close_w(f):
 
 
 def is_path_sane(name):
-    if re.search(r"['`#*?$\[\]]", name):
+    if re.search(r"['`#*?$\[\];]", name):
         common_err("%s: bad path" % name)
         return False
     return True
 
 
 def is_filename_sane(name):
-    if re.search(r"['`/#*?$\[\]]", name):
+    if re.search(r"['`/#*?$\[\];]", name):
         common_err("%s: bad filename" % name)
         return False
     return True
@@ -704,10 +705,11 @@ def lock(lockdir):
             rmdir_r(os.path.join(lockdir, _LOCKDIR))
 
 
-def mkdirp(d, mode=0o777):
-    if os.path.isdir(d):
-        return True
-    os.makedirs(d, mode=mode)
+def mkdirp(directory, mode=0o777, parents=True, exist_ok=True):
+    """
+    Same behavior as the POSIX mkdir -p command
+    """
+    Path(directory).mkdir(mode, parents, exist_ok)
 
 
 def pipe_cmd_nosudo(cmd):
-- 
2.21.1


--JYK4vJDZwFMowpUq--
