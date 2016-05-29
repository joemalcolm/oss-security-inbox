X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2202" "Sunday" "29" "May" "2016" "14:46:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160529184648.168BA33201D@smtpvbsrv1.mitre.org>" "54" "[oss-security] Re: CVE Request: libgd - gdCtxPrintf memory leak" nil nil nil "5" "2016052918:46:48" "[oss-security] Re: CVE Request: libgd - gdCtxPrintf memory leak" (number mark "U       cve-assign@m May 29   54/2202  " thread-indent "\"[oss-security] Re: CVE Request: libgd - gdCtxPrintf memory leak\"\n") "<CAEr-gPHkGeMp-k75G5X3MNutXvNx9Q35uYtYrKcdGsH_0wUKQQ@mail.gmail.com>" ("<CAEr-gPHkGeMp-k75G5X3MNutXvNx9Q35uYtYrKcdGsH_0wUKQQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7664 invoked by uid 550); 29 May 2016 18:47:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7632 invoked from network); 29 May 2016 18:46:59 -0000
From: cve-assign@mitre.org
To: fernando@null-life.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEr-gPHkGeMp-k75G5X3MNutXvNx9Q35uYtYrKcdGsH_0wUKQQ@mail.gmail.com>
Message-Id: <20160529184648.168BA33201D@smtpvbsrv1.mitre.org>
Date: Sun, 29 May 2016 14:46:48 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: libgd - gdCtxPrintf memory leak

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/libgd/libgd/issues/211
> 
> length from the failed vsnprintf attempt to copy more than 8000 chars
> on a 4096 buffer ... libgd returns this length as is and PHP prints
> more information from memory than it should.

> https://github.com/libgd/libgd/commit/4dc1a2d7931017d3625f2d7cff70a17ce58b53b4
> 
> xbm: avoid stack overflow (read) with large names #211
> 
> We use the name passed in to printf into a local stack buffer which is
> limited to 4000 bytes. So given a large enough value, lots of stack
> data is leaked.

Use CVE-2016-5116.


> PHP devs marked it as a "not a bug" because the bundled version of
> libgd with PHP 5.5 is not vulnerable, however using PHP with
> systemwide libgd is a common practice.

For purposes of CVE ID assignment, we do not feel that it's necessary
to suggest a decision about whether this must also be considered a
vulnerability in any PHP 5.5.x releases.
4dc1a2d7931017d3625f2d7cff70a17ce58b53b4 indicates that it's an
upstream bug, and the bug has plausible security relevance in some
contexts (which might be contexts involving integration of libgd and
PHP, or might be non-PHP contexts).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXSzioAAoJEHb/MwWLVhi2otMQAIa8J38OGLLay1kQr/aEq4q9
4dGoTKtxLdlVWVjlb/jhrWHQNY9YDj4tfTHJROKbCakdSTtyaD9r1aTkaTY6Ks8y
H+TEUtzwGFYNeT/4JvKeF77i+u9ILVVeKIF0ZLL6VjKhDSO8zrBXsWx5fcofa4gH
mjrxhOWw81W6N0jT0kxajqZuFWB5d6zLNovw5T3BG4g7kl0yOB//dCUhil/Zey7I
bNJTj7+2TVCTI9s1+4Rs2AqU6XdrrGUSP8iTRiaBXgLMKny2a9X08hVmxZw6B2tW
70NN8pTd/yQc9G77oHMDoNOc0nDV3/ZSQyt4abs4PWowbfOcZdnvIVBDyOKzY7Ev
55QIyizv0Se7/QV0bn3C5/3DiuV9olVy9rJ0OyxDdLCALcDyozG+L62ZyicQMtae
/s2HJWa4numcn69fwr1nzYYnvwZWO3Bh+SsnQfrCv973t25mJNnA3CL4UMtWSH6c
Qbh5/eLZUkRIBYFCaD2uoCjXLXrTwwZ8BNiN+cUc99NjYCkwAE8crtO6D623yymt
6CZkKdr9UkbDCF3oU3ZFecEBCs6wk368PoDmIoopNXwN6lkTfKFH7UmawhsB4jQw
SnM2CKgANYCzFPKop8nsoBI/o8bEn4qBkZ3G8qRoI+NpvZvZ06IIYsti8cqAUChK
9MEsup58hdRErJXYoUPJ
=yK1x
-----END PGP SIGNATURE-----
