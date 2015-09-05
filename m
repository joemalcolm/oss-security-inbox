X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1916" "Friday" "4" "September" "2015" "19:08:18" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150905020818.GA28755@hunt>" "47" "Re: [oss-security] Re: CVE Request for glusterfs:  fuse check return value of setuid" nil nil nil "9" "2015090502:08:18" "[oss-security] Re: CVE Request for glusterfs: fuse check return value of setuid" (number mark "        seth.arnold@ Sep  4   47/1916  " thread-indent "\"Re: [oss-security] Re: CVE Request for glusterfs:  fuse check return value of setuid\"\n") "<20150905004210.55B4E6C006E@smtpvmsrv1.mitre.org>" ("<415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>" "<20150905004210.55B4E6C006E@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30217 invoked by uid 550); 5 Sep 2015 02:08:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30199 invoked from network); 5 Sep 2015 02:08:35 -0000
Message-ID: <20150905020818.GA28755@hunt>
Mail-Followup-To: cve-assign@mitre.org, siddharth@redhat.com,
	fw@deneb.enyo.de, oss-security@lists.openwall.com
References: <415496778.7350783.1439890690568.JavaMail.zimbra@redhat.com>
 <20150905004210.55B4E6C006E@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GvXjxJ+pjyke8COw"
Content-Disposition: inline
In-Reply-To: <20150905004210.55B4E6C006E@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: siddharth@redhat.com, fw@deneb.enyo.de, oss-security@lists.openwall.com
Date: Fri, 4 Sep 2015 19:08:18 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request for glusterfs:  fuse check return
 value of setuid
To: cve-assign@mitre.org

--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 04, 2015 at 08:42:10PM -0400, cve-assign@mitre.org wrote:
> > https://bugzilla.redhat.com/show_bug.cgi?id=1254488
> > http://review.gluster.org/#/c/10780/
> > https://github.com/gluster/glusterfs/commit/b5ceb1a9de9af563b0f91e2a3138fa5a95cad9f6

>   - the only goal in calling setuid is to execute /bin/mount (or
>     /bin/umount) from a process with both an effective UID of 0 and a
>     real UID of 0. This is a requirement of the util-linux mount
>     program. See the "if we're really root and aren't running setuid"
>     comment in mount.c. Otherwise, for the types of mount usage in
>     question, mount would print "mount: only root can do that" and
>     exit.

This is an excellent analysis but does it hinge upon the util-linux "aren't
running suid" behaviour in mount? Does it matter that the busybox mount,
for example, doesn't appear to have this same requirement? I don't see
any corresponding code in:

http://sources.debian.net/src/busybox/1:1.22.0-15/util-linux/mount.c/

I'm certainly no busybox expert but nothing looks like a corresponding
uid == 0 && euid == 0 check. The call to sanitize_env_if_suid() even
suggests setuid execution is expected and anticipated.

Thanks

--GvXjxJ+pjyke8COw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJV6k6SAAoJEPMhclmdjS6X5Q4H/2i63i/xzibDek5P2+4MvDji
IkNH735ba3xsyBRFUorfTZ8LvMUKLCPQAue2BzzcdQA+BWowxFiGtrWwAfNT77e/
yoO+fMEBaKdZOwLUx0FjO92I+JLZlkIc6HZSx3SK08U+T6fxRhrQ2HIdd3LRbp8j
ITz94AunZSLTr75CEGmy2KYWWdmVluvD5OZjBG8n/ITgxM/zutTA/cP+6VSz+flE
oLPKvtgBGu+4RxLsNWvW5vilTRMgbc57ojCSK/jvACqCgveBVhJAWcQSgE3uX4GR
/dSADrJu6LqPwhr/EWCPrCHWrENZPFTlFhOpUEmjJjNpljrlAh7fTVoLn/ah0gU=
=Vi3B
-----END PGP SIGNATURE-----

--GvXjxJ+pjyke8COw--
