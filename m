X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1342" "Monday" "16" "January" "2017" "19:11:33" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e442aa4c259f4f8f855d4e2125208702@imshyb01.MITRE.ORG>" "35" "[oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)" "^CC:" nil nil "1" "2017011700:11:33" "[oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)" (number mark "U       cve-assign@m Jan 16   35/1342  " thread-indent "\"[oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)\"\n") "<1672685.X2bF2OodFF@blackgate>" ("<1672685.X2bF2OodFF@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26246 invoked by uid 550); 17 Jan 2017 00:11:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26046 invoked from network); 17 Jan 2017 00:11:45 -0000
In-Reply-To: <1672685.X2bF2OodFF@blackgate>
Message-ID: <e442aa4c259f4f8f855d4e2125208702@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
Date: Mon, 16 Jan 2017 19:11:33 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)
To: <ago@gentoo.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-read-in-jas_matrix_asl-jas_seq-c
> 
> AddressSanitizer: SEGV on unknown address
> The signal is caused by a READ memory access.
> 
> jas_matrix_asl ... jasper-1.900.27/src/libjasper/base/jas_seq.c:376:11

Use CVE-2017-5505.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYfV+YAAoJEHb/MwWLVhi2JbMQAKJyXcljg++i7XUckrbXk7aw
rtgu6dCKSX2Vuaj1A16M0z4axW5rBztxCIKYW8YsB9h5WtQaEmN2S5yVHvnWZXAm
/FYxaAWXsGKBEpL/V/MH7xbcBgoqgwDhV4RqS/qdJqesftimzep8DN0Ko88ix2Qd
Sqbn0YpPEIj/BeWib7Sji7wX/9a615hL4wdEK2GmmFOUeWSIyVUEL42aGxNlWSe1
FLNg3/YC+LV+8XSB2HKg2gAKtQICj0ZBQAiJRJqAtSWrKCdc8wrVHRZfX9eSuPdp
1YiCiNoQu6yQTopiWPY8HzILhMIg9Ao0gQVplHt1Uwqmke37oQTO+rzPQ1bY8R8m
i/3HqRMmMh8DYPtYd09GZ5YERvuGXC6I46hQNFL1aTK71tMJjHwoypO+1Zh50wkZ
uv9+tYu2uFm4FSk/ngaxphfqqr/Kchuni5xU7IVGRgyE6I7akMK3+lBrff1ppFYN
cewXe3/Kb7SpudiEKRPfhLMSf9xbwt9p6k/osc5KUYfNpH9hSC5+DzTuZeBvuo9z
dCD7LN6HeYRYLtw8z7gvCykQo1ij2j51n4C7gYo9Ju7qElceEskHjNhx9En52vxd
TqJ5ru/07S60soE1aOHBQW+262Kr6/0BmbJrQe/DEeDkPczO4GfX1vHZ205yyyyf
ODkC2oAB3jzKmXez32l1
=w95I
-----END PGP SIGNATURE-----
