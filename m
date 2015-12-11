X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2022" "Friday" "11" "December" "2015" "10:36:02" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151211153602.450948BC15E@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)" "^Cc:" nil nil "12" "2015121115:36:02" "[oss-security] Re: CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)" (number mark "        cve-assign@m Dec 11   57/2022  " thread-indent "\"[oss-security] Re: CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)\"\n") "<2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>" ("<2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12066 invoked by uid 550); 11 Dec 2015 15:36:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12042 invoked from network); 11 Dec 2015 15:36:14 -0000
In-Reply-To: <2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>
Message-Id: <20151211153602.450948BC15E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, yuchen@mail.tsinghua.edu.cn
Date: Fri, 11 Dec 2015 10:36:02 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)
To: xiaoqixue_1@163.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> there is a underflow read in png_check_keyword in pngwutil.c in libpng-1.2.54

> if the data of "key" is only ' ' (0x20), it will read a byte before the buffer in line 1288.

> it also impacts libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 .

>> The bug was introduced in libpng-0.90, was fixed in libpng-1.6.0, and will be
>> fixed in libpng-1.0.66, 1.2.56, 1.4.19, and 1.5.26.

> https://sourceforge.net/p/libpng/bugs/244/

This says the problem was on a "1288 while (kp == ' ')" line but that
seems very confusing because that line doesn't appear to be present in
libpng-1.2.54 or any other version. As far as we can tell, the
unpatched code has

  while (*kp == ' ')

and the patched code has

  while (key_len && *kp == ' ')

See

  http://sourceforge.net/p/libpng/code/ci/d9006f683c641793252d92254a75ae9b815b42ed/

Use CVE-2015-8540.

Any instance of "kp ==" instead of "*kp ==" would have been a
different type of problem but we don't think that problem ever
occurred.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWab8eAAoJEL54rhJi8gl5SlYP/A779vmL+vtcTcO1vhnhU4Z/
hr7Qm2C8sE7TUvgWc7bUqthJjNs4T2jEhgYGGcRHeuzm+qneBVkh3w2R5pD/gn04
/sD2FH+c7MaAMGWWZYzudqgh2zNrVud9zY5VFjJTbNAWGsTnU6ix3A94TC6KUq9C
zLVxrc7c5BxFhvgtg+rdb/TSj9lfzUXNJqVENGONUK3PDth567FvVJkJJPlvxPts
yZx9467dLcR9yJSSWVsDPg4PqhIc2oU6f8fdt9tYI16lc7wMFRn71B2xuvcOvzRO
yWYd8xNvfY+sb0iWwuRgDTI+2b0gd2sDwAHR0KCq2vQwVUQOWa4hhbC0X2UxLOHg
TKwXrXg9HVpXUYQr7wE+QO+V4fLnkUI3mRb+9enVcL9mSvzAA49gtIh6oee+wGeF
dMNWR02dxjitTSK0FcgNvzKLzff2l1K6WSY5cFzrOXqUkNdXZOEHAWGdBYCv0/Sv
LKrz3IoO4kpRRSGk0ZRWDCi7r2fjZQh2BAFWjKMqoMGRG33wLCHqQ5Me65FtleMc
VLfmcITghJHhWi3J9aihshJ6QouoS6jzVaiOnw3X3ZNW4Uw/Jvh5XTDbGbAY93Z+
rZZqMCE1YJqBjvx8N/lGxPJIQHLgw4pT+Z6MKc23EqdchTVEM0Sh39x5RoZKb3Wg
MHAIUGPZQf7YS/kpzTHE
=h4md
-----END PGP SIGNATURE-----
