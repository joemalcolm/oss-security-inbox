X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1577" "Thursday" "3" "September" "2015" "01:39:48" "-0400" "Siddharth Sharma" "siddharth@redhat.com" "<725283569.12273322.1441258788610.JavaMail.zimbra@redhat.com>" "45" "Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid" nil nil nil "9" "2015090305:39:48" "[oss-security] CVE Request for glusterfs: fuse check return value of setuid" (number mark "        siddharth@re Sep  3   45/1577  " thread-indent "\"Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid\"\n") "<87vbccpxz0.fsf@mid.deneb.enyo.de>" ("<415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>" "<87vbccpxz0.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6110 invoked by uid 550); 3 Sep 2015 05:40:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6087 invoked from network); 3 Sep 2015 05:40:00 -0000
Message-ID: <725283569.12273322.1441258788610.JavaMail.zimbra@redhat.com>
In-Reply-To: <87vbccpxz0.fsf@mid.deneb.enyo.de>
References: <415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com> <87vbccpxz0.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.36.6.215]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF40 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE Request for glusterfs: fuse check return value of setuid
Thread-Index: HW/bmYa8qU2CjaSHEr90cjTaciZbkQ==
Cc: cve-assign@mitre.org
Date: Thu, 3 Sep 2015 01:39:48 -0400 (EDT)
From: Siddharth Sharma <siddharth@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request for glusterfs:  fuse check return
 value of setuid
To: oss-security@lists.openwall.com

Can we please get CVE assigned to this flaw. CVE request was made
on 18 August 2015.

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
