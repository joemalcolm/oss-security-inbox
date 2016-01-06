X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4580" "Wednesday" "6" "January" "2016" "06:28:19" "-0600" "Eric W. Biederman" "ebiederm@xmission.com" "<87vb76dh98.fsf@x220.int.ebiederm.org>" "109" "Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" "^Cc:" nil nil "1" "2016010612:28:19" "[oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        ebiederm@xmi Jan  6  109/4580  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") "<20160106030759.GB512@ubuntumail>" ("<20151231194350.6E71936E244@smtpvbsrv1.mitre.org>" "<87bn8zjxmg.fsf@x220.int.ebiederm.org>" "<20160106030759.GB512@ubuntumail>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16084 invoked by uid 550); 6 Jan 2016 12:37:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16060 invoked from network); 6 Jan 2016 12:37:44 -0000
References: <20151231194350.6E71936E244@smtpvbsrv1.mitre.org>
	<87bn8zjxmg.fsf@x220.int.ebiederm.org>
	<20160106030759.GB512@ubuntumail>
In-Reply-To: <20160106030759.GB512@ubuntumail> (Serge Hallyn's message of
	"Wed, 6 Jan 2016 03:07:59 +0000")
Message-ID: <87vb76dh98.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-AID: U2FsdGVkX1/yLF7IFpgL/mFLHVy56A1mFKnpSnI1UPs=
X-SA-Exim-Connect-IP: 97.121.81.63
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-DCC: XMission; sa05 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Serge Hallyn <serge.hallyn@ubuntu.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 2392 ms - load_scoreonly_sql: 0.06 (0.0%),
	signal_user_changed: 4.6 (0.2%), b_tie_ro: 3.2 (0.1%), parse: 1.38 (0.1%),
	extract_message_metadata: 32 (1.3%), get_uri_detail_list: 6 (0.2%),
	tests_pri_-1000: 12 (0.5%), tests_pri_-950: 1.18 (0.0%), tests_pri_-900: 0.93
	(0.0%), tests_pri_-400: 35 (1.5%), check_bayes: 34 (1.4%), b_tokenize: 9
	(0.4%), b_tok_get_all: 12 (0.5%), b_comp_prob: 3.1 (0.1%), b_tok_touch_all: 5
	(0.2%), b_finish: 2.1 (0.1%), tests_pri_0: 410 (17.1%), check_dkim_signature:
	0.53 (0.0%), check_dkim_adsp: 3.1 (0.1%), tests_pri_500: 1891 (79.1%),
	poll_dns_idle: 1878 (78.5%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Wed, 24 Sep 2014 11:00:52 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
Cc: oss-security@lists.openwall.com,  cve-assign@mitre.org,  john.johansen@canonical.com
Date: Wed, 06 Jan 2016 06:28:19 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces
To: Serge Hallyn <serge.hallyn@ubuntu.com>

Serge Hallyn <serge.hallyn@ubuntu.com> writes:

> Quoting Eric W. Biederman (ebiederm@xmission.com):
>> cve-assign@mitre.org writes:
>> 
>> > Use CVE-2015-8709 for the issue fixed in the
>> > https://lkml.org/lkml/2015/12/25/71 post.
>> >
>> > (This is not yet available at
>> > http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/kernel/ptrace.c
>> > and http://marc.info/?l=linux-kernel&m=145118185526359 might be the
>> > current end of the earlier discussion.)
>> >
>> > This issue has been covered in security advisories from one or more
>> > Linux distributions, e.g.,
>> >
>> >>> http://www.ubuntu.com/usn/usn-2847-1
>> >>> 
>> >>> Jann Horn discovered a ptrace issue with user namespaces in the Linux
>> >>> kernel. The namespace owner could potentially exploit this flaw by ptracing
>> >>> a root owned process entering the user namespace to elevate its privileges
>> >>> and potentially gain access outside of the namespace.
>> >>> (http://bugs.launchpad.net/bugs/1527374)
>> >
>> >
>> > There has been some discussion of whether the finding was a
>> > vulnerability discovery, e.g.,
>> >
>> >>>> Date: Fri, 18 Dec 2015 00:07:19 +0100
>> >>>> From: Jann Horn <jann@thejh.net>
>> >>>> 
>> >>>> I'm not sure whether this is CVE-worthy - the user_namespaces
>> >>>> manpage says "the process has full privileges for operations
>> >>>> inside the user namespace, but is unprivileged for operations
>> >>>> outside the namespace". ptrace()ing a process in the
>> >>>> namespace can reasonably be considered an "operation inside
>> >>>> the user namespace" ...
>> >>>> 
>> >>>> In my opinion, this patch is somewhere between hardening and
>> >>>> a security feature, but I wouldn't really call it a vuln fix.
>> >
>> >
>> >>>>> Date: Thu, 17 Dec 2015 23:54:03 +0000
>> >>>>> From: Serge Hallyn <serge.hallyn@ubuntu.com>
>> >>>>> 
>> >>>>>> ptrace()ing a process in the
>> >>>>>> namespace can reasonably be considered an "operation inside
>> >>>>>> the user namespace"
>> >>>>> 
>> >>>>> Except by creating a file in the host namespace, you were, as
>> >>>>> root in the container, able to escape your namespace, right?
>> >
>> > We feel that, more generally, the usn-2847-1 mention of "and
>> > potentially gain access outside of the namespace" is a realistic
>> > concern.
>> 
>> My mind is boggling at some of the logic involved here.
>> 
>> There is no potentially gaining access outside of the namespace when it
>> is access to things that were put inside the namespace.
>> 
>> The discussion was about how to make it easier for userspace not to do
>> stupid things, not how to fix a bug in the kernel.
>> 
>> The code we have been discussing most definitely does not make it safe
>> for a arbitrary root owned processes to call setns and enter a user
>> namespace with a hostile user namespace root.  You have to close file
>> descriptors, unmap files and do I don't know what else.  Properly
>> and safely dropping privileges is a challenging problem.
>> 
>> Calling bug because it is possible to use a kernel feature wrong feels
>> completely inappropriate.
>
> I could be wrong but think you are misunderstanding the cve.
>
> IIRC the situation was:  if you setns(some-userns); setresgid(0,0);
> setresuid(0,0); then between the setns and the setuids the container
> can ptrace your task and do things using the host uids.  That's bad.

It is a pain but it is perfectly possible to:
	/* Mess with caps so the next line does not clear CAP_SYS_ADMIN */
	setresuid(container_root_uid, container_root_uid);
	setns(some_userns);

And it all works without issue.

> You can't stop the container from messing with you in general (by
> ptracing later - though as you say we could set nodump, but I don't
> think people would want htat), but it shouldn't be able to mess with the
> host root uid.

It is a very reasonable extension and it makes it much harder to get it
all wrong.  But that is very different from saying the kernel today is
broken.

It really is the responsibility of the party that calls
setns(some_userns) to make certain their process does not have anything
you don't want the root user in the container to get his hands on.  That
goes way beyond the root uid.

In the original conversation about all of this the issue that was raised that
we might not know which process the user namespace belongs to and so
might not be able to call setresuid(container_root_uid, container_root_uid) 
ahead of time because of lack of knowledge.

I am concerned that the responsibility to not be stupid when you call
setns(some_userns) is being lost.

Eric
