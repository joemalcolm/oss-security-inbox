X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2784" "Tuesday" "5" "January" "2016" "19:38:15" "-0600" "Eric W. Biederman" "ebiederm@xmission.com" "<87bn8zjxmg.fsf@x220.int.ebiederm.org>" "72" "Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" "^Cc:" nil nil "1" "2016010601:38:15" "[oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        ebiederm@xmi Jan  5   72/2784  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") "<20151231194350.6E71936E244@smtpvbsrv1.mitre.org>" ("<20151231194350.6E71936E244@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1511 invoked by uid 550); 6 Jan 2016 01:47:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1493 invoked from network); 6 Jan 2016 01:47:17 -0000
References: <20151231194350.6E71936E244@smtpvbsrv1.mitre.org>
In-Reply-To: <20151231194350.6E71936E244@smtpvbsrv1.mitre.org>
	(cve-assign@mitre.org's message of "Thu, 31 Dec 2015 14:43:50 -0500
	(EST)")
Message-ID: <87bn8zjxmg.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-AID: U2FsdGVkX193eUzdnTgJr9eK+1bMH+PCSPDj3EivYR8=
X-SA-Exim-Connect-IP: 97.121.81.63
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-DCC: XMission; sa04 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;cve-assign@mitre.org
X-Spam-Relay-Country: 
X-Spam-Timing: total 1387 ms - load_scoreonly_sql: 0.05 (0.0%),
	signal_user_changed: 4.6 (0.3%), b_tie_ro: 3.3 (0.2%), parse: 1.23 (0.1%),
	extract_message_metadata: 29 (2.1%), get_uri_detail_list: 5 (0.4%),
	tests_pri_-1000: 10 (0.7%), tests_pri_-950: 1.13 (0.1%), tests_pri_-900: 0.93
	(0.1%), tests_pri_-400: 24 (1.7%), check_bayes: 23 (1.6%), b_tokenize: 7
	(0.5%), b_tok_get_all: 8 (0.6%), b_comp_prob: 2.4 (0.2%), b_tok_touch_all:
	3.4 (0.2%), b_finish: 0.69 (0.0%), tests_pri_0: 402 (29.0%),
	check_dkim_signature: 0.49 (0.0%), check_dkim_adsp: 4.1 (0.3%),
	tests_pri_500: 910 (65.6%), poll_dns_idle: 891 (64.2%), rewrite_mail: 0.00
	(0.0%)
X-SA-Exim-Version: 4.2.1 (built Wed, 24 Sep 2014 11:00:52 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
Cc: john.johansen@canonical.com,  oss-security@lists.openwall.com
Date: Tue, 05 Jan 2016 19:38:15 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces
To: cve-assign@mitre.org

cve-assign@mitre.org writes:

> Use CVE-2015-8709 for the issue fixed in the
> https://lkml.org/lkml/2015/12/25/71 post.
>
> (This is not yet available at
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/kernel/ptrace.c
> and http://marc.info/?l=linux-kernel&m=145118185526359 might be the
> current end of the earlier discussion.)
>
> This issue has been covered in security advisories from one or more
> Linux distributions, e.g.,
>
>>> http://www.ubuntu.com/usn/usn-2847-1
>>> 
>>> Jann Horn discovered a ptrace issue with user namespaces in the Linux
>>> kernel. The namespace owner could potentially exploit this flaw by ptracing
>>> a root owned process entering the user namespace to elevate its privileges
>>> and potentially gain access outside of the namespace.
>>> (http://bugs.launchpad.net/bugs/1527374)
>
>
> There has been some discussion of whether the finding was a
> vulnerability discovery, e.g.,
>
>>>> Date: Fri, 18 Dec 2015 00:07:19 +0100
>>>> From: Jann Horn <jann@thejh.net>
>>>> 
>>>> I'm not sure whether this is CVE-worthy - the user_namespaces
>>>> manpage says "the process has full privileges for operations
>>>> inside the user namespace, but is unprivileged for operations
>>>> outside the namespace". ptrace()ing a process in the
>>>> namespace can reasonably be considered an "operation inside
>>>> the user namespace" ...
>>>> 
>>>> In my opinion, this patch is somewhere between hardening and
>>>> a security feature, but I wouldn't really call it a vuln fix.
>
>
>>>>> Date: Thu, 17 Dec 2015 23:54:03 +0000
>>>>> From: Serge Hallyn <serge.hallyn@ubuntu.com>
>>>>> 
>>>>>> ptrace()ing a process in the
>>>>>> namespace can reasonably be considered an "operation inside
>>>>>> the user namespace"
>>>>> 
>>>>> Except by creating a file in the host namespace, you were, as
>>>>> root in the container, able to escape your namespace, right?
>
> We feel that, more generally, the usn-2847-1 mention of "and
> potentially gain access outside of the namespace" is a realistic
> concern.

My mind is boggling at some of the logic involved here.

There is no potentially gaining access outside of the namespace when it
is access to things that were put inside the namespace.

The discussion was about how to make it easier for userspace not to do
stupid things, not how to fix a bug in the kernel.

The code we have been discussing most definitely does not make it safe
for a arbitrary root owned processes to call setns and enter a user
namespace with a hostile user namespace root.  You have to close file
descriptors, unmap files and do I don't know what else.  Properly
and safely dropping privileges is a challenging problem.

Calling bug because it is possible to use a kernel feature wrong feels
completely inappropriate.

Eric

