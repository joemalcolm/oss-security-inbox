X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["737" "Wednesday" "15" "April" "2015" "05:45:44" "-0400" "Jakub Filak" "jfilak@redhat.com" "<1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com>" "18" "[oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041509:45:44" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        jfilak@redha Apr 15   18/737   " thread-indent "\"[oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<263211786.321777.1429090662008.JavaMail.zimbra@redhat.com>" ("<263211786.321777.1429090662008.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19973 invoked by uid 550); 15 Apr 2015 20:35:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17487 invoked from network); 15 Apr 2015 09:45:56 -0000
Message-ID: <1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com>
In-Reply-To: <263211786.321777.1429090662008.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.34.24.140]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF31 (Linux)/8.0.6_GA_5922)
Thread-Topic: Problems in automatic crash analysis frameworks
Thread-Index: Wsxy9DXu5UlpQl03mqsMRRX/qyi3bg==
Date: Wed, 15 Apr 2015 05:45:44 -0400 (EDT)
From: Jakub Filak <jfilak@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

Hello,

I have a question regarding the ABRT vulnerabilities. I don't particularly understand how an attacker can use /proc/pid/exe symlink to force ABRT to read an arbitrary file if the symlink cannot be changed and kernel refuses to create the process if the symlink's target is not executable.

> This code trusts the /proc/pid/exe symlink, even though it is possible
> to link it anywhere you want.
>
> https://github.com/abrt/abrt/blob/master/src/hooks/abrt-hook-ccpp.c#L368
>
>        sprintf(buf, "/proc/%lu/exe", (long)pid);
>        int src_fd_binary = open(buf, O_RDONLY); /* might fail and
>                                                    return -1, it's ok */

Thank you for clarifying this for me.


Kind regards,
Jakub
