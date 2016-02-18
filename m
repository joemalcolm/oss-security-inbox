X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2094" "Thursday" "18" "February" "2016" "23:19:10" "+0000" "Darren Martyn" "darren.martyn@xiphosresearch.co.uk" "<56C6516E.7040808@xiphosresearch.co.uk>" "55" "[oss-security] Re: Address Sanitizer local root" nil nil nil "2" "2016021823:19:10" "[oss-security] Re: Address Sanitizer local root" (number mark "U       darren.marty Feb 18   55/2094  " thread-indent "\"[oss-security] Re: Address Sanitizer local root\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5121 invoked by uid 550); 18 Feb 2016 23:19:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4041 invoked from network); 18 Feb 2016 23:19:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xiphosresearch-co-uk.20150623.gappssmtp.com; s=20150623;
        h=message-id:date:from:user-agent:mime-version:to:subject
         :content-type;
        bh=1EyFnBmdnt/RmFTOqnNUaiodDtGAIZi6gCcmV/p5wdw=;
        b=rdsO7llLq64eQ7fgrgVompvuBzT2JpOdButTpY8RHzKDgNSW4matl37/J6XPbhdBTd
         hDPIdhQNGxEkEzwAPH1nnJPr8NNbLPr7X3SRWAS2R9CrgAISZ8zR1nO2Ej1lhXmBnWkO
         74ZQWBfqhaJKIMlyx+Ac7bZSqiItsNI/643KcDU+kmfMncrRNWbgd9IIUyTKj2OLbw+h
         LSKSHbBPIpoDDqlcFJ2UngYssuOcfWcjejtfvHiLjgRQhuO3El0kISYw3dgBEvtBhCwI
         sIw3e54Zm0oV8Uu0fJ/j+P7srJ5c2Aiwa/2bh3o6lHbOxq+7ggYj2Pf7oToah/OAtSID
         dnFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:content-type;
        bh=1EyFnBmdnt/RmFTOqnNUaiodDtGAIZi6gCcmV/p5wdw=;
        b=HVsx+5BYBMgTbiy/UWUr73BPpIWMFAZ1g1yOB25/xBFnFCD2HurZ9NqpcsXw2m7y38
         ahMmvwbLskXfLRACiyjCgr7tYeA4r+tQYpzXeXcy0tuHTH/fl+M6Hconkbl6PbHBUcB1
         NEq2eUUIpqoSomXnQ1FZHi4dcF3jU+7Akzj85ELTnpeUf3CIaGZdFOJXuS3ZCVy73biO
         XWYmmXURntWDn4aRqW78mIt9IdxF965s5On1+rvm1iIQQYyDe9vaO6XjKClpijP9px9k
         5J+QjilY0JIpget5xDxzI3w57nzKsIodNcFUpeW/qT3kyRuUakvELrUjoESGv5JhO5BL
         9V+w==
X-Gm-Message-State: AG10YOTTW6cDJhswCWbsouRed0JcRGRF8zYFYpPyf/dAIXxa3jAzNxdq75kUO2i0a/v94w==
X-Received: by 10.194.133.1 with SMTP id oy1mr9626021wjb.119.1455837555090;
        Thu, 18 Feb 2016 15:19:15 -0800 (PST)
Message-ID: <56C6516E.7040808@xiphosresearch.co.uk>
Date: Thu, 18 Feb 2016 23:19:10 +0000
From: Darren Martyn <darren.martyn@xiphosresearch.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Q9OGSwIJqBqExVLQKQ0fosjIW9V3e2BaT"
Subject: [oss-security] Re: Address Sanitizer local root

--Q9OGSwIJqBqExVLQKQ0fosjIW9V3e2BaT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi List,
Figured I would add this to the thread to keep it amusing.

Here is a fully functioning local root by clobbering /etc/ld.so.preload
instead of /etc/shadow (which breaks things spectacularly). I am using a
fairly messy "symlink spray"/"symlink carpet bombing" technique.

Simply point it at a setuid-root binary compiled with asan and away it
goes.

Video: https://www.youtube.com/watch?v=3DjhSIm3auQMk
PoC Code: https://gist.github.com/0x27/9ff2c8fb445b6ab9c94e

Development/Testing was done on a Debian 8.3 VM that was last updated
last week.

Now, I wonder - what can actually be done to mitigate against this,
besides "don't use ASAN in production"?
Is there something that can be done ASAN-side?
Because due to how ld.so.preload is parsed so, uh, forgivingly, all the
attacker needs to control is one line in the output file. Could it check
for symlinks before writing the log?

Regards,
Darren.


--Q9OGSwIJqBqExVLQKQ0fosjIW9V3e2BaT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWxlFxAAoJEKbzl+ujn+tWX5YP/iHeDCcGSFcLW5tHqZ56iV1Z
3n/Bm+XxornYiIeXwG9BJM4KhXD50nhjSqGkBFZHYJWpjLd2oc0YkiahT9Jf9Hf2
9A6h2NBBb31yTkQbUdu5QhePfZGkNb+rA9rR1WOsNALB/Y6JXK/WhthfckhlW3SS
rWGKJcc5VRTo93gSh/CCWt+T5sVHDpAy1MLMRvMKPv5iij5hDeP3b4CX9WOaB2yH
UdsiVkI36cIroYYRjYORETUz0j/iB32VkwyicX8h5OU7J5KroB+3nMjXlmkIBIL+
L4o3QTF+Ap5nfYGyO8F+ebvhL2IAzSMI9IIWRwGvAwoJf4P33hlXm9jqyMEZ20aH
HleP1yN4UECdwIeSS55+BiRF2pPlE5L1rwrtdH1TiaRlLr3v0qrQwsw2HaO4Al3t
jmxvXdHTbYkPhDYCJ4Bib4U6Gu23+3i2bqxLxuV7NPrCgxZfZp6Cm3ASLP2fB5lD
QnaB063HOFKpD1GT7JS9ozZrrIOKY1W8zJnnY4MrmAKrWdXJseJV2JqoxDsKkwvu
2LQ7G+jauxI4j0Mw9htVIe7VmbXYqlPdLoOZL97qw/D28HSp8zmF0L0wwEXiOjHn
9Krzsxs79ouGm0F4ZT9nj7PiuG0SHJOSwnvUrAhng7geNPRsTBNhPxR35GNL3kcy
bePLhpoqsEjgw6cg12rq
=b8E8
-----END PGP SIGNATURE-----

--Q9OGSwIJqBqExVLQKQ0fosjIW9V3e2BaT--
