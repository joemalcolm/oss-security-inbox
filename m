X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1433" "Saturday" "15" "October" "2016" "22:43:52" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016024352.0ABDF42E008@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: imagemagick: memory allocate failure in AcquireQuantumPixels (quantum.c)" "^Cc:" nil nil "10" "2016101602:43:52" "[oss-security] Re: imagemagick: memory allocate failure in AcquireQuantumPixels (quantum.c)" (number mark "U       cve-assign@m Oct 15   34/1433  " thread-indent "\"[oss-security] Re: imagemagick: memory allocate failure in AcquireQuantumPixels (quantum.c)\"\n") "<11716477.MTzBsLzZIC@arcadia>" ("<11716477.MTzBsLzZIC@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5615 invoked by uid 550); 16 Oct 2016 02:44:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5588 invoked from network); 16 Oct 2016 02:44:03 -0000
In-Reply-To: <11716477.MTzBsLzZIC@arcadia>
Message-Id: <20161016024352.0ABDF42E008@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 15 Oct 2016 22:43:52 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: imagemagick: memory allocate failure in AcquireQuantumPixels (quantum.c)
To: ago@gentoo.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/07/imagemagick-memory-allocate-failure-in-acquirequantumpixels-quantum-c/
> 
> AddressSanitizer failed to allocate 0x46bf39483ac bytes
> 0x7f76c7533ff4 in AcquireQuantumPixels ... ImageMagick-7.0.3-0/MagickCore/quantum.c:175:47
> 
> https://github.com/ImageMagick/ImageMagick/commit/6e48aa92ff4e6e95424300ecd52a9ea453c19c60

Use CVE-2016-8677.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudGAAoJEHb/MwWLVhi2jykP/R5qNgKdkgNnM512wFtsSkAh
VReHDp0AOkHDZrJI78N2dO0ps+69tpj6N36iYtCZ7V4J9ulDF9m8ejEzqDbdiz1l
IJi6MPCXrzLrxz//+dzjEJ3BVJRNq0wPX9gvAjRwR4+PJR9JX7aMqr0P3YouI1T4
BYfEc/8/EWIyXh5nbO3o94+aUs59ckAZZiwYmnzQUOLcKy8Md1Tb1BdZpx4NaSdE
0EF+jkaowo4vWk4+Z9tDUOPQwJG/HUqSpvUWyMcGSjDjEatxHJ1NmktcH5QcMFAL
Ku8ppzMK5VbqKpXk+/ZiP5IULLLB6vegIy4f44/WhM1Hku3dfd7O46n3D+2RUhyf
8Qs5nCMJd64x7Xn/9G07v2eQjuZYgNv8hq5R19WzJP2ZSj83ifvHCgJxiRf83ykD
ZkBDyLsqQVZyIjIuFhEMjtx2UAMgpK+CPTTBg+OEFb9k6JR209KFPu61e2YWqQBk
cQFU2pezH6rS32PWo1PxuWEyRLo7I/qSre2llOmrY+6q10CrlYHsugkAAE+YI5ej
TPLK2rbuRpmMQeFEsDyrQOQdIaj1GdswFS+54wt36H6/L5CNOryyetow8ptZoINU
XWl3E7jpfIh/Eqoe33uuPYJVlGOBIF/VpIGIUsk3/+p2I2q4jV4XmOFE9tCKgeUa
JTVD7jnrPudcvjofke4K
=pzqG
-----END PGP SIGNATURE-----
