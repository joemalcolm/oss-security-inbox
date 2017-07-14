X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1667" "Friday" "14" "July" "2017" "07:58:37" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<b206e24d-0025-33a3-deb8-b0d9c7641d19@oracle.com>" "34" "Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?" "^Date:" nil nil "7" "2017071414:58:37" "[oss-security] Estimate for the total number of exploitable bugs in large linux distro?" (number mark "        alan.coopers Jul 14   34/1667  " thread-indent "\"Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?\"\n") "<CACkP6k=7cgf+n8eeS0JFiVzK3caCTg_1piBLWxJLH=1P9YbNAg@mail.gmail.com>" ("<20170714093401.GB865@sivokote.iziade.m$>" "<CACkP6k=7cgf+n8eeS0JFiVzK3caCTg_1piBLWxJLH=1P9YbNAg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1654 invoked by uid 550); 14 Jul 2017 14:58:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1636 invoked from network); 14 Jul 2017 14:58:52 -0000
References: <20170714093401.GB865@sivokote.iziade.m$>
 <CACkP6k=7cgf+n8eeS0JFiVzK3caCTg_1piBLWxJLH=1P9YbNAg@mail.gmail.com>
Message-ID: <b206e24d-0025-33a3-deb8-b0d9c7641d19@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <CACkP6k=7cgf+n8eeS0JFiVzK3caCTg_1piBLWxJLH=1P9YbNAg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Date: Fri, 14 Jul 2017 07:58:37 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Estimate for the total number of exploitable bugs
 in large linux distro?
To: oss-security@lists.openwall.com, Steven Miano <mianosm@gmail.com>

On 07/14/17 02:45 AM, Steven Miano wrote:
> Something like this?
> 
> https://www.cvedetails.com/vendor/51/Ubuntu.html
> https://www.cvedetails.com/vendor/7838/Red-Hat.html
> https://www.cvedetails.com/vendor/26/Microsoft.html

Those are known vulnerabilities, with varying degrees of exploitability,
and varying exploit conditions and sometimes differing views on where to
draw the line on what is one issue or multiple issues.

Some of them can be remotely exploited, some require a local user to take
action.  Some give access to those who had none, some give higher privs to
those who had some, and some don't change your access levels at all.

Of course, they don't count all the ones that haven't been publicly
disclosed - either because they are unknown or only known to certain people.

And when you start comparing numbers with Linux distros things get even
messier - if you include the count of every issue in every package in
their package repositories then you are including a far larger set of
software than if you just count what's in others OS - but that doesn't
mean they are more or less secure, just that they have more or less
software available for easy installation.

For a far more complete answer of why vulnerability counting is messy,
hard, and just plain sucks, you can turn to the experts:

https://media.blackhat.com/us-13/US-13-Martin-Buying-Into-The-Bias-Why-Vulnerability-Statistics-Suck-WP.pdf
https://media.blackhat.com/us-13/US-13-Martin-Buying-Into-The-Bias-Why-Vulnerability-Statistics-Suck-Slides.pdf

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
