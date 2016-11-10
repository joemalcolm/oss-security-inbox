X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2068" "Thursday" "10" "November" "2016" "01:03:26" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<17fb8fbcd0f649ae912cfbb78670eb5e@imshyb02.MITRE.ORG>" "49" "[oss-security] Re: jasper: use after free in jas_realloc (jas_malloc.c)" nil nil nil "11" "2016111006:03:26" "[oss-security] Re: jasper: use after free in jas_realloc (jas_malloc.c)" (number mark "U       cve-assign@m Nov 10   49/2068  " thread-indent "\"[oss-security] Re: jasper: use after free in jas_realloc (jas_malloc.c)\"\n") "<1812600.W4HMrhroht@blackgate>" ("<1812600.W4HMrhroht@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5898 invoked by uid 550); 10 Nov 2016 06:03:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5828 invoked from network); 10 Nov 2016 06:03:46 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1812600.W4HMrhroht@blackgate>
Message-ID: <17fb8fbcd0f649ae912cfbb78670eb5e@imshyb02.MITRE.ORG>
Date: Thu, 10 Nov 2016 01:03:26 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: jasper: use after free in jas_realloc (jas_malloc.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/07/jasper-use-after-free-in-jas_realloc-jas_malloc-c
> 
> A crafted image, maybe posted in the past as testcase for another bug, causes
> in the 1.900.18 version a use-after-free.
> 
> AddressSanitizer: heap-use-after-free
> READ of size 8
> 
>     #0 0x7fce4229d29c in jas_realloc ... jasper-1.900.18/src/libjasper/base/jas_malloc.c:182:21
>     #1 0x7fce422a5e38 in mem_resize ... jasper-1.900.18/src/libjasper/base/jas_stream.c:1001:14

> https://github.com/mdadams/jasper/commit/634ce8e8a5accc0fa05dd2c20d42b4749d4b2735

>> There were a number of potential problems due to the possibility
>> of integer overflow.
>> Changed some integral types to the larger types size_t or ssize_t.
>> For example, the function mem_resize now takes the buffer size parameter
>> as a size_t.
>> Added a new function jas_stream_memopen2, which takes a
>> buffer size specified as a size_t instead of an int.

Use CVE-2016-9262 for everything fixed by
634ce8e8a5accc0fa05dd2c20d42b4749d4b2735.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJA0ZAAoJEHb/MwWLVhi2Cx0P/jXkv48yuOWoFzruQ3Lnx4BY
20iq9b2hapEg0DnX7tQteIxmW82S5ZIvxbfATQAB+4st71nu9JK2pI0K7Jaskbke
CHz4JmoMJM8FYEAEvLvAivzG9rlOHSVSt6Cu3cVAqKpwhZrb3WaRhivCXjXVXqVY
SQoXbma5pxLN8EfpjNlHKEGxwgwtBE8Tnx2+d0dO5V889qOMi7Yo4KJ52Jdpm4we
l6o535FKnEocZMOH6ewaAuMUiRrY79thYAhfxfRx3eLPZTNeIRp7WwSDhnMCtnyt
C18ikqc+psPMkXlzl1kRPoLTXi+E+D9Eb7QM/XnMJL4262dcUOtlFUXxrhgKbbjU
oNO+91i0zWV3jeUUqkV9DFRs1C8KoXNY+1Fz7bmC93/D7xWlXDr+L7PEiorwmEx0
ExnxZNtO/CpjsgddGg5VKYwi9RAy8S+08HDgStSk/GSnUC+dRTv4jBmNm+59bbDH
cYHEPcCY6mp0g1iIjceuz9NY9cblRIK55VvfGQ4toY32kUAwAcxvqnpEm1NJkOPC
Rhzpu8viodwUUSKGa9KzYsKCJW7Ux+aiquDK0sD5tU5/WSgHzIbz6LwspGo1pyhv
k5ldUcjA6GWrdTBoqDkFEpEMFR7vEFth0rfnke1N7r7XtyrUbIdFfskox67MFh2U
xQEuzd1WU+k/MSvv7fh4
=7lP7
-----END PGP SIGNATURE-----
