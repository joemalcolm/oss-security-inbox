X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["787" "Tuesday" "18" "October" "2016" "14:06:41" "+0200" "Adam Maris" "amaris@redhat.com" "<45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>" "31" "Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" nil nil nil "10" "2016101812:06:41" "[oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" (number mark "U       amaris@redha Oct 18   31/787   " thread-indent "\"Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12\"\n") "<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>" ("<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13526 invoked by uid 550); 18 Oct 2016 12:06:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13488 invoked from network); 18 Oct 2016 12:06:55 -0000
To: oss-security@lists.openwall.com
References: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
From: Adam Maris <amaris@redhat.com>
Cc: kaplanlior@gmail.com
Message-ID: <45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>
Date: Tue, 18 Oct 2016 14:06:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Tue, 18 Oct 2016 12:06:43 +0000 (UTC)
Subject: Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12

On 18/10/16 09:42, Lior Kaplan wrote:
> Hi,
>
> Please assign a CVE for the following issue:
>
> Bug #73147    Use After Free in unserialize()
> https://bugs.php.net/bug.php?id=3D73147
> http://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3D0e6fe3a4c96be2d3e88389=
a5776f878021b4c59f
>
> Thanks,
>
> Kaplan
>
16 bugs marked as 'security' were fixed in php 5.6.27 of which only one has=
 CVE assigned.
Here you request CVE for another one issue (even the documentation says it'=
s unsafe to use
unserialize on untrusted input).

Are you planning to obtain CVEs also for other security bugs or do you trea=
t the rest as
CVE-unworthy? Or are reporters/community supposed to do it?

Thanks!

--=20
Adam Mari=C5=A1, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


