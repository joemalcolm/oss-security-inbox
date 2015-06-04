X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2581" "Thursday" "4" "June" "2015" "16:48:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150604204815.131408BC040@smtpvmsrv1.mitre.org>" "62" "[oss-security] Re: CVE requests / Advisory: phpMyBackupPro" nil nil nil "6" "2015060420:48:15" "[oss-security] Re: CVE requests / Advisory: phpMyBackupPro" (number mark "        cve-assign@m Jun  4   62/2581  " thread-indent "\"[oss-security] Re: CVE requests / Advisory: phpMyBackupPro\"\n") "<CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>" ("<CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3995 invoked by uid 550); 4 Jun 2015 20:48:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3977 invoked from network); 4 Jun 2015 20:48:26 -0000
In-Reply-To: <CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>
Message-Id: <20150604204815.131408BC040@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  4 Jun 2015 16:48:15 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests / Advisory: phpMyBackupPro
To: mattd@bugfuzz.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> * CVE-2009-4050 = original fully-arbitrary file download
> * New 2009 CVE = incomplete fix in 2.2(?) (adding a file extension whitelist)
> * New 2015 CVE = incomplete fix in 2.5 (adding a filename suffix blacklist)

We haven't been able to figure out why another CVE-2009- ID would be
needed. The year portion of a CVE ID typically refers to when the
vulnerability became publicly known, not (for example) when the
vulnerability was introduced. Before this year, apparently nobody had
disclosed that there was a vulnerability in version 2.2 or later in
which a .php file, but not an arbitrary file, could be downloaded.
Also, the phpMyBackupPro doc/HISTORY.txt doesn't have any entries that
we would consider sufficiently close to a disclosure of that .php
download vulnerability.

So:

  CVE-2009-4050 = original fully-arbitrary file download
                  (the known affected version is 2.1)


  CVE-2015-4180 = download of specific configuration files
                  with a ../../files/filename.php request (the
                  presumed affected versions are at least 2.1 through
                  2.4)

                  (other files with approved extensions can also be
                  downloaded, but this is intentional behavior, not
                  part of the vulnerability)


  CVE-2015-4181 = download of specific configuration files
                  with a ../../files/../files/filename.php request
                  (the presumed affected version are at least 2.1
                  through 2.5)

                  (again, other files with approved extensions can
                  also be downloaded, but this is intentional
                  behavior, not part of the vulnerability)
              

CVE-2015-4181 exists because of an incomplete fix for CVE-2015-4180.
CVE-2015-4180 exists because of an incomplete fix for CVE-2009-4050.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVcLkNAAoJEKllVAevmvmsP1kH/3McXj3rkNn/KdgHBddNj5M9
tnwhb1hDugmZ8H4EqfypexsxELCZ8Wc21OrqSQCdHpGumPZHWGfN5Sa49FlLcz2R
ghJ5/O6pLhMYudPS9WByfQmTTSFMSygPCUKNxg5zawulMJTEu3oK+Ra47StOQn+q
hEiI9/HqDoGIVr+4gUkyFFyCdFSsDq9hBJFsWWXAzsrIAKBclY+GYpmzxk3bY61Q
jgmFMnZyfV9JFw1MPMPR/RZ5PGBjppo2EGO9EaWFg4uhowuNCEhv1CZQi4kTM9sZ
36BLsVbZ78yI38TGyK10nZxfEhlBmMLmOM+/rpBGeWHRLNLK+o6TQJTqvuYdUjE=
=PQsw
-----END PGP SIGNATURE-----
