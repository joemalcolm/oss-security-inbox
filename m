X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/09/15
Message-ID: <20140909094635.GC1829@kludge.henri.nerv.fi>
Date: Tue, 9 Sep 2014 12:46:35 +0300
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: Re: pinocchio tmp vuln
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Tue, Sep 09, 2014 at 11:57:11AM +0300, Mikko Korpela wrote:
> Test automation on the other hand IMHO requires that we are working in
> a secure sand box. If there is a malicious user on the same machine
> then I bet things have already gone very wrong somewhere else.
> 
> Ystävällisin terveisin ;) ,
> Mikko

Many times these tools are executed in normal shell environments with lots of
users and not in safe/clean server (even robotfw). In my opinion these issues
should be fixed in code and get CVE assigned even the risk is minimal. 

Code audits for PyPi packages are more than welcome thought some level of
coordination is required to avoid confusion. These are often easy to report and
fix, but I understand if reporter has lack of time. Kurt if you need
coordination help you can contact me off-list.

Ystävällisin terveisin ;),
Henri Salo
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlQOzHsACgkQXf6hBi6kbk/qJACfciJ1RPqjM11kWF150v16GOGj
91YAoIn1EiKD2eYNnB6YSS0cFAz2Io1h
=uljW
-----END PGP SIGNATURE-----
