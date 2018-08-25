X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1272" "Saturday" "25" "August" "2018" "10:32:12" "+1000" "Damien Miller" "djm@mindrot.org" "<alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>" "32" "Re: [oss-security] Re: About OpenSSH \"user enumeration\" / CVE-2018-15473" "^cc:" nil nil "8" "2018082500:32:12" "[oss-security] Re: About OpenSSH \"user enumeration\" / CVE-2018-15473" (number mark "        djm@mindrot. Aug 25   32/1272  " thread-indent "\"Re: [oss-security] Re: About OpenSSH \"user enumeration\" / CVE-2018-15473\"\n") "<20180824182942.GA932@openwall.com>" ("<alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>" "<20180824182942.GA932@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25890 invoked by uid 550); 25 Aug 2018 09:23:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1980 invoked from network); 25 Aug 2018 00:32:28 -0000
In-Reply-To: <20180824182942.GA932@openwall.com>
Message-ID: <alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>
References: <alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org> <20180824182942.GA932@openwall.com>
User-Agent: Alpine 2.21 (BSO 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.73 on UQ Mailhub
X-Scanned-By: MIMEDefang 2.75 on 130.102.60.17
X-UQ-FilterTime: 1535157134
cc: openssh-unix-dev@mindrot.org
Date: Sat, 25 Aug 2018 10:32:12 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: About OpenSSH "user enumeration" /
 CVE-2018-15473
To: oss-security@lists.openwall.com

On Fri, 24 Aug 2018, Solar Designer wrote:

> Hi Damien,
> 
> Thank you for sharing these thoughts with the community.
> 
> On Fri, Aug 24, 2018 at 10:58:20AM +1000, Damien Miller wrote:
> > Finally, and perhaps most importantly: there's a fundamental tradeoff
> > between attack surface and fixing this class of bug. As a concrete
> > example, fixing this one added about 150 lines of code to our
> > pre-authentication attack surface. In this case, we were willing to do
> > this because we had confidence in the additional parsing, mostly because
> > it's been reviewed several times and we've conducted a decent amount of
> > fuzzing on it. But, given the choice between leaving a known account
> > validity oracle or exposing something we don't trust, we'll choose the
> > former every time.
> 
> Can you summarize for us all (on these mailing lists) the commits
> leading to OpenSSH 7.8 that deal with this issue and add "about 150
> lines of code", please? 

It's this one:

>  * sshd(8): avoid observable differences in request parsing that could
>    be used to determine whether a target user is valid.

(Commit 74287f5df9)

Note that there's no new code added, but delaying the checks means more
code is exposed before the authentication handler bails out.

-d
