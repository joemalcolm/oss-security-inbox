X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["667" "Monday" "29" "October" "2018" "08:52:25" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87efc8kj92.fsf@fifthhorseman.net>" "16" "Re: [oss-security] Re: Travis CI MITM RCE" nil nil nil "10" "2018102912:52:25" "[oss-security] Re: Travis CI MITM RCE" (number mark "U       dkg@fifthhor Oct 29   16/667   " thread-indent "\"Re: [oss-security] Re: Travis CI MITM RCE\"\n") "<20181027145446.xmvhpq6ttyvcme3m@jwilk.net>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20181027145446.xmvhpq6ttyvcme3m@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5499 invoked by uid 550); 29 Oct 2018 13:54:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5480 invoked from network); 29 Oct 2018 13:54:36 -0000
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
To: Jakub Wilk <jwilk@jwilk.net>, oss-security@lists.openwall.com
In-Reply-To: <20181027145446.xmvhpq6ttyvcme3m@jwilk.net>
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net> <20181027145446.xmvhpq6ttyvcme3m@jwilk.net>
Date: Mon, 29 Oct 2018 08:52:25 -0400
Message-ID: <87efc8kj92.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: Travis CI MITM RCE

On Sat 2018-10-27 16:54:46 +0200, Jakub Wilk wrote:
> My proposed fix was to use "gpg --recv-key" with full fingerprint. But I 
> now discovered that even this is not resistant against MitM attacks:
>
> https://dev.gnupg.org/T3398
>
> "[...] modern gpg automatically applies an import screener that only 
> accepts OpenPGP certificates that have the given fingerprint [...]

It may be even worse than this, because the version of gpg used by
default in travis is not "modern gpg", it's either gnupg2
2.0.22-3ubuntu1.4 or gnupg 1.4.16-1ubuntu2.6.  I don't think either of
these has the baseline "import screener" functionality, let alone a fix
for T3398 :(

    --dkg
