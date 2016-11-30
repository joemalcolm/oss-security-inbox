X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1545" "Wednesday" "30" "November" "2016" "03:32:02" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d0a531106d1d42538bf7ef4f0a967999@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: cve-request: linux kernel - memory leak in xfs attribute mechanism." nil nil nil "11" "2016113008:32:02" "[oss-security] Re: cve-request: linux kernel - memory leak in xfs attribute mechanism." (number mark "U       cve-assign@m Nov 30   37/1545  " thread-indent "\"[oss-security] Re: cve-request: linux kernel - memory leak in xfs attribute mechanism.\"\n") "<CALJHwhQQb3HXqR35yb7bjQPbUpN1vHH_=ETEyMq7LQ+6VLbkHA@mail.gmail.com>" ("<CALJHwhQQb3HXqR35yb7bjQPbUpN1vHH_=ETEyMq7LQ+6VLbkHA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17919 invoked by uid 550); 30 Nov 2016 08:32:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17901 invoked from network); 30 Nov 2016 08:32:14 -0000
From: <cve-assign@mitre.org>
To: <wmealing@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CALJHwhQQb3HXqR35yb7bjQPbUpN1vHH_=ETEyMq7LQ+6VLbkHA@mail.gmail.com>
Message-ID: <d0a531106d1d42538bf7ef4f0a967999@imshyb02.MITRE.ORG>
Date: Wed, 30 Nov 2016 03:32:02 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: cve-request: linux kernel - memory leak in xfs attribute mechanism.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I'd like to request a CVE for the following flaw found in the XFS
> attribute management code where over-eager error handling could create
> a memory leak (not in information leak) and perhaps with enough
> dedication and patience a local attacker could eventually leak
> available system memory, creating a DOS attack.
> 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=2e83b79b2d6c78bf1b4aa227938a214dcbddc83f

>> xfs_attr_list.c error paths

Use CVE-2016-9685.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYPo4nAAoJEHb/MwWLVhi28zQP+gNf6cDnL0kfFhu2r+F4hgOp
mqETw6UhqoMyu9dpzbVbspbpNApm7obx/0iDeSw9/sK56os+SfeABQs9iFL1hhFf
3m2MftWhlysDsudg7532n7DU10hOW873Y8v5lKF9Qaoaxy4RUs/XIHaWMZ2P/Q1l
Madkq8XS9+k2pzXkYpY9o9w0vAHXE0WhdGvvlP3v4imxkncT/HdRPxmWv+j+s0/7
ZWoW/5OoiIT/aVfgk8e8NagOrr0CMwkZ4WiE+xrVjC2SfpWKmpv9bPo/kCrkqo3O
0oja1LcvAH/cK7HfldfotR+/Jh7zDKPTeQRlmJ4Aty/4Mmd+Uxb++fanMd+EHboJ
aBExW7FWIzahaBKdRUuW4uvKFq5ZyFoYYgX9TuxCy0/ulMMyo7nlCFb95Y39z9QJ
RcJ9hg3M2uL1ZEOdQsMAuwR6Yjn4SrwNvRGO4F6wvY+iG3PAt4DoETgeOp5ps26j
yLIL7rhjDT6MTQTEDD+x7AZ0/+WpxUg1rdoqnh+Ycbea1cTkEhTIU1Qy75Lyzku2
UEjHMPT0iaxw3X57N0L2saJFqoETPJqVSznCp+wErq8wrZneLLDOyaYMjQ4czN9f
wKXqWwOtJERpUuH/Nfl6USjE3zO8l/C/2gxYDjGSl29x/HmhZzrXCSCk/u0uvIfX
IDSrtpNfMwhIrRbEE9aY
=TBNQ
-----END PGP SIGNATURE-----
