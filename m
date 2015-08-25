X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1528" "Tuesday" "25" "August" "2015" "07:41:00" "-0400" "Siddharth Sharma" "siddharth@redhat.com" "<8215277.9095497.1440502860075.JavaMail.zimbra@redhat.com>" "45" "Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid" nil nil nil "8" "2015082511:41:00" "[oss-security] CVE Request for glusterfs: fuse check return value of setuid" (number mark "        siddharth@re Aug 25   45/1528  " thread-indent "\"Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid\"\n") "<87vbccpxz0.fsf@mid.deneb.enyo.de>" ("<415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>" "<87vbccpxz0.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16100 invoked by uid 550); 25 Aug 2015 11:41:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16081 invoked from network); 25 Aug 2015 11:41:12 -0000
Message-ID: <8215277.9095497.1440502860075.JavaMail.zimbra@redhat.com>
In-Reply-To: <87vbccpxz0.fsf@mid.deneb.enyo.de>
References: <415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com> <87vbccpxz0.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.36.7.192]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF40 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE Request for glusterfs: fuse check return value of setuid
Thread-Index: 1h/Eo5wMTWO0IQ3nwcLA6yd3sxWUgw==
Cc: cve-assign@mitre.org
Date: Tue, 25 Aug 2015 07:41:00 -0400 (EDT)
From: Siddharth Sharma <siddharth@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request for glusterfs:  fuse check return
 value of setuid
To: oss-security@lists.openwall.com


can we have CVE assigned to this ?

-----------------------------------------------------------------
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A 
Fingerprint :  0x6F04C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A 


----- Original Message -----
From: "Florian Weimer" <fw@deneb.enyo.de>
To: oss-security@lists.openwall.com
Sent: Tuesday, August 18, 2015 6:14:51 PM
Subject: Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid

* Siddharth Sharma:

> Problem description from the bug: 
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1254488
>
> setuid() sets the effective user ID of the calling process.  
> If the effective UID of the caller is root, the real UID and
> saved set-user-ID are also set. On success, zero is returned.
> On error, -1 is returned, and errno is set appropriately.
>
> Note: there are cases where setuid() can fail even when the 
> caller is UID 0; it is a grave security error to omit checking
> for a failure return from setuid(). if an environment limits 
> the number of processes a user can have, setuid() might fail if
> the target uid already is at the limit.
>
> Can we have CVE assigned to this ?
>
> Upstream Ref: 
>
> http://review.gluster.org/#/c/10780/
> https://github.com/gluster/glusterfs/commit/b5ceb1a9de9af563b0f91e2a3138fa5a95cad9f6

Original code:

<http://sourceforge.net/p/fuse/fuse/ci/master/tree/lib/mount_util.c#l103>

Pluse two more locations in that file.

A single CVE ID for all these issues should probably suffice.
