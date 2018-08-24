X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1521" "Friday" "24" "August" "2018" "20:29:42" "+0200" "Solar Designer" "solar@openwall.com" "<20180824182942.GA932@openwall.com>" "34" "[oss-security] Re: About OpenSSH \"user enumeration\" / CVE-2018-15473" "^Cc:" nil nil "8" "2018082418:29:42" "[oss-security] Re: About OpenSSH \"user enumeration\" / CVE-2018-15473" (number mark "        solar@openwa Aug 24   34/1521  " thread-indent "\"[oss-security] Re: About OpenSSH \"user enumeration\" / CVE-2018-15473\"\n") "<alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>" ("<alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14128 invoked by uid 550); 24 Aug 2018 18:30:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13410 invoked from network); 24 Aug 2018 18:29:48 -0000
Message-ID: <20180824182942.GA932@openwall.com>
References: <alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>
User-Agent: Mutt/1.4.2.3i
Cc: openssh-unix-dev@mindrot.org
Date: Fri, 24 Aug 2018 20:29:42 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: About OpenSSH "user enumeration" / CVE-2018-15473
To: oss-security@lists.openwall.com

Hi Damien,

Thank you for sharing these thoughts with the community.

On Fri, Aug 24, 2018 at 10:58:20AM +1000, Damien Miller wrote:
> Finally, and perhaps most importantly: there's a fundamental tradeoff
> between attack surface and fixing this class of bug. As a concrete
> example, fixing this one added about 150 lines of code to our
> pre-authentication attack surface. In this case, we were willing to do
> this because we had confidence in the additional parsing, mostly because
> it's been reviewed several times and we've conducted a decent amount of
> fuzzing on it. But, given the choice between leaving a known account
> validity oracle or exposing something we don't trust, we'll choose the
> former every time.

Can you summarize for us all (on these mailing lists) the commits
leading to OpenSSH 7.8 that deal with this issue and add "about 150
lines of code", please?  The commit originally referenced by Qualys
doesn't.  I guess this has to do with you fixing not only the yes/no
kind of oracle, but also mitigating some timing oracle(s), as per the
change log:

 * sshd(8): add some countermeasures against timing attacks used for
   account validation/enumeration. sshd will enforce a minimum time
   or each failed authentication attempt consisting of a global 5ms
   minimum plus an additional per-user 0-4ms delay derived from a
   host secret.

 * sshd(8): avoid observable differences in request parsing that could
   be used to determine whether a target user is valid.

Thanks again,

Alexander
