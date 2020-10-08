X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2939" "Thursday" "8" "October" "2020" "10:59:00" "+0200" "Giacomo Catenazzi" "cate@debian.org" "<cb230f80-6311-6ee3-c366-6ffa66f43e6f@debian.org>" "81" "[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil "10" "2020100808:59:00" "[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "U       cate@debian. Oct  8   81/2939  " thread-indent "\"[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11888 invoked by uid 550); 8 Oct 2020 09:08:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7881 invoked from network); 8 Oct 2020 08:59:17 -0000
To: Georgi Guninski <gguninski@gmail.com>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
From: Giacomo Catenazzi <cate@debian.org>
Message-ID: <cb230f80-6311-6ee3-c366-6ffa66f43e6f@debian.org>
Date: Thu, 8 Oct 2020 10:59:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default
 umask 0022

Hello,

Sorry, I never told you it is a feature. Please read better, and try to 
write better mails. if you had doubts, you could ask me, in the same tread.

And if you discover a vulnerability, you should disclose it. This is the 
standard way.


In any case:

No password should be stored in a world readable file. This is enforced 
e.g. in ssh.  This is a good security advice.

DO NOT PUT WordPress passwords (e.g. for database, or admin password) in 
world readable file (on multi-user machines).  This is in part a user error.

But PHP (as default LAMP) has this problem. I told you possible 
work-around. So no system administrator should allow untrusted 
multi-user with default LAMP setting.  This is fault of system 
administrator: he should know the security risk before setting up 
services. It is his job, and this is very well documented.

Then I told you various methods to improve the security.

But it seems you still do not understand "/home/loser is with 
permissions 755, default umask 0022". Note: this is also a question on 
installation. System administrator choose this setting.


Do you want PHP run by root? (required with umask 0000) Or tell me what 
should be the right setting? The error is simple: do not enable PHP in 
the simple LAMP way without considering the security implication. 
(suPHP, proxy, etc. are better ways).

Yes, Debian is not secure by default (if you install various packages), 
but it has a lot of documentation, to asses the risk, and how to setup 
things. But at the end, it is the system administrator job to check 
security implication before to install servers. This is true on most of 
professional distribution.  But look the Debian default of Apache: it is 
still strict. WordPress installations (and so configuration snippet) are 
just for single-user machine (and they have extensive documentation 
about security).


If a official Debian mirror has such problem, it is worrying. OTOH all 
Debian files are static files (so no passwords), and Debian sign all 
files: we do not trust mirrors.


If you had some doubt on my answer, you could have reach me, and ask me 
what you do not understand, or to continue the discussion. Your way to 
ridicule Debian just ridicule yourself.

And if you want to continue, check my mails: they are long: please write 
more complete mails: it helps you to order your ideas, and find flaws.

ciao
	cate



On 07.10.2020 20:00, Georgi Guninski wrote:
> https://lists.debian.org/debian-security/2020/10/msg00000.html
> 
> ===
> /home/loser is with permissions 755, default umask 0022
> 
> on multiuser machines this sucks much.
> 
> on a multiuser debian mirror we found a lot of data,
> including the wordpress password of the admin.
> ===
> 
> Then in the thread someone with @debian.org email explains
> to me it is a feature, not a bug.
> 
> In a addition, they suggest to tell them the mirror, lol.
> 
> Are debian detached from reality?
> 
