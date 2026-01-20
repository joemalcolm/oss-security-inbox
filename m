Received: (qmail 18068 invoked by uid 550); 20 Jan 2026 23:32:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1746 invoked from network); 20 Jan 2026 23:16:55 -0000
Date: Wed, 21 Jan 2026 00:16:45 +0100
From: Alexander Bochmann <ab@lists.gxis.de>
To: oss-security@lists.openwall.com
Message-ID: <aXAM3Sn3-xw28o-Z@gxis.de>
References: <87h5sg9yfs.fsf@josefsson.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h5sg9yfs.fsf@josefsson.org>
Subject: Re: [oss-security] GNU InetUtils Security Advisory: remote
 authentication by-pass in telnetd

...on 2026-01-20 15:00:07, Simon Josefsson wrote:

 > Vulnerable versions: GNU InetUtils since version 1.9.3 up to and
 > including version 2.7.

Looking at Debian, this gets even more hilarious... Their 
changelog for inetutils has:

 > inetutils (2:1.9.4-7) unstable; urgency=medium
 > [..]
 >  * Take several patches from upstream git master:
 > [..]
 >    - 0028-telnetd-Scrub-USER-from-environment.patch
 > 
 > [..] Sat, 16 Feb 2019 18:09:37 +0100

I have not yet spun up a Debian 9 to see if that version was 
released as an update, but it presumably would have been safe 
in this regard.

The next entry in their changelog is for Debian 10,

 > inetutils (2:1.9.4-7+deb10u1) buster; urgency=medium
 >
 >  * CVE-2020-10188 (Closes: #956084)
 > 
 > [..] Fri, 18 Sep 2020 20:06:42 +0200

That update fixed a remote code execution in telnetd and 
apparently reintroduced the environment bug yet another 
time (I tested that Debian 10 telnetd is vulnerable for 
this and later versions, and also subsequent Debian and 
Ubuntu releases)...

Alex.





