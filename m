X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1532" "Tuesday" "2" "August" "2016" "19:50:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160802235000.50B4F6CC7DC@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request: XSS vulns in Dotclear v2.9.1" nil nil nil "8" "2016080223:50:00" "[oss-security] Re: CVE request: XSS vulns in Dotclear v2.9.1" (number mark "U       cve-assign@m Aug  2   41/1532  " thread-indent "\"[oss-security] Re: CVE request: XSS vulns in Dotclear v2.9.1\"\n") "<6D072F0A5597B449BEE8A9770E0BDBEA018CFE1E@EX01.corp.qihoo.net>" ("<6D072F0A5597B449BEE8A9770E0BDBEA018CFE1E@EX01.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30704 invoked by uid 550); 2 Aug 2016 23:50:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30686 invoked from network); 2 Aug 2016 23:50:11 -0000
From: cve-assign@mitre.org
To: chenruiqi@360.cn
Cc: cve-assign@mitre.org, limingxing@360.cn, oss-security@lists.openwall.com
In-Reply-To: <6D072F0A5597B449BEE8A9770E0BDBEA018CFE1E@EX01.corp.qihoo.net>
Message-Id: <20160802235000.50B4F6CC7DC@smtpvmsrv1.mitre.org>
Date: Tue,  2 Aug 2016 19:50:00 -0400 (EDT)
Subject: [oss-security] Re: CVE request: XSS vulns in Dotclear v2.9.1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I found some XSS vulns in Dotclear v2.9.1
> 
> There are two reflected XSS vulns in Dotclear v2.9.1 media manager
> 
> /admin/media.php
> line 34 $link_type = !empty($_REQUEST['link_type']) ? $_REQUEST['link_type'] : null;
> line 62 $q = isset($_REQUEST['q']) ? $_REQUEST['q'] : null;
> 
> /dotclear/admin/media.php?q=[XSS]
> /dotclear/admin/media.php?link_type=[XSS]
> 
> Fix Code:
> https://hg.dotclear.org/dotclear/rev/40d0207e520d

Use CVE-2016-6523 for both of these issues.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXoS7KAAoJEHb/MwWLVhi2FuoP/2KQzJImOr3YJbBtmeneygL+
0I3PRHXCV9rEgnDG5zJKf7ErqWZuC+9NB+yrUc+rHFsaFeCKNobVx+GU/aBN+rUU
nOKLTdsEU1y2y9GT4PPrD5Sas68ubR858oGRB5vwQluMe/DKnQ0lJhIKJ69o3OdK
yoRYoGDvytmsgJLXheq2AZGEvIliyqliIhZhyoFLKtrqzGONE4OscJM9QP1WbJSQ
W7id+L+pBDWw3aKc5RpnKM6jI4olmREJ7pf34qJzmaGqZIQF7dijSlQ9RlRXfulk
rHsK7R6kn7QbzxYKv5gpQyLlGeGbFI9UKgOqDgz41rXsjRh1Yk3WnJqwqIQ5jek7
YnJPj45zbcpG6KxYa0UVpqUDHC7MwHZVR4RI1d0o295esApCyI6ExxhXygaEmksR
HoJCpVwQPMhnqG5VOZgQ2JegFOMiWBonan0a434QyXq1j5Gv0iKCiusg6B5Mxwi1
Kq8lmIduOUEhvUSNmsoq/MsrdtT0rZ91jN9b8IPKdgAMBS4ecWe9ShE7arLJbERo
V8v3CuT4s7vEKPnGXPiRGISza7pqEKJ1YTHxPAELH4TQ2o2121eQvcC3qyI9KkyF
WLlqJ9KTHnU9itqTy/vcrN9/vHWQgGqG2GHGJlXNwXCj0KEuLAdLP7hx9Eupfq9w
6cOz5yeoD/nf1pC1FkH/
=wolV
-----END PGP SIGNATURE-----
