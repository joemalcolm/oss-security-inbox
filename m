X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2525" "Wednesday" "5" "August" "2015" "12:36:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150805163639.18AE06CC065@smtpvmsrv1.mitre.org>" "62" "[oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" nil nil nil "8" "2015080516:36:39" "[oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" (number mark "        cve-assign@m Aug  5   62/2525  " thread-indent "\"[oss-security] Re: CVE Request - Go net/http library - HTTP smuggling\"\n") "<CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>" ("<CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12046 invoked by uid 550); 5 Aug 2015 16:36:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12022 invoked from network); 5 Aug 2015 16:36:50 -0000
In-Reply-To: <CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>
Message-Id: <20150805163639.18AE06CC065@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  5 Aug 2015 12:36:39 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling
To: jbuberel@google.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/golang/go/commit/117ddcb83d7f42d6aa72241240af99ded81118e9
> 
> * Invalid headers are parsed as valid headers (like "Content Length:" with a
> space in the middle)

For purposes of CVE assignments, we feel that this needs to be
categorized separately from the other parts of the report. The primary
factor is that there are different sets of affected versions. This
behavior apparently was not present in all versions of Go: it was
added in February 2012. Also, it is not really an error in determining
the semantics of a set of headers; it's a security-relevant error in
interpretation of the syntax of an individual header.

Use CVE-2015-5739.


> https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c6680f
> 
> * Double Content-length headers in a request does not generate a 400 error,
> the second Content-length is ignored

Use CVE-2015-5740 for the reporter's finding of a security-relevant
RFC 7230 3.3.3 4 violation ("MUST respond with a 400 (Bad Request)
status code").


300d9a21583e7cf0149a778a0611e76ff7c6680f also has code changes that
were not mentioned in your "as provided by the reporter" section. Our
interpretation is that there were separate internal discoveries of
other security-relevant RFC 7230 violations, such as "MUST NOT send a
Content-Length header field in any message that contains a
Transfer-Encoding header field." Use CVE-2015-5741 for one or more
internal discoveries reflected in
300d9a21583e7cf0149a778a0611e76ff7c6680f.


Finally, if there is a code change in
300d9a21583e7cf0149a778a0611e76ff7c6680f that is exclusively for the
purposes of hardening (i.e., no RFC requires the change as a smuggling
security fix, and the code change is not for addressing an
individually exploitable problem), then that code change is outside
the scope of CVE.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVwjr0AAoJEKllVAevmvms4SgH/1K26OmJwLV0/D+IgSIcWq8q
ecN2DlngcNpU7W/fq9o/brN4hoMGVzh/aEPU3JIqC0JbY0OhidPe/DZmqLcndnwb
iQ4wS4r89akrzZpdOYc09oBlqyxKtto1exwFHWqqdVIbBjHdq+nQhEBwYGyjf/XK
0DyEX6f72Msa//HFhNKycOKM4KPKsi1Gh5Dl+L9nddWnPdTnTSHoIdD+RGmXDDkD
8i6WI/e5QVrGL2g24mrpefDUWX/p9T/cx9LR1hiiUUDuvns40NVz11E1i8PD2fv3
wRzEjUqyt94syYh9PNa0+ZFH7sPUyYOhnpi3/1UzRkSUSI++FfpDFrq3rOEZ4Jk=
=rNSr
-----END PGP SIGNATURE-----
