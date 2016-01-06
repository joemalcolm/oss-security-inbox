X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3857" "Wednesday" "6" "January" "2016" "17:14:37" "+0000" "Serge Hallyn" "serge.hallyn@ubuntu.com" "<20160106171436.GA13013@ubuntumail>" "88" "Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" "^Cc:" nil nil "1" "2016010617:14:37" "[oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        serge.hallyn Jan  6   88/3857  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") "<87vb76dh98.fsf@x220.int.ebiederm.org>" ("<20151231194350.6E71936E244@smtpvbsrv1.mitre.org>" "<87bn8zjxmg.fsf@x220.int.ebiederm.org>" "<20160106030759.GB512@ubuntumail>" "<87vb76dh98.fsf@x220.int.ebiederm.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18183 invoked by uid 550); 6 Jan 2016 17:14:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18165 invoked from network); 6 Jan 2016 17:14:50 -0000
Message-ID: <20160106171436.GA13013@ubuntumail>
References: <20151231194350.6E71936E244@smtpvbsrv1.mitre.org>
 <87bn8zjxmg.fsf@x220.int.ebiederm.org>
 <20160106030759.GB512@ubuntumail>
 <87vb76dh98.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87vb76dh98.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org, john.johansen@canonical.com
Date: Wed, 6 Jan 2016 17:14:37 +0000
From: Serge Hallyn <serge.hallyn@ubuntu.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel: privilege
 escalation in user namespaces
To: oss-security@lists.openwall.com

Quoting Eric W. Biederman (ebiederm@xmission.com):
> Serge Hallyn <serge.hallyn@ubuntu.com> writes:
> 
> > Quoting Eric W. Biederman (ebiederm@xmission.com):
> >> cve-assign@mitre.org writes:
> >> 
> >> > Use CVE-2015-8709 for the issue fixed in the
> >> > https://lkml.org/lkml/2015/12/25/71 post.
> >> >
> >> > (This is not yet available at
> >> > http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/kernel/ptrace.c
> >> > and http://marc.info/?l=linux-kernel&m=145118185526359 might be the
> >> > current end of the earlier discussion.)
> >> >
> >> > This issue has been covered in security advisories from one or more
> >> > Linux distributions, e.g.,
> >> >
> >> >>> http://www.ubuntu.com/usn/usn-2847-1
> >> >>> 
> >> >>> Jann Horn discovered a ptrace issue with user namespaces in the Linux
> >> >>> kernel. The namespace owner could potentially exploit this flaw by ptracing
> >> >>> a root owned process entering the user namespace to elevate its privileges
> >> >>> and potentially gain access outside of the namespace.
> >> >>> (http://bugs.launchpad.net/bugs/1527374)
> >> >
> >> >
> >> > There has been some discussion of whether the finding was a
> >> > vulnerability discovery, e.g.,
> >> >
> >> >>>> Date: Fri, 18 Dec 2015 00:07:19 +0100
> >> >>>> From: Jann Horn <jann@thejh.net>
> >> >>>> 
> >> >>>> I'm not sure whether this is CVE-worthy - the user_namespaces
> >> >>>> manpage says "the process has full privileges for operations
> >> >>>> inside the user namespace, but is unprivileged for operations
> >> >>>> outside the namespace". ptrace()ing a process in the
> >> >>>> namespace can reasonably be considered an "operation inside
> >> >>>> the user namespace" ...
> >> >>>> 
> >> >>>> In my opinion, this patch is somewhere between hardening and
> >> >>>> a security feature, but I wouldn't really call it a vuln fix.
> >> >
> >> >
> >> >>>>> Date: Thu, 17 Dec 2015 23:54:03 +0000
> >> >>>>> From: Serge Hallyn <serge.hallyn@ubuntu.com>
> >> >>>>> 
> >> >>>>>> ptrace()ing a process in the
> >> >>>>>> namespace can reasonably be considered an "operation inside
> >> >>>>>> the user namespace"
> >> >>>>> 
> >> >>>>> Except by creating a file in the host namespace, you were, as
> >> >>>>> root in the container, able to escape your namespace, right?
> >> >
> >> > We feel that, more generally, the usn-2847-1 mention of "and
> >> > potentially gain access outside of the namespace" is a realistic
> >> > concern.
> >> 
> >> My mind is boggling at some of the logic involved here.
> >> 
> >> There is no potentially gaining access outside of the namespace when it
> >> is access to things that were put inside the namespace.
> >> 
> >> The discussion was about how to make it easier for userspace not to do
> >> stupid things, not how to fix a bug in the kernel.
> >> 
> >> The code we have been discussing most definitely does not make it safe
> >> for a arbitrary root owned processes to call setns and enter a user
> >> namespace with a hostile user namespace root.  You have to close file
> >> descriptors, unmap files and do I don't know what else.  Properly
> >> and safely dropping privileges is a challenging problem.
> >> 
> >> Calling bug because it is possible to use a kernel feature wrong feels
> >> completely inappropriate.
> >
> > I could be wrong but think you are misunderstanding the cve.
> >
> > IIRC the situation was:  if you setns(some-userns); setresgid(0,0);
> > setresuid(0,0); then between the setns and the setuids the container
> > can ptrace your task and do things using the host uids.  That's bad.
> 
> It is a pain but it is perfectly possible to:
> 	/* Mess with caps so the next line does not clear CAP_SYS_ADMIN */
> 	setresuid(container_root_uid, container_root_uid);
> 	setns(some_userns);

That works for root, but not for unprivileged user.

Worth doing when possible though.
