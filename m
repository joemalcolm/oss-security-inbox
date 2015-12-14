X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1400" "Monday" "14" "December" "2015" "16:42:06" "-0500" "Jan Schaumann" "jschauma@netmeister.org" "<20151214214206.GB18118@netmeister.org>" "33" "Re: [oss-security] Re: Chef: knife bootstrap leaks validator privkey into system logs" nil nil nil "12" "2015121421:42:06" "[oss-security] Re: Chef: knife bootstrap leaks validator privkey into system logs" (number mark "U       jschauma@net Dec 14   33/1400  " thread-indent "\"Re: [oss-security] Re: Chef: knife bootstrap leaks validator privkey into system logs\"\n") "<20151214213422.6D87D42E41C@smtpvbsrv1.mitre.org>" ("<20151214190402.GZ18118@netmeister.org>" "<20151214213422.6D87D42E41C@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23920 invoked by uid 550); 14 Dec 2015 21:43:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23648 invoked from network); 14 Dec 2015 21:42:17 -0000
Date: Mon, 14 Dec 2015 16:42:06 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20151214214206.GB18118@netmeister.org>
References: <20151214190402.GZ18118@netmeister.org>
 <20151214213422.6D87D42E41C@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151214213422.6D87D42E41C@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Re: Chef: knife bootstrap leaks validator privkey
 into system logs

cve-assign@mitre.org wrote:
 
> In general, an issue with unlogged private data on a command line
> sometimes does not have a CVE ID, if the command line only occurs
> during initial installation of a machine, before any unprivileged user
> accounts would have access. (We don't know enough about the use cases
> to determine whether that sometimes applies to chef.)

It's possible that Chef is installed/bootstrapped on a system that is
already configured/set-up and used by other users.

User management may be done entirely outside of Chef, so that there is
no universal guarantee that Chef would only ever be installed when no
other unprivileged users would have access to the system (even if that
is likely to be the majority of the use cases).

> > https://github.com/chef/chef/issues/3872
> > 
> > creates private files via here-doc cat(1)ing followed by running
> > chmod(1) and setting the permissions.
> > 
> > This is a race condition if the default umask creates files world- or
> > group-readable (as is almost universally the case).
> 
> 3872 was linked from 3871. If there is a race-condition vulnerability
> disclosed in 3872, we may be able to assign a CVE ID. (We would not
> want a CVE if the issue can occur only before unprivileged user
> accounts would have access.)

As above: no such guarantee, even though most people may well bootstrap
Chef only in such environments.

-Jan
