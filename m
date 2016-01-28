X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1229" "Thursday" "28" "January" "2016" "01:40:13" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160128064013.706886C02FC@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: invalid Read in the JasPer's jas_matrix_clip() function" nil nil nil "1" "2016012806:40:13" "[oss-security] Re: invalid Read in the JasPer's jas_matrix_clip() function" (number mark "U       cve-assign@m Jan 28   33/1229  " thread-indent "\"[oss-security] Re: invalid Read in the JasPer's jas_matrix_clip() function\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0DBD5A35@EX02.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBD5A35@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18278 invoked by uid 550); 28 Jan 2016 06:40:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18260 invoked from network); 28 Jan 2016 06:40:25 -0000
From: cve-assign@mitre.org
To: limingxing@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0DBD5A35@EX02.corp.qihoo.net>
Message-Id: <20160128064013.706886C02FC@smtpvmsrv1.mitre.org>
Date: Thu, 28 Jan 2016 01:40:13 -0500 (EST)
Subject: [oss-security] Re: invalid Read in the JasPer's jas_matrix_clip() function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> vulnerability in the way JasPer's jas_matrix_clip() function parsed certain JPEG 2000 image files.
> 
> Segmentation fault.
> jas_matrix_clip
> jas_seq.c:286

Use CVE-2016-2089.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWqbd7AAoJEL54rhJi8gl5oekQAK6bdMp7NHCZefN6JR6EUtAw
40qO3ZPE9Q2BXWF1EMCDOOY38d6KVAmNd0tpUO8gIhrKAMTERm3vJo6T4zmieJaM
nGixHSOwGTNRtPVgR8uhQqcm3b/bIntU30Qjvk9gTn2pdSTaVJbHJdcQMYhuTTrm
ZSNXaASVT7f6Eohw7LKnpUkFJ3Nx5s/PpLqAiTfGXEck4aVdL6r9hKGi0XBuA13m
s5Hc5hAr9us89zM6Q6dlluGdP/RIs1yvsZhoOGgplqqv3rF/IKHEkxo7PedSJR52
dI5JeGbgJnv7YCBo7gOa7z6j5hADJthzmeIiIJBaOgEkwRBLVw/06mKT66yg2Brf
F7FNjY7lFvilQaN0G/2YgtusejovWXtqlpCaA2GVNRmXuPHu7QgmmCnH5ZLFldPG
HeNYtFfYtaEDVHGSLwFdHO2vCYLg//r4pBhLDVBdqKQATtehVe547yYZQOzpLMS6
NivtNV4EtloEYMb18xEmKOTe5Set7u+pfwhTXjQ5Ic+4WD6k6nqXUUQravF1wQH0
KAziYYqlD7NkfveLiX6SleISKZZcL69EhffjoKMMEH7tAlhn7e23qrtMWlk1HgL6
i0k1PQsoleAcITP3bsjO4MGrlzSuLmoZAME56FxF8gpKN6M/YPU0Ia71m59R5R9V
ASipdwlGWBq39LAaDg1X
=iTFI
-----END PGP SIGNATURE-----
