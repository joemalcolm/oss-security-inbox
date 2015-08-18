X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1049" "Tuesday" "18" "August" "2015" "14:44:51" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87vbccpxz0.fsf@mid.deneb.enyo.de>" "31" "Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid" nil nil nil "8" "2015081812:44:51" "[oss-security] CVE Request for glusterfs: fuse check return value of setuid" (number mark "        fw@deneb.eny Aug 18   31/1049  " thread-indent "\"Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid\"\n") "<415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>" ("<415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3417 invoked by uid 550); 18 Aug 2015 12:45:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3381 invoked from network); 18 Aug 2015 12:45:04 -0000
References: <415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>
In-Reply-To: <415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>
	(Siddharth Sharma's message of "Tue, 18 Aug 2015 05:38:10 -0400
	(EDT)")
Message-ID: <87vbccpxz0.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Tue, 18 Aug 2015 14:44:51 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request for glusterfs:  fuse check return value of setuid
To: oss-security@lists.openwall.com

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
