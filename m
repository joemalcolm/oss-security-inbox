X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["945" "Tuesday" "12" "June" "2018" "13:38:36" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>" "29" "Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" "^Date:" nil nil "6" "2018061211:38:36" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "        jwilk@jwilk. Jun 12   29/945   " thread-indent "\"Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") "<20180612095613.GC1073@sivokote.iziade.m$>" ("<20180612095613.GC1073@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13654 invoked by uid 550); 12 Jun 2018 11:38:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13627 invoked from network); 12 Jun 2018 11:38:51 -0000
Message-ID: <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180612095613.GC1073@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20180612095613.GC1073@sivokote.iziade.m$>
User-Agent: NeoMutt/20180512
X-Ovh-Tracer-Id: 12735898272056596390
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedthedrkeekgddvlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Tue, 12 Jun 2018 13:38:36 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered
 dangerous?
To: oss-security@lists.openwall.com

* Georgi Guninski <guninski@guninski.com>, 2018-06-12, 13:17:
>https://j.ludost.net/blog/archives/2018/06/12/are_su_user_andor_sudo_-u_user_sh_considered_dangerous/index.html
>
>Per vague memory I discussed half of this with some linux crowd and 
>they said "won't fix" long ago.
>
>`su user' and `sudo -u user sh' give the user the fd of root's tty and 
>it is readable and writable. After closing the session, the user can 
>keep it and on root's tty potentially do:
>
>1. inject keypresses via ioctl()
>and/or
>2. read the output of root's tty, probably with some analogue of 
>tee(1).
>
>Is this really a concern?

This class of vulnerabilities has been known since at least 2005:
https://bugzilla.redhat.com/show_bug.cgi?id=173008 (CVE-2005-4890)

It was last discussed on oss-security in 2017:
http://seclists.org/oss-sec/2017/q2/412

>Any workarounds?

For sudo, there's the "use_pty" flag. (It's not enabled by default.)

-- 
Jakub Wilk
