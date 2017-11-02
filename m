X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3682" "Thursday" "2" "November" "2017" "14:47:35" "+1100" "James Morris" "jmorris@namei.org" "<alpine.LRH.2.21.1711021348230.19623@namei.org>" "85" "[oss-security] Linux Security Summit 2017 Summary" nil nil nil "11" "2017110203:47:35" "[oss-security] Linux Security Summit 2017 Summary" (number mark "U       jmorris@name Nov  2   85/3682  " thread-indent "\"[oss-security] Linux Security Summit 2017 Summary\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9803 invoked by uid 550); 2 Nov 2017 10:48:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30418 invoked from network); 2 Nov 2017 03:47:51 -0000
Date: Thu, 2 Nov 2017 14:47:35 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: oss-security@lists.openwall.com
Message-ID: <alpine.LRH.2.21.1711021348230.19623@namei.org>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] Linux Security Summit 2017 Summary

The 2017 Linux Security Summit (LSS) [1] was held on Sept 14th and 15th in 
Los Angeles, USA.  It was co-located with Open Source Summit North America 
[2] (previously/including LinuxCon) and the Linux Plumbers Conference 
(LPC) [3].

LSS is unique as a security conference as it's dedicated to Linux and Open 
Source, and tends to be focused on defensive security engineering.

This year we had refereed presentations, Linux kernel security subsystem 
updates, and BoF topics.

The schedule is here:
http://events.linuxfoundation.org/events/archive/2017/linux-security-summit/program/schedule

Slides may be found here:
http://events.linuxfoundation.org/events/archive/2017/linux-security-summit/program/slides
(and in some cases by clicking on the session topics).

There was no video this year, unfortunately, and we'll work on making that 
happen for next year.

Also, due to the LPC co-location and schedule overlap, we had no LWN 
coverage of the event.

You can find attendee coverage here:

http://blog.namei.org/2017/10/02/linux-security-summit-2017-roundup/
http://www.paul-moore.com/blog/d/2017/09/linux-security-summit.html
https://tyhicks.com/2017/09/22/2017-Linux-Security-Summit-Day-1/
https://tyhicks.com/2017/09/25/2017-Linux-Security-Summit-Day-2/

There was also a shared day with LPC (on the 13th), where the TPMs and 
containers microconfs were held. See:

https://etherpad.openstack.org/p/LPC2017_TPM
https://etherpad.openstack.org/p/LPC2017_Containers

It was certainly useful to have so many security-interested Linux folk 
there across both conferences, although we will avoid co-locating with LPC 
in the future.  It's also useful to have some time between LPC and LSS for 
ideas raised at one to be developed further and discussed at the other.

For 2018, there will be a new European version of LSS, which will be held 
in addition to the main event in North America.  This will be led by Elena 
Reshetova, a member of the LSS program committee, who proposed the idea as 
there are a lot of Linux and Open Source security folk in Europe who may 
not be able to make it to the US event.  Stay tuned for an official 
announcement soon (all such announcements can be found at @LinuxSecSummit 
on twitter).

In terms of trends, over the past year, we've seen a lot of activity again 
in kernel hardening via the kernel self protection project, and you can 
see where things are at by looking at Kees' slides:

http://schd.ws/hosted_files/lss2017/aa/LSS-2017-Kernel-Self-Protection-Project.pdf

This work is primarily focused on forward-porting grsecurity/PaX to 
mainline, and I gather this will continue to be the case over the next 1-2 
years.  One of the most significant effects of the project is more 
mainline kernel developers gaining knowledge and skills in security via 
involvement in KSPP.  And culturally, there is also now much greater 
awareness of contemporary security threats and acceptance of the need to 
mitigate them.  Kernel security is hopefully becoming less of a 
specialized niche area, and more open to general kernel developers.

We're also seeing continued activity in TPMs (v2.0 stack developoment), 
integrity/boot verification, hardware-based mitigations, mobile/device, 
and containers.  There are lots of challenges across these areas, and the 
materials I've linked from LSS and LPC are a good place to start if you're 
interested in where things are at currently.


References:

[1] http://events.linuxfoundation.org/events/archive/2017/linux-security-summit
[2] http://events.linuxfoundation.org/events/open-source-summit-north-america
[3] http://www.linuxplumbersconf.org/2017/




-- 
James Morris
<jmorris@namei.org>

