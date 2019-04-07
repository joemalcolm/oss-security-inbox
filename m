X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1620" "Sunday" "7" "April" "2019" "12:30:32" "+0300" "Henri Salo" "henri@nerv.fi" nil "39" nil "^Date:" nil nil "4" nil nil (number mark "        henri@nerv.f Apr  7   39/1620  " thread-indent "\"Re: [oss-security] XSS in roundup bug tracker 404 page\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] XSS in roundup bug tracker 404 page" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24467 invoked by uid 550); 7 Apr 2019 09:30:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24449 invoked from network); 7 Apr 2019 09:30:47 -0000
X-Virus-Scanned: Debian amavisd-new at coconut.nerv.fi
Message-ID: <20190407093032.syufxuqogu7oul54@tunkki.bugs.fi>
References: <20190405114501.1bb98c2a@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; x-action=pgp-signed
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190405114501.1bb98c2a@computer>
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Sun, 7 Apr 2019 12:30:32 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] XSS in roundup bug tracker 404 page
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Fri, Apr 05, 2019 at 11:45:01AM +0200, Hanno Böck wrote:
> I recently discovered that the python bug tracker had a trivial
> reflected Cross Site Scripting vulnerability on the 404 error page.
> 
> It essentially just reflected the URL path, so anything like
> http://hostname/<img src=x onerror=alert(1)>
> (properly URL-encoded, but browsers do this automatically)
> would result in XSS.
> 
> The software python is using here is the Roundup issue tracker, it's
> been reported there as well [2] and fixed in their repo (but no release
> yet).
> 
> [1] https://github.com/python/bugs.python.org/issues/34
> [2] https://issues.roundup-tracker.org/issue2551035

MITRE assigned CVE-2019-10904 for this vulnerability.

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE/aVSDznAZReWTkxKJ633pE6qdXQFAlypwzcACgkQJ633pE6q
dXTd0hAAp4/CcLcf1EAEkk3OjPwYTmCWb35N/NeWV3YsK/c+iqAu9U+4zqhuFqqC
hzCjW5/4wGrZPsjQhNGlRiXo+dNmh3mDdO7wGXMe5rDCR60MDS+95WjBu53nf8pO
L1DSZOohH216w6dzlGjyzXuqhYN5j3lOBPi5Eib4zAzYxBq0uEOkj7LKgZxWY8H2
zR63LlDgSlzntB2vITRxQ0H84YFO3MWq5j8wokbozdLS8CwGmgb9gr0BrHfE2QqU
x11h38sfErrbEe9fVLeHvPqeOr3kw/S3mKNtuu48uaiEczMpTKca6d7oeSJiPkw7
4z12A80sdQHp95hXWZAGe3gmLAJDMx5k00uuCbTMvuU6fZT8DGIxf93IoqF4fzjM
+HT/7CWdY+Itf9c5JcibE7eAMCmXRI5AFtrS3ClpPU+vAf3ZXwJsnJuIsBZr3xl/
xfKCKW3bkK6O8ZF4YEP8dy/SQDnJV59YIR3MAsrV6DiJEh+6WVV+ca8c4AF99zt1
Q6xrZbxkphQuUdgNNGjLbu4kPoc1e/E711QyqYW+5uzCQsl5kqcB1Xe8ZzlH1mo1
298a8TW6HyL3+W22pu+Wz6vp7/KWf7AL5mPJMt460jvNsvIcpcj9+tV2OZMF9ufK
8yHVUEHMND3DAew6Hc4ZYcIr1nfanDL3aO79sPi8lPSeyE0WApo=
=9EYa
-----END PGP SIGNATURE-----
