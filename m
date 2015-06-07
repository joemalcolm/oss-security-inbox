X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1090" "Sunday" "7" "June" "2015" "12:25:31" "-0500" "Eric W. Biederman" "ebiederm@xmission.com" "<87pp57v3as.fsf@x220.int.ebiederm.org>" "34" "Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "6" "2015060717:25:31" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "        ebiederm@xmi Jun  7   34/1090  " thread-indent "\"Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<alpine.LFD.2.11.1506072243170.5813@wniryva>" ("<20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>" "<alpine.LFD.2.11.1506051728280.15797@wniryva>" "<87r3pq2has.fsf@x220.int.ebiederm.org>" "<alpine.LFD.2.11.1506072243170.5813@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32370 invoked by uid 550); 7 Jun 2015 17:30:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32344 invoked from network); 7 Jun 2015 17:30:50 -0000
References: <20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>
	<alpine.LFD.2.11.1506051728280.15797@wniryva>
	<87r3pq2has.fsf@x220.int.ebiederm.org>
	<alpine.LFD.2.11.1506072243170.5813@wniryva>
In-Reply-To: <alpine.LFD.2.11.1506072243170.5813@wniryva> (P. J. P.'s message
	of "Sun, 7 Jun 2015 22:51:38 +0530 (IST)")
Message-ID: <87pp57v3as.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-AID: U2FsdGVkX1+q5l6hLomuznD1o7MzdLxli/tblU7colI=
X-SA-Exim-Connect-IP: 67.3.205.90
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-DCC: XMission; sa04 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;P J P <ppandit@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 235 ms - load_scoreonly_sql: 0.06 (0.0%),
	signal_user_changed: 4.7 (2.0%), b_tie_ro: 3.3 (1.4%), parse: 1.20 (0.5%),
	extract_message_metadata: 14 (5.9%), get_uri_detail_list: 1.33 (0.6%),
	tests_pri_-1000: 5 (2.2%), tests_pri_-950: 1.14 (0.5%), tests_pri_-900: 0.93
	(0.4%), tests_pri_-400: 16 (6.6%), check_bayes: 15 (6.2%), b_tokenize: 4.0
	(1.7%), b_tok_get_all: 4.4 (1.9%), b_comp_prob: 1.72 (0.7%), b_tok_touch_all:
	2.5 (1.1%), b_finish: 0.70 (0.3%), tests_pri_0: 183 (77.8%), tests_pri_500: 6
	(2.7%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Wed, 24 Sep 2014 11:00:52 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
Cc: oss security list <oss-security@lists.openwall.com>,  cve-assign@mitre.org
Date: Sun, 07 Jun 2015 12:25:31 -0500
From: ebiederm@xmission.com (Eric W. Biederman)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic
To: P J P <ppandit@redhat.com>

P J P <ppandit@redhat.com> writes:

>   Hello Eric,
>
> +-- On Fri, 5 Jun 2015, Eric W. Biederman wrote --+
> | There are no dependencies between
> | e0c9c0afd2fc958ffa34b697972721d81df8a56f and
> | cd4a40174b71acd021877341684d8bb1dc8ea4ae
>
>   Sorry if I misunderstood; I was referring to
>
> || >> From: ebiederm@xmission.com (Eric W. Biederman)
> || >> So I believe cd4a40174b71acd021877341684d8bb1dc8ea4ae prevents a
> || >> difficult to trigger crash if you have
> || >> e0c9c0afd2fc958ffa34b697972721d81df8a56f applied.
> |
>
>   And also that, commit 'e0c9c0afd2' improvises upon 'ce07d891a089'; So unless 
> 'ce07d891a089' is present, 'e0c9c0afd2' would not apply cleanly.
>
> | Neither commit (cec9c... or cd4a4017...) missing is a problem unless
> | ce07d891a0891d3c0d0c2d73d577490486b809e1 is present.
> | 
> | Commits (cec9c... and cd4a4017...) are harmless on their own.
> | 
> | I hope that clarifies things.
>
>   Did you mean commit 'e0c9c0afd2'? (couldn't find commit 'cec9c...')

Yes.  I was referrig to one of the two commits you called out. Typos are
wonderful.

Eric

