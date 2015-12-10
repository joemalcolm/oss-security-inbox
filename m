X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1826" "Thursday" "10" "December" "2015" "01:19:34" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151210061934.76ED042E02C@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key" nil nil nil "12" "2015121006:19:34" "[oss-security] Re: CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key" (number mark "U       cve-assign@m Dec 10   48/1826  " thread-indent "\"[oss-security] Re: CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key\"\n") "<273719694.18743924.1449624723028.JavaMail.zimbra@redhat.com>" ("<273719694.18743924.1449624723028.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32191 invoked by uid 550); 10 Dec 2015 06:19:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32172 invoked from network); 10 Dec 2015 06:19:46 -0000
From: cve-assign@mitre.org
To: wmealing@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <273719694.18743924.1449624723028.JavaMail.zimbra@redhat.com>
Message-Id: <20151210061934.76ED042E02C@smtpvbsrv1.mitre.org>
Date: Thu, 10 Dec 2015 01:19:34 -0500 (EST)
Subject: [oss-security] Re: CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A malicious user with a local account may be able to escalate privileges
> and take control of local system by abusing the user key subsystem.
> 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=096fe9eaea40a17e125569f9e657e34cdb6d73bd
> https://bugzilla.redhat.com/show_bug.cgi?id=1284450

> The following may be used to trigger the bug in the user key type:
> 
>   keyctl request2 user user "" @u
>   keyctl add user user "a" @u
> 
> BUG: unable to handle kernel paging request at 00000000ffffff8a
> 
> A similar bug can be tripped by:
> 
>   keyctl request2 trusted user "" @u
>   keyctl add trusted user "a" @u
> 
> This should also affect encrypted keys

Use CVE-2015-8539 for all of the mentioned variants of the problem
with all key types.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWaRkVAAoJEL54rhJi8gl5o/oP/1YN18NSpjPeJXZxqLEyK36Z
P/Oh+smZA8SOns1cgtas7hN9u+4YDwec+t70GHxXLaxJ5FkkP/cSOHKBw1LvGfnT
FXlGbMEtROjTgj1BnaIInD7k6jS/v4Yktsx+m3OtRixOKYUiIAkUCw02oxXzFzOE
mvhvrOHIFNFe461uxDSjWS92stiTTNz+M8fr78At+jvZTHf1NKHSO00toKSR91h0
O8U3FuGdCp93wXbmPbSWA6V+8BqXyb9KoRZIsjy0ZPmdrkiN93kC+HMoajs7640Q
+kmpr47lU1m+ylZR+lb5fiKd+LZQ0nfWY1NrxSVhZdf+JBuCwXbio/PZL81FCXx8
LqQnb3okD+y58vgzgNjUjhNYxNFSj2lnyBQN10nsfuaJhwebMhwv1DoxAU+zstoa
fxv0DzD0huB6+8y6X5LlnMMRuBddevZOM7fY2mdvVxidk5g2S1rbVVkFVFsWpMJc
nuudGfPDpVeNIK7ynoe0HTmOKzCIrk++wQf0G65kFy2fgkJbAK6VKDSBciwXV89f
ehfmZz2prmimKQWJaYFvRx2Yt6+lQPb+sKWBo2VD+Ej3UDQNme9Kc66t7Ya1/QUB
H2cCxdtaQe0czg25onwiQ1/mRTEH73pWMItCGykaz1VnT3wfODDJRsdA0zz9/Up1
cSjiCso7a7rcwyBcNLtX
=eqXE
-----END PGP SIGNATURE-----
