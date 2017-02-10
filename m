X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1113" "Friday" "10" "February" "2017" "19:37:48" "+0000" "Simon McVittie" "smcv@debian.org" "<20170210193748.t4odr3326b63snwq@perpetual.pseudorandom.co.uk>" "26" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" nil nil nil "2" "2017021019:37:48" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "U       smcv@debian. Feb 10   26/1113  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<DMO5TQmFAPfu4dFKu4KMcGi6kvI4kaQ7lW-aj2fp5bdVprZtr-S6uqEEJ-lB4fu6HSILDCDivxFhQDq-Mm2kQqlPBeu7qzDE2fpV6TiS0CU=@itk.swiss>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>" "<94029e4d-6a6b-94d4-d62c-5aa922b1fb22@oracle.com>" "<DMO5TQmFAPfu4dFKu4KMcGi6kvI4kaQ7lW-aj2fp5bdVprZtr-S6uqEEJ-lB4fu6HSILDCDivxFhQDq-Mm2kQqlPBeu7qzDE2fpV6TiS0CU=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21845 invoked by uid 550); 10 Feb 2017 19:38:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21795 invoked from network); 10 Feb 2017 19:38:04 -0000
Date: Fri, 10 Feb 2017 19:37:48 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170210193748.t4odr3326b63snwq@perpetual.pseudorandom.co.uk>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>
 <94029e4d-6a6b-94d4-d62c-5aa922b1fb22@oracle.com>
 <DMO5TQmFAPfu4dFKu4KMcGi6kvI4kaQ7lW-aj2fp5bdVprZtr-S6uqEEJ-lB4fu6HSILDCDivxFhQDq-Mm2kQqlPBeu7qzDE2fpV6TiS0CU=@itk.swiss>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DMO5TQmFAPfu4dFKu4KMcGi6kvI4kaQ7lW-aj2fp5bdVprZtr-S6uqEEJ-lB4fu6HSILDCDivxFhQDq-Mm2kQqlPBeu7qzDE2fpV6TiS0CU=@itk.swiss>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process

On Fri, 10 Feb 2017 at 13:09:43 -0500, Stiepan wrote:
> By the way, I have just tried the OVE ID alternative:
> good idea, but perhaps one button is a bit too frugal.

The purpose of OVE IDs is literally only creating a unique identifier
that no other maintainer or security researcher will be using to
identify a different vulnerability. That's all they are. How you
publish the vulnerability for which you have used the identifier
is up to you.

They're slightly more readable and memorable than using
/proc/sys/kernel/random/uuid to allocate identifiers, and they give
you some vague idea of how old the vulnerability report is. That's about
the only difference.

(Hmm, now I'm tempted to use /proc/sys/kernel/random/uuid next
time I need a unique ID for a vulnerability that's already public...)

> P.S.: While we're at it, let's use the two OVEs I have just wasted,
> OVE-20170210-0001 (forward CVE web request+ID to oss-sec)
> OVE-20170210-0002 (add a title option field to OVE web form),
> for the two aforementioned issues!

I'm pretty sure those aren't security vulnerabilities in any product :-P

    S
