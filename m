X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1941" "Monday" "5" "December" "2016" "17:12:17" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<1d75d139d90f46fba7f6a0d40d662274@imshyb02.MITRE.ORG>" "58" "[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow" nil nil nil "12" "2016120522:12:17" "[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow" (number mark "U       cve-assign@m Dec  5   58/1941  " thread-indent "\"[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow\"\n") "<93993db8-1bd4-85e5-fe22-06d3a4e44117@canonical.com>" ("<93993db8-1bd4-85e5-fe22-06d3a4e44117@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28070 invoked by uid 550); 5 Dec 2016 22:12:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28042 invoked from network); 5 Dec 2016 22:12:30 -0000
From: <cve-assign@mitre.org>
To: <tyhicks@canonical.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<security@ubuntu.com>, <sms@antinode.info>
In-Reply-To: <93993db8-1bd4-85e5-fe22-06d3a4e44117@canonical.com>
Message-ID: <1d75d139d90f46fba7f6a0d40d662274@imshyb02.MITRE.ORG>
Date: Mon, 5 Dec 2016 17:12:17 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://launchpad.net/bugs/1643750

> The zipinfo buffer overflow occurs due to a flaw in zipinfo.c's
> zi_short() function:

> #11 zi_short () at zipinfo.c:1986
> #12 zipinfo () at zipinfo.c:919
> #13 0x000000000041144a in do_seekable (lastchance=lastchance@entry=0) at
> process.c:974
> #14 0x0000000000411bdf in process_zipfiles () at process.c:401
> #15 0x0000000000404191 in unzip (argc=0, argv=0x7fffffffe628) at
> unzip.c:1278

> The overflow occurs when the two-byte compression method field in the
> central directory file header is greater then 999.

Use CVE-2016-9844.


> consider assigning a CVE to the related
> `unzip -l` issue from 2014.

>> http://www.openwall.com/lists/oss-security/2014/11/03/5
>> 
>> list_files() in list.c
>> 
>> sprintf(&methbuf[4], "%03u"
>> 
>> *printf() field-width format specifiers don't restrict the length of the
>> output

Use CVE-2014-9913.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYReVRAAoJEHb/MwWLVhi2sDQP+wZ1soybVzOtLc5BTXlHE6fD
48H0AW+qIG6eKrzxUWfi+Boo3xs3mwSqLnqTBrLiqGqbxLk4ssJjFVYvRkEKPAHn
Y6OeAgO6scW7m9EtP/bZiOuDionz8uS04hZmLq4RgJu/VXjj7SDP1MSHBRHYECZI
wWpL5NZyBpv8Z2ZAs2Cn92piP4rvAXzVXt5Qxi1ay5O4II+PXYtDkBMlh88r4GVt
j6+9fjcpuG2S9lG3t7/O4oU99vaCRfDqFgwMZE62J8N3l9Fs+Z6zngr+rGu2m4xr
kx6Ox5QWsuNVWLGULs6gy7ZI7845dc3HppZEBG+jjN8rhPTtwRWaAgwftsDYIRUW
ZuUMLWyoTjinvqeAJE6PRhzmYXNfZ4ghMe82+QnF5ssMdJQP/S89EFyJGok7e0Ei
Ie8qNpOtkm+TByyc161pEYyP3v3oMoMMZMi7znVEg2cR8tupeu7SeX8EvczEtxkI
4p5wQcZvIFq0ugIaTJ0tHqru5Iw60xCYmitNyd+91PEiO7hT6/5DShXJ90XLt9E5
ozYURyrOsu5JmAsE7P34vGHQpqAXzU4DJQ3Y8136T798t3o4qUU5zMPV3T7StC5z
R8yU9YOFetQwToSoEfzulELaYES+GT8jHjf/5q1JFzFBZWQvd8lqBvf/rm7yF3Tm
qUheoN1jfmydELo6uwea
=sfNe
-----END PGP SIGNATURE-----
