X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2451" "Wednesday" "20" "April" "2016" "00:33:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160420043330.E3AA36C0122@smtpvmsrv1.mitre.org>" "65" "[oss-security] Re: CVE request: opam - missing certificate validation" nil nil nil "4" "2016042004:33:30" "[oss-security] Re: CVE request: opam - missing certificate validation" (number mark "U       cve-assign@m Apr 20   65/2451  " thread-indent "\"[oss-security] Re: CVE request: opam - missing certificate validation\"\n") "<571550CC.1080801@vorlons.info>" ("<571550CC.1080801@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19553 invoked by uid 550); 20 Apr 2016 04:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19533 invoked from network); 20 Apr 2016 04:33:42 -0000
From: cve-assign@mitre.org
To: matthias@vorlons.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <571550CC.1080801@vorlons.info>
Message-Id: <20160420043330.E3AA36C0122@smtpvmsrv1.mitre.org>
Date: Wed, 20 Apr 2016 00:33:30 -0400 (EDT)
Subject: [oss-security] Re: CVE request: opam - missing certificate validation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/ocaml/opam/commit/3d43295df3bb9e67e60801d319bf82c2c8a84d24
> https://github.com/ocaml/opam/commit/5507426030a60c50f7479ac758d116b573fdbd5e
> https://github.com/ocaml/opam/issues/55
> https://github.com/ocaml/opam/issues/2006


> https://github.com/ocaml/opam/issues/2006#issue-57763563

> This was added because of compatibility issues on many common
> installations, in which curl didn't have access to a reasonable list
> of root certificates (in particular for github). I am wondering if
> this is still an issue now ?
> 
> We still double-check md5s of course.


> src/repository/opamDownload.ml
> 
> let curl_args = [
> 
> - CString "--insecure", None;
> 
> let wget_args = [
> 
> - CString "--no-check-certificate", None;


> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=818081#15
> 
> This issue does not warrant a DSA, but may be good to fix it as well
> in an upcoming jessie point release.

We feel that this should not have a CVE ID because the removed curl
and wget options had been intentional behavior. In other words, the
vendor was not particularly interested in ensuring that the client was
communicating with the correct web site. That required relying on
third parties (maintainers of curl and wget) to maintain certificate
data. Instead, the vendor was interested in whether the client was
downloading the correct file. Achieving that can be independent.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXFwYcAAoJEHb/MwWLVhi2lS4P/3g0tuTBDJFhdPjGYs52WncH
4oyAXUPboTN/1ED1D9bcmARcBjE1lik2yMoM4JU0nuwiCj9aPwkXofpt8TCp3As8
haSrupzKzU0bpHeDVnTwXyc4a04CQ9WAaPDqDgPRViZN7AYKoyhF02zVxNN4jyXu
CCPp3YsJCHLUvx5UFCFf5XevQBikINm1HuJiizoePHqrl5l6g0efsOulIpC4cGLo
OobJanX3QNYNQe/bVfFS0R/tJysyDErSRLYzN3prhDDgoe/F1q1Unp/BKlEh0Cub
+y0tw420qnIAhebz2CD3jgO5rAv1RA8zXOETtNl/m93oG/lyJa9YDRTXxetuW3K6
ulOQUrlM0l05cmsLKAYuqtPzeEyv6umfGhH/cG4NjHiaUlgXqihNdHRMjcQl5Bx8
XZ6cAn9XHuMqYBDffuSRspsXIkCZYzwlS6CRqy4uyPN+HH33CB5NHfRAhZFiEDY6
vK3cRgkcjrU6w6yQ43O8ttNiN6YpFocGXfImf/8FM1jcwBjsnl8IKufdZCKS+NJj
8/2Atu+aCdbhEVV+i3iEeeL806c1fH92JKmZxWvkU4/6W8xVS2uITqmuVRhg++5n
tjTH4TrCpi1yjOsl3+PfSSqSsmoVrPe+hHRCXRZYmQ86b+eZXGr2oQt3Cic4xx21
FakLj9DAVjQBfk65+Jud
=/IEH
-----END PGP SIGNATURE-----
