X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2012" "Tuesday" "8" "November" "2016" "08:12:40" "-0500" "Paul Tagliamonte" "paultag@gmail.com" "<20161108131240.GA19683@cassiel.pault.ag>" "56" "[oss-security] CVE request: netcat-traditional nc buffer overflow" nil nil nil "11" "2016110813:12:40" "[oss-security] CVE request: netcat-traditional nc buffer overflow" (number mark "U       paultag@gmai Nov  8   56/2012  " thread-indent "\"[oss-security] CVE request: netcat-traditional nc buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30558 invoked by uid 550); 8 Nov 2016 13:19:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25919 invoked from network); 8 Nov 2016 13:12:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Xj9cdnNcQ0VHf1Hf13ET2pWzzEK+4mS8CVmeDVnWIvs=;
        b=KQZpVC1bniuRIq+X1e9K/F8+dIMg0dQ6wUJKmeu/LRAzpeubiOmk1+8QORMX0WrCjB
         6JY+fyYrhc0iRZuDg5/DqQ0Z5voxQl7kPH1wZNxOk5Nu/UMe3OxWwLOwTzoYfduAkd27
         GMswGuwFaj+aD5aYBvTOYHvoUeUSrRtnXU514QpXYG2WK/Hv/s1/mUaQ4t/arpADD4YA
         mK1YzKgExUKd9ADRjoaKz7vLRkXLrLwKpTzFRTReJAoJsfChgiw4O1HCj15AYTgK5b5Y
         4Nu9fUeYVkYjPHXdv9BzuzNkkXvQ7MSdA2hdwzN9iXo/lvUJn0Vi71s2yuXiZuyUzD0s
         r5VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Xj9cdnNcQ0VHf1Hf13ET2pWzzEK+4mS8CVmeDVnWIvs=;
        b=Xy7MdE/v5ReBpgAZzSKs8BRfjF84WCltM88GhuzRtoOAUZq5+Dr/03kT1KDuSeE8sE
         37B5ZaXTT7AqWBulsnt+ycK6V/gJLnLAtopmfqYAdnPEne0X/DQQ/Rk554cT5dXZc0T1
         rCT3okn41I96TtK8v8P06X8mOVl2fX40rs/r/dI9bvs1fSZQ/nUbsh19/uzZJyRcClfV
         hoEneCX/8CJLEiE3rkTVz7yWPMCezT8Ky1/dhRymZlNx3CHRiiculSN4g+wYw2kUaPZv
         GAtGHGFCCjxaDRKHL0spBZ9rOnG6M6iBmO7YSJHJEXRKUDOW2Z9LgOpgwh7v92Z2jdfG
         lndg==
X-Gm-Message-State: ABUngvf76saf8n9hoB20YMJ+FRNmGHu2qoFCCHq0/XXt2HfSOLxkibk1ofzbFRUYAKYxyg==
X-Received: by 10.55.100.67 with SMTP id y64mr12223511qkb.118.1478610764253;
        Tue, 08 Nov 2016 05:12:44 -0800 (PST)
Date: Tue, 8 Nov 2016 08:12:40 -0500
From: Paul Tagliamonte <paultag@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <20161108131240.GA19683@cassiel.pault.ag>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE request: netcat-traditional nc buffer overflow

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following invocation of nc:

$ nc pault.ag 2124124124

Results in a buffer overflow:

*** buffer overflow detected ***: nc terminated
======= Backtrace: =========
/lib/x86_64-linux-gnu/libc.so.6(+0x70bcb)[0x7fc8eecaebcb]
/lib/x86_64-linux-gnu/libc.so.6(__fortify_fail+0x37)[0x7fc8eed370e7]
/lib/x86_64-linux-gnu/libc.so.6(+0xf7220)[0x7fc8eed35220]
/lib/x86_64-linux-gnu/libc.so.6(+0xf67d9)[0x7fc8eed347d9]
/lib/x86_64-linux-gnu/libc.so.6(_IO_default_xsputn+0xac)[0x7fc8eecb2bec]
/lib/x86_64-linux-gnu/libc.so.6(_IO_vfprintf+0xcd3)[0x7fc8eec859f3]
/lib/x86_64-linux-gnu/libc.so.6(__vsprintf_chk+0x8c)[0x7fc8eed3486c]
/lib/x86_64-linux-gnu/libc.so.6(__sprintf_chk+0x7d)[0x7fc8eed347bd]
nc[0x402b20]
nc[0x402112]
/lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xf1)[0x7fc8eec5e2b1]
nc[0x402341]


This appears to not happen with other versions of netcat, such as the
one on OSX.

I'm unsure of the security implications of this, but it's not out of the
question to use this as a DOS, at least.

Cheers,
   Paul

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIc9IAAoJEHtYWzCAfCqHJDsQAJiInAxAUj7Ku9SFJoqSc+K+
TATvA/PSRQvtmRhYbuBdopTCRPyomFd+QsXaGF2FhsbLhznyult3vzKnAK3EUK/0
JrYNW/FjSlS4mGu+rZ6gf3XvE44gDhK3OYqJRMxnn+kflpMYEjFHkP6+1TIoXh4L
fEjk9LJnn5MxsAsBMObcpqNJ0JJWJrIO6HmgZdkFHKewQYwH+BVqcKBhZmR0bc4q
5m2kBfdSqa/5HWsdlzoUj3FESg5utixn5yGT0J5/FAWFuu3PFjTAB5tVa1PVUFtR
weFg298LG08fsf01yfvNdpMca1Y9GFkXwUhinc1EhwXhNxjJAXQ+uwfEjuRDVYrm
sn84+rdIWbXpBCtl5qBZr2YrVEj6twTyvxEIaJWJSxMV0ab0xb/l/m4VXICUfscN
+da7e6Qgwhm65wZTbCWcDK+w5vmVrOg0k5tg889v5MlbzWrshFMVBDh05rcWvynw
c3/Gk6jThMWOPKaD+2jSM8ClOQGIdR0T8+rVvCoWpXsjkxXgGYm+DZo4xY9mmq8P
FnDGy1bFEjDC2hS2Ouu52J1Bg/O7DBVXNfqUZUpLLRhCR5CgazdCgvZXbeF3Nsna
RY0t7CiIvLAGzZOnT6m6q1Q2N1Dopn/GnpvnUAWFjkBYSn3xTfv2s+hzzDa1f8uD
z59Q/7hEb6QByJF9j/Ew
=h79/
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--
