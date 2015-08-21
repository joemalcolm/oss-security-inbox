X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1651" "Friday" "21" "August" "2015" "14:39:57" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150821123957.GA29111@kronk.local>" "46" "[oss-security] CVE Request: twig remote code execution" nil nil nil "8" "2015082112:39:57" "[oss-security] CVE Request: twig remote code execution" (number mark "        alessandro@g Aug 21   46/1651  " thread-indent "\"[oss-security] CVE Request: twig remote code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23675 invoked by uid 550); 21 Aug 2015 12:40:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23637 invoked from network); 21 Aug 2015 12:40:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-type:content-disposition:user-agent;
        bh=+n6dLBX3dumyXJJX1r4dcI2aTj5owDoL49L/CloBsos=;
        b=LBakKNXzSt8l/Ld/zc0nbMuI4j5R+1zfTh5p2EpAk7jZzLR6uSxAlEFRdkhdFBqomD
         9W3RauLjszQEo+2ImSMCwUA+2scvYUx9ur8WPqg/bWeki943PAo8dguONF8t6VpI6eff
         yI8z+05an0PPGTVN+KZxZ2GQVmruHD3+PxjJF0fHbOa9iEXEhVeGhgWyyf+eKr0P0wFq
         pZis/7IsWj2VBltghHBdYBcAa4bVLHp0FWBmbqKXOdERgpGGrWYH7Rlt5kV3OFDHABru
         HiexHPJnSEf1pKCrrnLWei9VzDIswBBQrhsjGNCjbKub7k7T3IROzqm7Tu+1lplUI/XB
         QLYA==
X-Received: by 10.180.84.40 with SMTP id v8mr3154865wiy.77.1440160799080;
        Fri, 21 Aug 2015 05:39:59 -0700 (PDT)
Message-ID: <20150821123957.GA29111@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Fri, 21 Aug 2015 14:39:57 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: twig remote code execution
To: oss-security@lists.openwall.com

--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

the symphony project released a security advisory for the Twig PHP library:
http://symfony.com/blog/security-release-twig-1-20-0

The linked GitHub pull requests provides the fixes:
https://github.com/twigphp/Twig/pull/1759

AFAICT there are least two issues: a remote code execution fixed by the "fixed
sandbox security issue" patch, and at least another issue regarding access to
"reserved macro names".

The RCE deserves a CVE IMO, but I'm not sure about the other one (or if it is
indeed only one issue).

Can CVE(s) be assigned for the above issue(s) as you deem appropriate?

Thanks

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJV1xwbAAoJEK+lG9bN5XPLJMwQAIfFxkdsBT9UN7FNMLqJtD4h
rIyisAo/+Sjkmn919ILglF6+UrD6lZGtdA38BQa6G5M/5vCX0k7L7Yh3pfPfgOSa
F2/b9yN8aJjFOVwM8U7ycsvbhU2T11UAkTjksk6Z7X8Fzr5xJPi75SpNpyTCWSq1
82bK5TcU1G3nxg4YzzJ8M8YEsm9LcXwYscVwwyw3l1qyQmrz2seqwYW/g7AZLIUg
WUbbE3A2otPKY2PS4NX1y2E8TOD2N1ZdriQCo8u6pfKu27tdz3GsrOwldAXFtBDI
urbXhnMJU9BAqSXdpKu14s3D6K7GHIFfUDq+WVilWMtyhp5P6OUQGwZYlo/bZ2fh
oUloE8eJGzZtbz+HIzRjSHJq5uYvET5EE+c3zmwVkPr6FhAqHkvopfOEc/HeL+Jj
QwylXxoraXTqWfohk4ppFNZAKgXLDN/X2n6O7QiTTJAIOKf5HaHnbRdTUeHK4Gu3
PXZxRXYWbENh86jme9iATp1/1TOqBN2Xj09bONLC2Tvw/hSSpcztbyvj5qULihmv
NIC3jh7830TCxQeqG508guW6s9PA3dPif9lxpXf8ylZZ3U8BxaJRan2Zve6chhmO
O+h4y2hpsmMgbPZk1UTNjba5W5fh/TKOaHxt2Iyvg9hEuHbs2bEFHJLa1Z32sOgV
LwEEo6MchkCs5GrhdXA6
=cchC
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--
