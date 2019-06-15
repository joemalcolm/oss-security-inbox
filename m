X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3195" "Saturday" "15" "June" "2019" "14:57:19" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<729c6afa-a07f-a171-fc0f-3057a40c4e49@oracle.com>" "59" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061521:57:19" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        alan.coopers Jun 15   59/3195  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<E1hcFgj-0001CA-PR@rmmprod05.runbox>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615205947.56f2315d@computer>" "<E1hcFgj-0001CA-PR@rmmprod05.runbox>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17522 invoked by uid 550); 15 Jun 2019 21:57:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17504 invoked from network); 15 Jun 2019 21:57:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=gCxL97kpVnp+QuhofF83PPpXZMCL6iFrxiJDugA83/M=;
 b=2FsQ113+DbaQvN2wBOdD4/CZLfcJ2fR0pDaiBZJOAgUqoEGRIG17PU8SGhN/qsq8EI9y
 bQtKSAnVp5JnPMbFl7gRPB8T5WMOJjLucDZ8B3azZj231VE/EWhQtzScexHPq3wyMhvf
 mkLEA7ESkvCsesxMrul5uke2/IoyoLs8A9h64QfVROSF7jsh7JKQjatTX2nr+me8cP1R
 zgl1xkG4lIwyxKqH+/++s0gwBgEZVojVBfFlGrx5JDmjEj+Km3wHL07KFtHBfl0CjJZW
 xgVmZV8208Jfcn7CisQCVbRK9FL4gZhWLVLYiLvk1ovjzmTnncpDDlQd3muVyd4L9Zxx Og== 
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615205947.56f2315d@computer> <E1hcFgj-0001CA-PR@rmmprod05.runbox>
Message-ID: <729c6afa-a07f-a171-fc0f-3057a40c4e49@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <E1hcFgj-0001CA-PR@rmmprod05.runbox>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9289 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906150207
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9289 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906150207
Date: Sat, 15 Jun 2019 14:57:19 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com,
        "David A. Wheeler"
 <dwheeler@dwheeler.com>

As one of the maintainers of a pile of packages included in pretty much every
Linux distro (the X.Org libraries, clients, servers, & drivers), which has had
a fair number of CVE's, I would love to do all of these - and we do what we can
now (mostly 1 & 3).   We're not ignoring the rest - we just don't have enough
contributors to do all that, and I know we're far from the only FOSS project
with this problem.

This is a lot of work, and when the people making money off the software aren't
using that money to pay for this work, they can't be surprised when it doesn't
get done.

	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org

On 6/15/19 1:54 PM, David A. Wheeler wrote:
> I think that's fair, but I think projects have their part to play too:
> 
> 1. Projects should work much harder at avoiding backwards-incompatible changes.
>    Some projects (though *not* the Linux kernel) seem to take a very
>    cavalier attitude to breaking changes.  Yes, change is sometimes necessary,
>    but projects need to work harder at providing graceful upgrades.
>    (Slow deprecations, providing altenative differently-named 'new' interfaces
>    with different semantics that let people gradually transition, and so on).
>    IN PARTICULAR: I believe the primary reason that distros
>    often backport, instead of using the "current" version, is because their
>    users correctly fear backwards-incompatible changes. If projects would stop
>    being the problem, then distros wouldn't feel the need to solve the problem.
> 2. Everyone needs test suites to detect problems from changes & upgrades.
>    Since everyone is making changes, including upgrading components,
>    everyone should have test suites to detect problems before they ship.
>    Then upgrading will be much easier and less likely to cause problems.
> 3. Projects should be using static analysis tools to detect problems
>    ahead-of-time.  Yes, they have false positives and false negatives.
>    Be kind to your users, and use tools to help find & fix the bugs
>    instead of inflicting them on your users.
> 4. Input validation, input validation, input validation.
>     If projects' software would be pickier about what they accept,
>     many vulnerabilities and bugs wouldn't have a chance.
> 5. Apply other good security techniques, like hardening against
>     the inevitable problems.
> 6. I'd like to see more projects fuzzing themselves before they ship.
>    I'm probably dreaming on this point, but I can dream :-).
> These won't solve everything, but it will reduce the trauma.
> 
> Many of these points are covered by the CII Best Practices badge.
> I encourage OSS projects to work to get a badge:
>    https://bestpractices.coreinfrastructure.org/
> (Full disclosure: I lead that project.  But I hope it's useful anyway :-) .)
> 
> I'm not revealing any grand new ideas.  They're kind of basic.
> However, they seem to be ignored by too many projects today.
> I think if more projects would "do unto others as you
> would have them do unto you", then handling
> this stuff would be a lot less painful :-).
> 
> --- David A. Wheeler
> 


