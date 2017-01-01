X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3851" "Sunday" "1" "January" "2017" "12:51:35" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a5c8bd5fcbf94dfe83238915b480add2@imshyb02.MITRE.ORG>" "97" "[oss-security] Re: libtiff: multiple heap-based buffer overflow" nil nil nil "1" "2017010117:51:35" "[oss-security] Re: libtiff: multiple heap-based buffer overflow" (number mark "U       cve-assign@m Jan  1   97/3851  " thread-indent "\"[oss-security] Re: libtiff: multiple heap-based buffer overflow\"\n") "<5357154.SVZ41LeQyt@arcadia>" ("<5357154.SVZ41LeQyt@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32102 invoked by uid 550); 1 Jan 2017 17:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32069 invoked from network); 1 Jan 2017 17:51:47 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <5357154.SVZ41LeQyt@arcadia>
Message-ID: <a5c8bd5fcbf94dfe83238915b480add2@imshyb02.MITRE.ORG>
Date: Sun, 1 Jan 2017 12:51:35 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libtiff: multiple heap-based buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/01/01/libtiff-multiple-heap-based-buffer-overflow

At the moment, we will assign IDs to the issues listed with a write
impact. We will later look at the issues listed with a read or
undefined impact, but this has some complexity. One example is that
9657bbe3cdce4aaa90e07d50c1c70ae52da0ba6a is a one-symbol code change
that fixes both a "READ of size 1" outcome and a "WRITE of size 1"
outcome. Another example is that a "READ of size 1" within the source
code of a command-line tool (not part of the library code that could
be used in an arbitrary application) may have no risk. Apparently all
of the issues were public on github.com and/or bugzilla.maptools.org
during 2016 and thus they have CVE-2016-##### IDs. It would be useful
to include the specific bugzilla.maptools.org URL for each issue.

> tiffcrop
> https://github.com/vadz/libtiff/commit/9657bbe3cdce4aaa90e07d50c1c70ae52da0ba6a
> AddressSanitizer: heap-buffer-overflow ... WRITE of size 1 at
> tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_unix.c:340:2

>> 2016-12-03
>> tools/tiffcrop.c: fix readContigStripsIntoBuffer() in -i (ignore) mode so
>> that the output buffer is correctly incremented to avoid write outside bounds.
>> Reported by Agostino Sarubbo.
>> Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2620

(see also http://bugzilla.maptools.org/show_bug.cgi?id=2622 Comment #1)

Use CVE-2016-10092.


> tiffcp
> https://github.com/vadz/libtiff/commit/787c0ee906430b772f33ca50b97b8b5ca070faec
> AddressSanitizer: heap-buffer-overflow ... WRITE of size 16 at
> tiff-4.0.7/tools/tiffcp.c:1171:11

>> 2016-12-03
>> tools/tiffcp.c: fix uint32 underflow/overflow that can cause heap-based
>> buffer overflow.
>> Reported by Agostino Sarubbo.
>> Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2610

Use CVE-2016-10093.


> tiffcrop
> Upstream said that the previous changes, fixes this too. It needs to be
> bisected.
> AddressSanitizer: heap-buffer-overflow ... WRITE of size 2048 at
> tiff-4.0.7/libtiff/tif_next.c:64:9

>> http://bugzilla.maptools.org/show_bug.cgi?id=2624

The vendor response was "I cannot reproduce with CVS head. But I
reproduce with 4.0.7 so this has been fixed by recent commits. Could
you track CVS head for your next fuzzing sessions so as to avoid
wasting our time to both of us ?"

If there is additional information from bisection, please let us know.


> tiff2pdf
> https://github.com/vadz/libtiff/commit/c7153361a4041260719b340f73f2f76b0969235c
> AddressSanitizer: heap-buffer-overflow ... WRITE of size 2 at
> tiff-4.0.7/libtiff/tif_unix.c:340:2

>> 2016-12-20
>> tools/tiff2pdf.c: avoid potential heap-based overflow in
>> t2p_readwrite_pdf_image_tile().
>> Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2640

Use CVE-2016-10094 for this off-by-one error.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYaUCIAAoJEHb/MwWLVhi2FXwQAIrGz699cKKw4thb2xMKcfuV
P7ZOqAkOVZjx/q9DVODtLym6HLV2X5ZXbaTQRun23rImjbIZ3mVNBEvt3zTXIUUO
sVAV2kwmITOj8fxf4khCeNWuTd2dYe2I9a6wQxSD6lJcnWVt7GYSrwmnTcR2yxDy
D5HVn3K0VbMddktBM8W+8503WPamCicHFDXbjF+26oxH5yPAx9CvlUwmbsszzAQP
XnYxVNmdj5bMxotFJ1yX/VlFKzUaz/q4FAftWVIXQXlsv4Y0eY0ezTkitMIjJnsV
TA0jCUXKyhHTykwKklx4UNZf3BLqAIp49kbSeCyJoyR0UbqSrVVLj6OwZuJGgWnj
mPK33fViCG1O2couw9y+sh1F2eK3tQAXyCKMdqMaVGzgPzopagRTvK6N2LWQb5rW
6rjR8xjXOBnysm/6QJibP4WPRPzRQqGeh3Wfb7mBrxxHC+UiMOpHh2rF04zRtYnu
P+RQB7jOs5p4ALt3l47aBFozjnHOZk3ROLV1HqVqNP3EU0jOoBNAkt24MKdd6Ixi
itRg3AqviVXMAcxhJ0lQ7M8CMeFqSYCqa45VRhAtQ08WAQ9Dt4KUiUZFKu4DQHL9
k6u+DNJLmhLWF17ub+eC79dhu99R05TP8maEo2pMuXjwsbKjdWM+BZqGZac3Y/FS
4Kx6/mQjvfUlqCRmFWlO
=WRWR
-----END PGP SIGNATURE-----
