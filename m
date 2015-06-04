X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1862" "Thursday" "4" "June" "2015" "02:12:54" "-0500" "Eric W. Biederman" "ebiederm@xmission.com" "<874mmo54ll.fsf@x220.int.ebiederm.org>" "44" "Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "6" "2015060407:12:54" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "        ebiederm@xmi Jun  4   44/1862  " thread-indent "\"Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<alpine.LFD.2.11.1506041216340.16237@wniryva>" ("<20150603175834.4FC0D6C004F@smtpvmsrv1.mitre.org>" "<alpine.LFD.2.11.1506041216340.16237@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24472 invoked by uid 550); 4 Jun 2015 07:18:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24454 invoked from network); 4 Jun 2015 07:18:29 -0000
References: <20150603175834.4FC0D6C004F@smtpvmsrv1.mitre.org>
	<alpine.LFD.2.11.1506041216340.16237@wniryva>
In-Reply-To: <alpine.LFD.2.11.1506041216340.16237@wniryva> (P. J. P.'s message
	of "Thu, 4 Jun 2015 12:20:11 +0530 (IST)")
Message-ID: <874mmo54ll.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-AID: U2FsdGVkX18rigp9YNVYolv/y4FUtQJ5NrxJ/HlurxE=
X-SA-Exim-Connect-IP: 67.3.205.90
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;P J P <ppandit@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 412 ms - load_scoreonly_sql: 0.04 (0.0%),
	signal_user_changed: 4.0 (1.0%), b_tie_ro: 3.0 (0.7%), parse: 3.3 (0.8%),
	extract_message_metadata: 15 (3.6%), get_uri_detail_list: 1.68 (0.4%),
	tests_pri_-1000: 6 (1.5%), tests_pri_-950: 1.46 (0.4%), tests_pri_-900: 1.21
	(0.3%), tests_pri_-400: 23 (5.5%), check_bayes: 21 (5.2%), b_tokenize: 6
	(1.4%), b_tok_get_all: 8 (1.9%), b_comp_prob: 2.4 (0.6%), b_tok_touch_all:
	2.8 (0.7%), b_finish: 0.87 (0.2%), tests_pri_0: 344 (83.5%), tests_pri_500: 7
	(1.8%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Wed, 24 Sep 2014 11:00:52 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
Cc: oss security list <oss-security@lists.openwall.com>,  cve-assign@mitre.org
Date: Thu, 04 Jun 2015 02:12:54 -0500
From: ebiederm@xmission.com (Eric W. Biederman)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic
To: P J P <ppandit@redhat.com>

P J P <ppandit@redhat.com> writes:

> +-- On Wed, 3 Jun 2015, cve-assign@mitre.org wrote --+
> | We feel that this is best covered by two CVE IDs. The 
> | cd4a40174b71acd021877341684d8bb1dc8ea4ae issue seems to be about lack of 
> | state identification (i.e., the state is whether the path is mounted or 
> | unmounted),
>
>   Not sure if it'd have security implications which an end user could use or 
> trigger. CC'ing upstream author Eric for any clarificaitons.

The core issue is that a unprivileged user could call umount(MNT_DETACH)
and in the right circumstances gain access to every file on essentially
any filesystem in the mount namespace.

So in a kernel with user namespaces enabled and you are running a
sandbox like docker that has a real root user inside.  That root user
could with a little work remove every ro bind mount on top of proc.
Such as /proc/sys/.

Allowing a user that simply has uid 0 and no caps access to do all kinds
of interesting things.

The bug fix modifies umount(MNT_DETACH) to keeps mounts covered
even after the actual umount.  That changes makes it unsafe for
copy_tree to run on an unmounted mount tree because one of it's
assumptions is violated.  Which assumption I do not remember at this
late hour.  But I think it was something bad enough to cause a crash.
I can not recall all of the details when reading through the code
at this late hour.

Previously copy_tree on an unmounted tree would just return a single
struct mount as all of the connections would have been cleanly removed.

So I believe cd4a40174b71acd021877341684d8bb1dc8ea4ae prevents a
difficult to trigger crash if you have
e0c9c0afd2fc958ffa34b697972721d81df8a56f applied.

e0c9c0afd2fc958ffa34b697972721d81df8a56f mnt: Update detach_mounts to leave mounts connected
is the real bug fix that fixes a fairly scary issue.

I hope that helps.

Eric
