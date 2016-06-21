X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2453" "Tuesday" "21" "June" "2016" "13:41:22" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20160621134122.4118704e@redhat.com>" "70" "Re: [oss-security] SELinux troubles" nil nil nil "6" "2016062111:41:22" "[oss-security] SELinux troubles" (number mark "U       thoger@redha Jun 21   70/2453  " thread-indent "\"Re: [oss-security] SELinux troubles\"\n") "<20160621094501.GA21668@suse.de>" ("<20160621094501.GA21668@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13628 invoked by uid 550); 21 Jun 2016 11:41:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13604 invoked from network); 21 Jun 2016 11:41:38 -0000
Date: Tue, 21 Jun 2016 13:41:22 +0200
From: Tomas Hoger <thoger@redhat.com>
To: Sebastian Krahmer <krahmer@suse.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20160621134122.4118704e@redhat.com>
In-Reply-To: <20160621094501.GA21668@suse.de>
References: <20160621094501.GA21668@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 21 Jun 2016 11:41:26 +0000 (UTC)
Subject: Re: [oss-security] SELinux troubles

On Tue, 21 Jun 2016 11:45:01 +0200 Sebastian Krahmer wrote:

> 1)
> 
> This bug is mitigated since setroubleshoot that is found on RHEL 7.2,
> by running it as a dedicated user (untested).
> 
> Shell injection issue in setroubleshoot/audit_data.py:
> 
> def _set_tpath(self):
> [...]
> 	if path.startswith("/") == False and inodestr:
> 		import subprocess
> 		command = "locate -b '\%s'" % path
> 		try:
> 	    	    output = subprocess.check_output(command,
> 		 	                             stderr=subprocess.STDOUT,
>                                                      shell=True)
> [...]
> 
> 
> taking 'path' off AVC denial messages and constructing a command thats
> passed to "sh -c".  o.O
> Note that AVC denial messages appear outside of containers, so
> a setroubleshoot is usually run on the host, processing AVC messages
> from containers. This allows for an easy breakout.
> 
> 
> 2)
> 
> I did not test this, but even though the run_fix() function in
> SetroubleshootFixit.py is protected by auth_admin polkit rules, it looks
> like theres good chance to pass XML documents via setroubleshoots
> RPC/DBUS API that contains evil local_id or analysis_id fields and trick
> real admins to "fix" AVC denials that inject code:
> 
> [...]
>     def run_fix(self, local_id, analysis_id):
>          import commands
>          command = "sealert -f %s -P %s" % ( local_id, analysis_id)
>          return commands.getoutput(command)
> [...]
> 
> This is not mitigated by the run-as-user, since SetroubleshootFixit.py
> still runs as root (and probably needs to).

CVE-2016-4989 was assigned to the issues above.


There are additional similar problems in setroubleshoot and
setroubleshoot-plugins:

- CVE-2016-4445, setroubleshoot, affecting 'sealert --fix'.  Problem was
  already fixed in version 3.2.23.

  https://github.com/fedora-selinux/setroubleshoot/commit/2d12677629ca319310f6263688bb1b7f676c01b7

- CVE-2016-4444, setroubleshoot-plugins, allow_execmod plugin.  Also
  previously fixed in versoin 3.2.23.

  https://github.com/fedora-selinux/setroubleshoot/commit/5cd60033ea7f5bdf8c19c27b23ea2d773d9b09f5

- CVE-2016-4446, setroubleshoot-plugins, allow_execstack plugin.
  Similar to the previous one, only using commands.getoutput instead of
  commands.getstatusoutput.

  https://github.com/fedora-selinux/setroubleshoot/blob/setroubleshoot-plugins-3.3.4/plugins/src/allow_execstack.py#L29

-- 
Tomas Hoger / Red Hat Product Security
