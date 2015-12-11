X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1863" "Friday" "11" "December" "2015" "15:33:31" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151211203331.ECA5B42E177@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE for git issue - please use CVE-2015-7545" "^Cc:" nil nil "12" "2015121120:33:31" "[oss-security] Re: CVE for git issue - please use CVE-2015-7545" (number mark "        cve-assign@m Dec 11   44/1863  " thread-indent "\"[oss-security] Re: CVE for git issue - please use CVE-2015-7545\"\n") "<DM2PR09MB027022D8FA55B820E2975AF0CCE80@DM2PR09MB0270.namprd09.prod.outlook.com>" ("<DM2PR09MB027022D8FA55B820E2975AF0CCE80@DM2PR09MB0270.namprd09.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17743 invoked by uid 550); 11 Dec 2015 20:34:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17467 invoked from network); 11 Dec 2015 20:33:45 -0000
In-Reply-To: <DM2PR09MB027022D8FA55B820E2975AF0CCE80@DM2PR09MB0270.namprd09.prod.outlook.com>
Message-Id: <20151211203331.ECA5B42E177@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Fri, 11 Dec 2015 15:33:31 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE for git issue - please use CVE-2015-7545
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> MITRE has been actively working with the upstream vendor to determine the
> appropriate number of CVEs for the vulnerabilities.

This was completed today.


>> CVE-2015-7545 Git: Some protocols (like git-remote-ext) can execute
>> arbitrary code found in the URL

MITRE has accepted this CVE-2015-7545 ID for this vulnerability
disclosed by the upstream vendor in these references:

  https://kernel.googlesource.com/pub/scm/git/git/+/33cfccbbf35a56e190b79bdec5c85457c952a021
  https://lkml.org/lkml/2015/10/5/683
  https://github.com/git/git/blob/master/Documentation/RelNotes/2.3.10.txt
  https://github.com/git/git/blob/master/Documentation/RelNotes/2.4.10.txt
  https://github.com/git/git/blob/master/Documentation/RelNotes/2.5.4.txt
  https://github.com/git/git/blob/master/Documentation/RelNotes/2.6.1.txt

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWazJoAAoJEL54rhJi8gl5plgP/jFffZBtqZbaDBbKk4b8a+tH
Jo+eBQtn/rj8SHrGGos3Or548rGNAjtm7cYZ/fYZOOQiJReUnkIzBHdBmUMqqFZy
2r55+Mok7o7vpVYAvxqooZ8ay3RlHOmuixhw8ZwKTwITKVu7OWsCE2qpaXCB7QzV
lpSh+t0xn9o6Jc+kF/eVP/J4R0X8qX6EU/JtAHHDhl1CEORujH/0bb4pAie/kJ3h
vlCxn51UwQwd9q3mVrxTjFziEZOG/9UV7XowdSS1bQxt0BhTkQH42DnHDrBZCQHc
3vP9pN/23khsRQ3swUmcWD3Z7fmazqG3Q5UIPPQhrTmeYrzbryCBUAgrzWnmVbzN
+OHYQWYv+JwVO/u9b3h5MFwqx0bdWcNAX2/3Bbrw8POx8c2d4+QPwX+BgQ+RfeEX
z6nrfiMCj+C8vwClHzX46ipw9WiCTb+aSj22fOFPESbz+STC1QCNuO3qu4QYsuvO
8nchEB4LBtZ8FJBZtTTd0UMp4j/ojfXA/vm9qP+G/fwzaAzBtK9ncr9BHh+kEqQt
iaUCHm7C10vKZ95q9s5cRz9AiCbmJK93aij1YYZxquHITP3HJUSK4L2gyHdc0jXO
yqK4CHxWavslXfksnlEeRviaqNy52W429QJ/HYE6i83IQxE6tLGN7gHk5BF1LaK2
wtl1kFSYHF16UWCGzns7
=ESLW
-----END PGP SIGNATURE-----
