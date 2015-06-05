X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1566" "Friday" "5" "June" "2015" "12:31:23" "-0500" "Eric W. Biederman" "ebiederm@xmission.com" "<87r3pq2has.fsf@x220.int.ebiederm.org>" "44" "Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "6" "2015060517:31:23" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "        ebiederm@xmi Jun  5   44/1566  " thread-indent "\"Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<alpine.LFD.2.11.1506051728280.15797@wniryva>" ("<20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>" "<alpine.LFD.2.11.1506051728280.15797@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32686 invoked by uid 550); 5 Jun 2015 17:36:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32663 invoked from network); 5 Jun 2015 17:36:41 -0000
References: <20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>
	<alpine.LFD.2.11.1506051728280.15797@wniryva>
In-Reply-To: <alpine.LFD.2.11.1506051728280.15797@wniryva> (P. J. P.'s message
	of "Fri, 5 Jun 2015 17:34:23 +0530 (IST)")
Message-ID: <87r3pq2has.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-AID: U2FsdGVkX1/CraT+9PlnR5mPZldirT5wlAUhrKFkYfU=
X-SA-Exim-Connect-IP: 67.3.205.90
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-DCC: XMission; sa05 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ***;P J P <ppandit@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 351 ms - load_scoreonly_sql: 0.04 (0.0%),
	signal_user_changed: 4.2 (1.2%), b_tie_ro: 2.9 (0.8%), parse: 1.24 (0.4%),
	extract_message_metadata: 19 (5.5%), get_uri_detail_list: 2.7 (0.8%),
	tests_pri_-1000: 5 (1.5%), tests_pri_-950: 0.97 (0.3%), tests_pri_-900: 0.77
	(0.2%), tests_pri_-400: 22 (6.2%), check_bayes: 21 (5.9%), b_tokenize: 3.8
	(1.1%), b_tok_get_all: 8 (2.2%), b_comp_prob: 1.95 (0.6%), b_tok_touch_all:
	4.9 (1.4%), b_finish: 0.81 (0.2%), tests_pri_0: 290 (82.7%), tests_pri_500:
	4.3 (1.2%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Wed, 24 Sep 2014 11:00:52 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
Cc: oss security list <oss-security@lists.openwall.com>,  cve-assign@mitre.org
Date: Fri, 05 Jun 2015 12:31:23 -0500
From: ebiederm@xmission.com (Eric W. Biederman)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic
To: P J P <ppandit@redhat.com>

P J P <ppandit@redhat.com> writes:

> +-- On Thu, 4 Jun 2015, cve-assign@mitre.org wrote --+
> | >> From: ebiederm@xmission.com (Eric W. Biederman)
> | >> 
> | >> The core issue is that a unprivileged user could call umount(MNT_DETACH)
> | >> and in the right circumstances gain access to every file on essentially
> | >> any filesystem in the mount namespace.
> | >> 
> | >> e0c9c0afd2fc958ffa34b697972721d81df8a56f mnt: Update detach_mounts to leave mounts connected
> | >> is the real bug fix that fixes a fairly scary issue.
> | >>
> | >> So I believe cd4a40174b71acd021877341684d8bb1dc8ea4ae prevents a
> | >> difficult to trigger crash if you have
> | >> e0c9c0afd2fc958ffa34b697972721d81df8a56f applied.
> | >>
> |
> | Use CVE-2015-4176 for the issue fixed in
> | e0c9c0afd2fc958ffa34b697972721d81df8a56f . This code change is present
> | in 4.0.2.
> | 
> | Use CVE-2015-4177 for the issue fixed in
> | cd4a40174b71acd021877341684d8bb1dc8ea4ae. This code change is not
> | present in 4.0.2.
>
>   Ie IIUC, existence of CVE-2015-4177 depends on CVE-2015-4176 being fixed, 
> which in turn depends on commit
>
>   -> https://git.kernel.org/linus/ce07d891a0891d3c0d0c2d73d577490486b809e1
>
> being present. (...Eric?)

There are no dependencies between
e0c9c0afd2fc958ffa34b697972721d81df8a56f and
cd4a40174b71acd021877341684d8bb1dc8ea4ae

Neither commit (cec9c... or cd4a4017...) missing is a problem unless
ce07d891a0891d3c0d0c2d73d577490486b809e1 is present.

Commits (cec9c... and cd4a4017...) are harmless on their own.

I hope that clarifies things.

Eric
