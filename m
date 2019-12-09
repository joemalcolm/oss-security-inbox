X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2384" "Monday" "9" "December" "2019" "15:42:47" "+0100" "Noel Kuntze" "noel.kuntze+oss-security@thermi.consulting" nil "71" nil "^Date:" nil nil "12" nil nil (number mark "        noel.kuntze+ Dec  9   71/2384  " thread-indent "\"Re: [oss-security] Shell wildcards considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Shell wildcards considered dangerous?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13780 invoked by uid 550); 9 Dec 2019 14:48:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7299 invoked from network); 9 Dec 2019 14:43:00 -0000
X-Virus-Scanned: amavisd-new at thermi.consulting
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thermi.consulting;
	s=201909; t=1575902568;
	bh=LfNXzo96YZNT8geY9dfyIPsLcaMuuyMEYMcYNUK9q6o=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=dmWyenHiOhDID++beGJM2JoAcj8LOvIeavs+XLTejhvDyPAg6HZKozEtNtpjhQiYw
	 WAMuXtIhxfaNlhiQgxBkzQJ33eX3zU9LVxqcP8+zb9MRGEtT1prDUL1rM/qVldmWFz
	 yzTdOMAlFIEeocmRAQbdTzUnoxA+yzAvYBoli1zUA/P3HAONlxsdR4QYCPcQGxeXYJ
	 eOaDhjPDxvv/EREAaxVHT+3xNOKYwq51M3kRpMwXC8ZwTrf8RIW/l8rT4aQfOXlUXB
	 2sEcQ/cqJteyYnPtYHW2Uger4/wmf1sDfq1zyaLrl60nRoL4ccwgdRPTUD0EYWrjhz
	 1ayxK3c7cj4GQ==
References: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
Message-ID: <8bd059ae-5faa-46fa-71d0-bb0f61ea8e62@thermi.consulting>
MIME-Version: 1.0
In-Reply-To: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Date: Mon, 9 Dec 2019 15:42:47 +0100
From: Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Shell wildcards considered dangerous?
To: oss-security@lists.openwall.com

Hello,

That is only a problem if the developer(s) foolishly didn't use "--" to terminate the command line options
or they did, but the argument parser of the called program does not understand that "--" is a command line option terminator.
See how the man page for GNU optarg (man 3 optarg).
Quote below:
[...]
       By default, getopt() permutes the contents of argv as it scans, so that
       eventually all the nonoptions are at the end.  Two other modes are also
       implemented.   If  the first character of optstring is '+' or the envi‐
       ronment variable POSIXLY_CORRECT is set, then option  processing  stops
       as soon as a nonoption argument is encountered.  If the first character
       of optstring is '-', then each nonoption argv-element is handled as  if
       it were the argument of an option with character code 1.  (This is used
       by programs that were written to expect options and other argv-elements
       in any order and that care about the ordering of the two.)  The special
       argument "--" forces an end of option-scanning regardless of the  scan‐
       ning mode.

So no, if the developers took care and thought about this beforehand and checked, it's not a problem.

TL;DR: Best practice is to do prog --arg1 --arg2 [...] -- non-opt-args
Check if prog understands that -- terminates the list of passed options.

Kind regards

Noel


Am 09.12.19 um 14:23 schrieb Georgi Guninski:
> Remote version of this affects wu-ftpd from 2003:
> https://www.debian.org/security/2003/dsa-377
>
> Summary:  For trusted command PROGRAM, executing
> PROGRAM *.EXT
> may lead to arbitrary code execution, e.g. for
> PROGRAM=EXT=tar
>
> The main idea is the wildcard to add program options.
>
> Open problem:
>
> Are popular programs other than tar vulnerable?
>
> Since shell wildcards are unlikely to change, should best practice
> include not using *.EXT in shell?
>
>
> Example exploit vector: starting program in untrusted
> directories.
>
> Poc:
> ====
> $rm -rf /tmp/1 ;mkdir /tmp/1 ; cd /tmp/1 ; tar cf a.tar /etc/issue
> $ : >  --to-command="yes .tar"
>
> #end creating, starts PoC
> tar xf *.tar
>
> #.tar (repeats)
> ====
>
>

-- 
Noel Kuntze
IT security consultant

GPG Key ID: 0x0739AD6C
Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C

