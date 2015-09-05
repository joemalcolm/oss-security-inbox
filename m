X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2256" "Friday" "4" "September" "2015" "23:55:45" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150905035545.5C6736C0016@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request for glusterfs:  fuse check return value of setuid" nil nil nil "9" "2015090503:55:45" "[oss-security] Re: CVE Request for glusterfs: fuse check return value of setuid" (number mark "        cve-assign@m Sep  4   46/2256  " thread-indent "\"[oss-security] Re: CVE Request for glusterfs:  fuse check return value of setuid\"\n") "<20150905020818.GA28755@hunt>" ("<20150905020818.GA28755@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32006 invoked by uid 550); 5 Sep 2015 03:55:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31988 invoked from network); 5 Sep 2015 03:55:56 -0000
In-Reply-To: <20150905020818.GA28755@hunt>
Message-Id: <20150905035545.5C6736C0016@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, siddharth@redhat.com, fw@deneb.enyo.de
Date: Fri,  4 Sep 2015 23:55:45 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for glusterfs:  fuse check return value of setuid
To: seth.arnold@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> does it hinge upon the util-linux "aren't running suid" behaviour

Our initial thought is that, if a mount program doesn't care about the
real UID, then the glusterfs setuid(0) calls are probably unnecessary
and checking their return values probably doesn't accomplish anything.
One conceivable exception is a mount implementation that maintains an
association between each mount entry and the real UID that established
that mount entry, and also requires a special option for root to
unmount a filesystem that was mounted by a non-root user. For example,
if a setuid(0) call failed during a mount, then there could be an
association between /home/alice/fs1 and alice's real UID. Here, root
would be authorized to unmount /home/alice/fs1, but the specific
/bin/umount command-line options hardcoded in glusterfs would not
work. Therefore, alice might be forced to leave /home/alice/fs1
mounted unless she were able to cause a setuid(0) call to fail during
an unmount. This might have security relevance if /home/alice/fs1
contained private files, and alice's original intention was to have
that filesystem mounted for a very short time.

We don't know if any real mount software meets those requirements.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV6mbjAAoJEL54rhJi8gl5i8gP/3n0swiSu7rTejnlZFb1SCcz
byTWd9uCAmSreUvmDrKjaLpX1wlb/+OUorn8D2BrbLeU0Il21gCIko9/PUgFPYov
mUyICbjpLU8poPj7qMZrUeew1MtT3K6CvEDlmZYfHx7k0lmTglqxUa+b+hYpBpM5
QXSBWxYfdG6HVKZeI/rp/nCmHQaJ206H6wIc8xL5S9j1cnJnxamekEJabD2riA8G
X2sx3YpNgpFoEWDQ/A3rkx9RYzFBAFwfwZoTl0Y3rxbc90UvVPzZBVu3xdhie95a
GkefgsHlBoLIXP/mJZT67UMkJSsjawwlroYS/vXzM9aD6xQyV6Lf4w3efFn5kPFx
ldcknoCEN9isudQGzXmJY/2Oa8SToroq+D3LO+xsRwcGTETNJKmroAuRxLeD1urd
9bsceZc7+rTXyzwjgMHZxg4yAOLEkPpOFpt6+ORL/Q3I7b3LZiZnFM2XGBIP1xnH
iN6A9HT0aTn1dg9Zqf3iIU0KORmw6VcCzADWolhYHah4ErZb791v0+bnmUPwmis/
ELts8J2wbQHh2aZG8xx1vjWMXFT2rK2TaeynYFl6Budlu/bux3kwI+svYF5Y1y8S
rI7Vh1kMYKQD7wzIDny7dGRYjGTeGvyxUqkYCg2yVGMW+ysaXJxEJMoee4DdU+k1
ouv13LJehJXWIF559jAI
=4yop
-----END PGP SIGNATURE-----
