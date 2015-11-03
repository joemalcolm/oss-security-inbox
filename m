X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1934" "Tuesday" "3" "November" "2015" "13:40:30" "+0100" "Kristian Fiskerstrand" "kristian.fiskerstrand@sumptuouscapital.com" "<5638AB3E.30209@sumptuouscapital.com>" "56" "[oss-security] CVE Request: pycurl use after free fixed in version 7.19.5.2" nil nil nil "11" "2015110312:40:30" "[oss-security] CVE Request: pycurl use after free fixed in version 7.19.5.2" (number mark "        kristian.fis Nov  3   56/1934  " thread-indent "\"[oss-security] CVE Request: pycurl use after free fixed in version 7.19.5.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26614 invoked by uid 550); 3 Nov 2015 12:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26592 invoked from network); 3 Nov 2015 12:44:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sumptuouscapital_com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:cc:message-id:date:user-agent:mime-version
         :content-type;
        bh=RG7E69gZXsBIHwy3U80kz9/10UgADpBr9bPVWRQw1EA=;
        b=rTyP/jE43wxPCf37p3GpSBXwCnw7FaYK4ah9ecQ3J70I3WmihkTGKAcbUPZMINLQcj
         YRKOo5027yt1ce6Ew+gLj7fpLc2Im8RdP82kOrQ1QsqQxf4oyPnR3WTpOmKby6u1yE+Y
         7R+HZItYxMpV6ykoZFsOFRz+WJPvsFWH0T771yVYYl+vGzJkzopCMlJEyPi+a7Lqhz0d
         fxCaWGyjoxI/Q4TdDrNRbkrBWFb9+08SyDEe7uiZi7tnl/ttmRInl0EfyjlWOx1OELsM
         DnVq86YBStcxTQGc6IZhpeEUVs638rtHzgEAybJGz15SC9Yxyx9BVcxJLZZrceAAK5co
         IRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
         :mime-version:content-type;
        bh=RG7E69gZXsBIHwy3U80kz9/10UgADpBr9bPVWRQw1EA=;
        b=LPmzf3ijGTx5QcOujbEmcHKrisE2xGtz6tje1ML3Rn9GXsQzqozvm8Ek6HT30/cBVQ
         rSQ3/CvuQkvSVpxs/9M6O4GZJYqcGCly0Oe8CAjjVS0xkm/SUi1o6f+jr34l93rCTIaE
         3OONR3ULXcfxS8qdtYgkV7Nc/gP9Nt7Dhspb8MzJRMU9/wSNChsB959abQHSQrXSP1O5
         5Rcxc9lfL2Oz7R2TPWfZ32J951aF6T4Tn0qUHSUTx2MjpmyuzMzwWUnCzmfGFEzQ9aqp
         jwEUzW8RqqWSVSp0IDx5nSVR9vSge/uxXW5pDbKph0PBIrqlybkuLobxpNXZ0EIu6RYh
         AmGg==
X-Gm-Message-State: ALoCoQkppvyst3QieXlYGJDOcRQfu3LJww0brzNlFN5mA5eupMwFItLr8XZGF2cyg+lCGkhZrGyg
X-Received: by 10.25.87.82 with SMTP id l79mr8372826lfb.64.1446554652091;
        Tue, 03 Nov 2015 04:44:12 -0800 (PST)
X-Enigmail-Draft-Status: N1110
Message-ID: <5638AB3E.30209@sumptuouscapital.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="wbMK6r53kLPCSKnFQ1Gmaov1Mh2aurIA0"
Cc: cve-assign@mitre.org
Date: Tue, 3 Nov 2015 13:40:30 +0100
From: Kristian Fiskerstrand <kristian.fiskerstrand@sumptuouscapital.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: pycurl use after free fixed in version 7.19.5.2
To: oss-security@lists.openwall.com

--wbMK6r53kLPCSKnFQ1Gmaov1Mh2aurIA0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear all,

pycurl reports fixing a use after free in version 7.19.5.2[0]

* Fixed a use after free in HTTPPOST when using FORM_BUFFERPTR with
  a Unicode string (patch by Clint Clayton).

This seems to be in the file src/easy.c fixed in commit
602f8e364634d386524f0396e962c2c9de0536a9[1]

I haven't looked into the code in any detail for exploitability, but
my understanding is that use-after-free generally gets assigned a CVE
based on CWE 416[2], if so may you please assign a CVE to this issue?

References:
[0] https://github.com/pycurl/pycurl/blob/master/ChangeLog
[1]
https://github.com/pycurl/pycurl/commit/602f8e364634d386524f0396e962c2c9de0=
536a9
[2] http://cwe.mitre.org/data/definitions/416.html

--=20
----------------------------
Kristian Fiskerstrand
Blog: http://blog.sumptuouscapital.com
Twitter: @krifisk
----------------------------
Public OpenPGP key 0xE3EDFAE3 at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3
----------------------------
"At 18 our convictions are hills from which we look; At 45 they are
caves in which we hide."
(F. Scott Fitzgerald)


--wbMK6r53kLPCSKnFQ1Gmaov1Mh2aurIA0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWOKs+AAoJECULev7WN52F6OIIAKXzd0UAupt1ti1qapmh7S6A
Y8T2Bax6p03FqUbviLj++2JlxPe5exbneGrs01FdV8DGfqR6vg/+ZEpsLj9t5TgM
ZUErbFLOGi3XeJEU6CDvPA5w89/mZeXT/7+Y2ZvLnFy9Zu5BSvbjj+5iNYlLl2fb
VHnKc0opOx2/wfl03ovDUkAPNCxjQnhqcOgbDwRdpDaWRbjrDREmsTseBH3EHy1N
nJ9Rfek0bDvKUH6RTlh7WLP21h8tuZOjeOx//IHV1y10SbMEDkE1xdWeONnV2YG8
7kVWqV/EzKOiY502GdIjEpT3ZQglVTHTbWQAY9EigrqH5qIK9hSfwwObv+590gQ=
=pbtB
-----END PGP SIGNATURE-----

--wbMK6r53kLPCSKnFQ1Gmaov1Mh2aurIA0--
