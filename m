X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1736" "Thursday" "2" "June" "2016" "17:47:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160602214746.6F1FE8BC0C8@smtpvmsrv1.mitre.org>" "49" "[oss-security] Re: CVE request: DoS in multiple versions of GraphicsMagick" nil nil nil "6" "2016060221:47:46" "[oss-security] Re: CVE request: DoS in multiple versions of GraphicsMagick" (number mark "U       cve-assign@m Jun  2   49/1736  " thread-indent "\"[oss-security] Re: CVE request: DoS in multiple versions of GraphicsMagick\"\n") "<CACn5sdRjA1Vma3em7z0xyuV87_iggAojuFMFZLWKnEFOHww3hg@mail.gmail.com>" ("<CACn5sdRjA1Vma3em7z0xyuV87_iggAojuFMFZLWKnEFOHww3hg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1408 invoked by uid 550); 2 Jun 2016 21:47:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1389 invoked from network); 2 Jun 2016 21:47:58 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdRjA1Vma3em7z0xyuV87_iggAojuFMFZLWKnEFOHww3hg@mail.gmail.com>
Message-Id: <20160602214746.6F1FE8BC0C8@smtpvmsrv1.mitre.org>
Date: Thu,  2 Jun 2016 17:47:46 -0400 (EDT)
Subject: [oss-security] Re: CVE request: DoS in multiple versions of GraphicsMagick

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We recently tested GraphicsMagick with our tool and found two issues that
> causes DoS:

> * Infinite loop caused by converting a circularly defined svg file.

Use CVE-2016-5240.

>> http://www.openwall.com/lists/oss-security/2016/05/01/6

>> It is worth noting that ImageMagick's built-in SVG renderer has the 
>> same problem with "circular.svg" (specify the input file name like 
>> "msvg:circular.svg").

We feel that this ImageMagick issue is also within the scope of the
CVE-2016-5240 ID.


> * Arithmetic exception converting a svg file caused by a X%0 operation in
> magick/render.c:3800
> 
>     (long) (y-fill_pattern->tile_info.y) % fill_pattern->rows,

Use CVE-2016-5241.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUKjzAAoJEHb/MwWLVhi2VZ8QAIIB/LpzpI+nMhnzoBeIwbwV
lTDnRhiXdrSyGaCAa2bZSJLtYG+XmIW79T14CesmHxNXQSqHjE8Q/bcqrQUUW73U
BewXqemI6q596Z7Oqs83u/pEAG8PqPrCnZsJ2olMm+2DbBRXiHMT3vy0UhRJB31z
N/ez9h1IU/6VBVsViYG/S4KMEJZDxz14YQBn17JiV7JlvTsZ0xRpm8rmPX1r/FOU
CBnc9JI52byeF1iiWbMjW01C2izy52oCiC4DVH6NXDTmN8umMqr9yDzznn3ZwHWC
eKAjuv4i8pEhM7slR+iuzbPfo75AoeG0QSUIMv6c7Jcwo7G35WnSdPXYc9mPcCTs
yoG7PaKl2Zy3axly2IbEx/cr/U3ht8qf3SlnbiVpcGl9kjY24CiNwZ4Dsv5yXQiZ
zb/dWF+BijpvGWkQVsHSnFAbKBSVma7MALD08l99DLo0ZliKBBkypLPiGYno2bW0
MlOwDtAbWcUZI/kK/EhvFHhzEe9lyV+qItDrqzyusbp6PNN/FRThbW0D+S0TQiEr
sL9pIeu9aYoi5df9CqLYCSKfQgysSdN8L+/I+ggt3jO9MbQbAcXXvdH9Pb2eVgvm
qXdW0iVfb5TLMbSEYmDOBAsXqKWXHg3VOVp0XbUwVCGtIRVbr3T91CZnL1aocAVp
Uh6pny8WNsV2FRwJ2f8L
=UjQN
-----END PGP SIGNATURE-----
