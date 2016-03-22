X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1632" "Tuesday" "22" "March" "2016" "19:00:04" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1458687604.4129.2.camel@gmail.com>" "40" "Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" "^Date:" nil nil "3" "2016032223:00:04" "[oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" (number mark "        danielmicay@ Mar 22   40/1632  " thread-indent "\"Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption\"\n") "<20160322205839.GA30835@openwall.com>" ("<20150606113057.GA23470@openwall.com>" "<20150609112639.GA20540@openwall.com>" "<20160322205839.GA30835@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5649 invoked by uid 550); 22 Mar 2016 23:00:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5625 invoked from network); 22 Mar 2016 23:00:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version;
        bh=lEMN6DqYNKNX699Vk6LWPPOZPl8D+w/7Sm/Mz88WEyk=;
        b=DQCcCwtj4+nkUBpYI75QkzjTbn5qOFV0cwUsmt+EDPzhe08XQH2SEJQ7BAnAjGJo2B
         ZY6AcEZgvPiXQXoCh89HTJXd1ohshpv9fHxuArWI9C3Xifh+Ki4PJ1RspBicO6ORyFup
         2k2KGTZkoSz/gFXYDJXFAw6O1dyty4Cim4gw9d+pzdM7Kjphs2fFArXPReXr7KZeGudw
         k0MhacseOfDxeqys3An2HLOXbtSvt8/A1NS0Bn5Nu8b3j1P8KnH5f/h3WMf+th0qd+PJ
         waqtHNnyfmTb8JT3fDhKzxMduWWds93Z8tVxvYCG98uwDgXW3m+8gt8SdZeiNwUMOEVO
         zstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version;
        bh=lEMN6DqYNKNX699Vk6LWPPOZPl8D+w/7Sm/Mz88WEyk=;
        b=lg/nwoSw1qU7sRTuuc+tPAU9MyWoZC+Twx7TJpLKRC/z4Ou5AtuDdVQdewl4RXePKo
         dKY/ZywZQUXeWtQ6BEYMik4/eM1Fy/MNYxSbhhKDh8R0oXcbaJfvN46umMdWcusH6Nw0
         BWcUtI8OLJHufJurMJ7qYfMBosPci7QSBI6HrO+LjyJOE+aWWGO9bB2UzxvKIpbqVnXf
         anPakNW22jBQwSoiqcffDpmDHn1lP9tTY37jUNjoOULS0ToDSlLDdhlp7NirkQgEgvtG
         Ha11F8E4sED0L6UEaRkG+puy9Xc1ux7dZAydVmWiJRnKV1UDqT8kyenlGjp2deo8sZNa
         BfGg==
X-Gm-Message-State: AD7BkJL8iVk1hs2N1WkUJPNswwFH66YP79Uc5Yxwsw+FUNJeNfcqxPt6/+posiAaAo9GeQ==
X-Received: by 10.140.20.197 with SMTP id 63mr49913250qgj.18.1458687611500;
        Tue, 22 Mar 2016 16:00:11 -0700 (PDT)
Message-ID: <1458687604.4129.2.camel@gmail.com>
In-Reply-To: <20160322205839.GA30835@openwall.com>
References: <20150606113057.GA23470@openwall.com>
	 <20150609112639.GA20540@openwall.com> <20160322205839.GA30835@openwall.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-QqM5dum27q6CZVrcyABQ"
X-Mailer: Evolution 3.18.5.2 
Mime-Version: 1.0
Date: Tue, 22 Mar 2016 19:00:04 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun
 leading to memory corruption
To: oss-security@lists.openwall.com

--=-QqM5dum27q6CZVrcyABQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Apparently, this vulnerability is being used to root older Android
> devices, and as a result it has just been fixed for older Android:

Most new Android devices are also vulnerable to it. The Nexus 6, 9, 5X
and 6P use 3.10, while older devices like the Nexus 5 use 3.4. There
isn't a Nexus device with 3.18, only the Pixel C and very few third
party devices.

Google's kernels aren't based on the upstream stable branches and they
missed this fix. They've surely missed a lot more too.=

--=-QqM5dum27q6CZVrcyABQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJW8c50AAoJEPnnEuWa9fIqkLAP/it6aRGsaH718VWGtovGITKt
uw4mYmTpbDjDOg3zryk50LCpxnYHpgVDL1oTIWc/3syz0zw/amsIwPPtVI2MFpoq
ROPMY7+7nVIY+7fzYd8kLDEbKj+XQ3Sm0x0irby7rmP8cUD50JIhWEmaoSu5pP8C
5WLCdXFj1CobuBXal5oD04erBTscdM1+wudxlkjODk6JLchAWYsPs8J0ol8rJ5JQ
K/x8x4TBF0vF6KUndZTuXBS2V4ERxHBJxZdP3usXSRtNdMByLjzgvU3FlivGhegS
cphUp5JM1QpFAQnUaMY6Xm5AYFmG/ugTV0XENz/xo1tm8DWRfXBHb61KNB0KF8lr
wGQ8KdDrf86GKzU9p38UhPTNoCo5Io6X1LUkN8uZEFbaBRHzC2RMYXK7CqW1VHoy
96UeVxBD7MK6df1a+ptjWEk0dOAibyMiAQIFOmSbAccVGw59/tgTqAxsPjW+LvAn
2AVHcddFSSbEW5zSHW+oidDNGZMqVz5//ywvtnfJcCtCFmCxgEj5r0ftg52BuXZu
/Cj1A08W115tOUvR/zSCk0D7O3nCotDiyFrshMsQyqkc6o6HfizOjYbMOOVpSkeg
/Fxc12BRYEBNBY65n+PJKSNhbJb/Ha4OcOuMMPBu+H2ZPS8Rf0+PDfq7xzlACLfg
/exnw+zGPKRS/NjsxuPb
=UOwn
-----END PGP SIGNATURE-----

--=-QqM5dum27q6CZVrcyABQ--

