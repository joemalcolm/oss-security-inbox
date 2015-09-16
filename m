X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1315" "Wednesday" "16" "September" "2015" "09:20:31" "-0400" "Justin Bull" "me@justinbull.ca" "<CAFB0D2RvzD84KcPhC+VzxFgN69LYMS3_Zrk9XYDpq8Pu8m2sPw@mail.gmail.com>" "37" "[oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"" nil nil nil "9" "2015091613:20:31" "[oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"" (number mark "        me@justinbul Sep 16   37/1315  " thread-indent "\"[oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"\"\n") "<C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>" ("<C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25772 invoked by uid 550); 16 Sep 2015 13:21:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25752 invoked from network); 16 Sep 2015 13:21:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=u2RwfHEqstAdtti1CxKjgDNWXdDvnxJ2CDRUgsDQXss=;
        b=TF+Ng6m2U+iD2JUalfdRcQjfk6zbXFp0KB1OKRA7ol5j0rYfO1kHM5XKBXZaC63Uv9
         2fUgZn1ti5zkr9Fhw7VWalJx0S8ByG6Y4UlBGcHlVcJktw+sxjUqAJfPvg14jxIG+5HL
         zJhv4AUfFQ3SnPmEXSUCO2ZSfDCbL5yP7Jr/B5uADxVExLuKzJ6mZWbG+fI8t6hfVZXt
         cTNxSVDfsdMyWBQLF8mFHm+ZvTxTCnVUkJ9c/fzfqNGXJMgUHoW3V1xnqgCAVIxSdG3H
         V3qiqHoT5RHttg3Xc0pLi6iBsSZwdvXgKap/jzLhV9TpaJFa3Tfd8aBjQAP2lzl4L/lM
         yGKA==
X-Gm-Message-State: ALoCoQm21Wy7NnvhDm+nhyFLwa1muFAMKJYoz7kUG5xuYetwLKGFL/n7OuXe6o65R8Pc6Gv1r++3
X-Received: by 10.129.108.133 with SMTP id h127mr16395116ywc.113.1442409650997;
 Wed, 16 Sep 2015 06:20:50 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [24.114.54.24]
In-Reply-To: <C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>
References: <C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>
Message-ID: <CAFB0D2RvzD84KcPhC+VzxFgN69LYMS3_Zrk9XYDpq8Pu8m2sPw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114db8fade8151051fdd2ae9
Date: Wed, 16 Sep 2015 09:20:31 -0400
From: Justin Bull <me@justinbull.ca>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library "devise-two-factor"
To: oss-security@lists.openwall.com

--001a114db8fade8151051fdd2ae9
Content-Type: text/plain; charset=UTF-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hello,

After working with the vendor maintainers, a fix has been implemented and
released under version 2.0.0 of the software.

Upgrading notes can be found here:
https://github.com/tinfoil/devise-two-factor/blob/master/UPGRADING.md

- --
Best Regards,
Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2

iQIcBAEBCgAGBQJV+WydAAoJEESFZfv8+htY/AIQAJHS2x/2n2/LYCTuuQ6oLTUL
y4mf6XTV3uSr1/oUNnWZPZ/a5c686GaU2x1yUSy0Sz58ayhpm9JcymA3KhNexOqG
uRb7RUGrLmeg7T//qoq4nf6+kfXQvEw1pSvV0C8mnthh2E3A3PhHA5L3XWT2cAnC
i3v6nLR53fXCepWOdzDtCRoxlvEEbM82q6RSC49pSqWiDyGzwjMV820EnUI4TqZw
cXGlaTUkBLUXTFG8fIFve9NruYiIVKAgaFrFIYhmhhAbVWc30zaMMFZdOvhGORIV
agjpscsPfwO/h+GPH7U1yD/nFAXln+vMukOcT/II+cXZoHMRmvtsgHbVoa3LHLKd
xH7xQv79u4V1sV+EFsi2KaqUq31inzWYOqi/QkDdbavNDtNl1ELVJjuv1PuhJTXz
pgLp54DUTlboqsKrsftYoKACsdbspuSzWDdttZfZrDxNNcgtJwpPBoMcZO1cDGUy
UQR0sGkfNmMtBxQBHvJKab7opoqfvZDmqlO9HjQxhm3sgHECQU9sFI+OPWx2fHkE
B8OIHkKZMUsfqUorJfacwSXZSt5jKxAIuNbJ5XW8DlK/gKCbRSl2YgdTzJ45txlh
r1tybDrlJRs9CGGJQ2PzFW/oPR7+KLKYHy1cEnleeORqaobsQVZPG8k7Fqt9eNOV
i6en/R8DgQTrohFjgWIn
=2Dd7
-----END PGP SIGNATURE-----

--001a114db8fade8151051fdd2ae9--
