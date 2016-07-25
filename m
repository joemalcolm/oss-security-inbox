X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1393" "Monday" "25" "July" "2016" "15:13:51" "+0300" "Solar Designer" "solar@openwall.com" "<20160725121351.GA746@openwall.com>" "27" "Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" nil nil nil "7" "2016072512:13:51" "[oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" (number mark "U       solar@openwa Jul 25   27/1393  " thread-indent "\"Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package\"\n") "<20160725083930.GA31840@suse.de>" ("<20160719093915.GA29047@suse.de>" "<20160719125119.GA7146@suse.de>" "<871t2pycqx.fsf_-_@x220.int.ebiederm.org>" "<20160720214852.GA23823@nekral.nekral.homelinux.net>" "<20160725080331.GB24232@suse.de>" "<20160725083930.GA31840@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23559 invoked by uid 550); 25 Jul 2016 12:13:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22515 invoked from network); 25 Jul 2016 12:13:55 -0000
Date: Mon, 25 Jul 2016 15:13:51 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: "Eric W. Biederman" <ebiederm@xmission.com>,
	pkg-shadow-devel@lists.alioth.debian.org
Message-ID: <20160725121351.GA746@openwall.com>
References: <20160719093915.GA29047@suse.de> <20160719125119.GA7146@suse.de> <871t2pycqx.fsf_-_@x220.int.ebiederm.org> <20160720214852.GA23823@nekral.nekral.homelinux.net> <20160725080331.GB24232@suse.de> <20160725083930.GA31840@suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160725083930.GA31840@suse.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package

Replying out of context (not related to the specific getlogin() issue):

On Mon, Jul 25, 2016 at 10:39:30AM +0200, Sebastian Krahmer wrote:
> Err, sorry. Shared UID, different name

As a special case, this is common practice for UID 0 (root) accounts of
multiple sysadmins, providing poor man's accountability (due to the
different account names getting in all the usual logs, without having to
check which specific SSH key, etc. was used for a given login session).
We even have a tool to support it for single-user mode logins as well:

http://www.openwall.com/msulogin/

The far more common alternative to it is to use su or sudo from the
multiple sysadmins' non-root accounts.  A problem with it is that if use
of those non-root accounts is not restricted solely to su/sudo from
them, but they are also used to run other programs as non-root, then any
of those other programs may take over the root account (possibly in
multiple steps, such as by substituting shell aliases and waiting for
the sysadmin to run su/sudo next time).  To avoid this, we'd arrive at
the need to have two non-root accounts per sysadmin (and to have su/sudo
available to only one set of those accounts, so as not to expose those
programs' vulnerabilities to the other set of accounts, nor to regular
users of the system, unnecessarily), - or to have per-sysadmin root
accounts.  The latter is simpler.

Alexander
