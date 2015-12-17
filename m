X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1139" "Thursday" "17" "December" "2015" "23:54:03" "+0000" "Serge Hallyn" "serge.hallyn@ubuntu.com" "<20151217235403.GA8022@ubuntumail>" "25" "Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" "^Cc:" nil nil "12" "2015121723:54:03" "[oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        serge.hallyn Dec 17   25/1139  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") "<20151217230719.GA2943@pc.thejh.net>" ("<567339BE.3090404@canonical.com>" "<20151217230719.GA2943@pc.thejh.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32338 invoked by uid 550); 17 Dec 2015 23:54:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32308 invoked from network); 17 Dec 2015 23:54:16 -0000
Message-ID: <20151217235403.GA8022@ubuntumail>
References: <567339BE.3090404@canonical.com>
 <20151217230719.GA2943@pc.thejh.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151217230719.GA2943@pc.thejh.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: John Johansen <john.johansen@canonical.com>
Date: Thu, 17 Dec 2015 23:54:03 +0000
From: Serge Hallyn <serge.hallyn@ubuntu.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel: privilege
 escalation in user namespaces
To: oss-security@lists.openwall.com

Quoting Jann Horn (jann@thejh.net):
> On Thu, Dec 17, 2015 at 02:39:58PM -0800, John Johansen wrote:
> > I haven't seen CVE request for this one yet so,
> > 
> > Jann Horn reported a privilege escalation in user namespaces to the
> > lkml mailing list
> > 
> > https://lkml.org/lkml/2015/12/12/259
> > 
> > if a root-owned process wants to enter a user
> > namespace for some reason without knowing who owns it and
> > therefore can't change to the namespace owner's uid and gid
> > before entering, as soon as it has entered the namespace,
> > the namespace owner can attach to it via ptrace and thereby
> > gain access to its uid and gid.
> 
> I'm not sure whether this is CVE-worthy - the user_namespaces
> manpage says "the process has full privileges for operations
> inside the user namespace, but is unprivileged for operations
> outside the namespace". ptrace()ing a process in the
> namespace can reasonably be considered an "operation inside
> the user namespace", and therefore the manpage kinda implies

Except by creating a file in the host namespace, you were, as
root in the container, able to escape your namespace, right?
