X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["807" "Sunday" "10" "April" "2016" "21:39:47" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<570AAC03.2030209@vorlons.info>" "27" "[oss-security] CVE request: imlib2 - potential divide-by-zero in imlib_image_draw_ellipse()." nil nil nil "4" "2016041019:39:47" "[oss-security] CVE request: imlib2 - potential divide-by-zero in imlib_image_draw_ellipse()." (number mark "U       matthias@vor Apr 10   27/807   " thread-indent "\"[oss-security] CVE request: imlib2 - potential divide-by-zero in imlib_image_draw_ellipse().\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17608 invoked by uid 550); 10 Apr 2016 19:40:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17583 invoked from network); 10 Apr 2016 19:40:01 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1460317189;
	bh=Wlbf+1EGSYeFi/fm1PUFXX7YAQ0tLuTq+3QOGjMnNso=;
	h=To:From:Subject:Date:From;
	b=w2GS/jwwqrvIhmLouPihjoos4v9+HIyYE2iRSwkWulfm8G8vSAamzmRbS2/dYgbSp
	 MjM6UrNZrF10mg3FAVpnsxJE1RYTizaoPW/+zwWjvjeMJteoYcPrzfh1iVbOQBxn6H
	 JvL+LWCfFM2dLGrY50vB8Gwe2m0amC5Lru+Lia1M=
To: oss-security@lists.openwall.com
From: Matthias Geerdsen <matthias@vorlons.info>
Message-ID: <570AAC03.2030209@vorlons.info>
Date: Sun, 10 Apr 2016 21:39:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: imlib2 - potential divide-by-zero in
 imlib_image_draw_ellipse().

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please provide a CVE ID for this issue in imlib2:

Debian bug report from 2011:
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=639414>

upstream commit:
<https://git.enlightenment.org/legacy/imlib2.git/commit/?id=c94d83ccab15
d5ef02f88d42dce38ed3f0892882>

Thank you
Matthias
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXCqv7AAoJEDVYuxv9Aw7qWuoH/2EkT0g/XwsRVMqCxjWAVsDe
PCwFFvVJNoBB7HKKTqcmaBEEGWyxntzZfX9Fpn9BluqIUZegEkyZ6agzH87XNpYK
gVP6CiKGoYdrq1OWZ12Af9sHD8abSFkcR4K3EtRNEa5oxbD7rh52cuMoB3Im/789
/pCdMfZCiKraD8/ZTEwG/P9LcJUwRAF7vzkXU0kTUwj/RayP5PrwK01aQ0truzge
1HSjI9Vt1FEiHQk4+Rk4OXNzNA68Vt047pduPglzQV8s0oszK7T1bhpxzEAOJ+kB
zDBiF7H6He1siPJQz81af2dJwgQ/XjoBh2yroFyonr/oGshnWjEd1sxJo5qgAjQ=
=mwpU
-----END PGP SIGNATURE-----
