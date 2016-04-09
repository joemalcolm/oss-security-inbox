X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["815" "Sunday" "10" "April" "2016" "01:37:40" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<57099244.2010504@vorlons.info>" "26" "[oss-security] CVE request: imlib2 - GIF loader: OOB read" nil nil nil "4" "2016040923:37:40" "[oss-security] CVE request: imlib2 - GIF loader: OOB read" (number mark "U       matthias@vor Apr 10   26/815   " thread-indent "\"[oss-security] CVE request: imlib2 - GIF loader: OOB read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32597 invoked by uid 550); 9 Apr 2016 23:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32574 invoked from network); 9 Apr 2016 23:37:52 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1460245060;
	bh=CHi9rJeYw75q0EWC/SJg3O63BsEI/zWTReeY4USF754=;
	h=To:From:Subject:Date:From;
	b=H5AAL09ekwsUiMiaJxkqrdR/6EKvYxBMVYXtrl17xjCzugB7fIxDPSXPbo8VciW5h
	 HpPJV8bStfXrmJJWCmkBxBJIAfxPluFe+9IE7PlzEQjDL0whz//xqIw6wX1YSN3HZw
	 ooBZIPPPALSnYozwP6xk6OGEVNzndgujNtwbwiWk=
To: oss-security@lists.openwall.com
From: Matthias Geerdsen <matthias@vorlons.info>
Message-ID: <57099244.2010504@vorlons.info>
Date: Sun, 10 Apr 2016 01:37:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: imlib2 - GIF loader: OOB read

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please assign a CVE ID to the OOB read issue in imlib2 reported in
this Debian bug report:
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=785369>

upstream commit:
<https://git.enlightenment.org/legacy/imlib2.git/commit
/?id=37a96801663b7b4cd3fbe56cc0eb8b6a17e766a8>

Cheers
Matthias
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXCZI/AAoJEDVYuxv9Aw7qvgUIAJSsEx9NBfTlJzPFMaDVd2Nw
+bhCeG156zBKFM21lyRRDMexHDGdSmzIibGjZ5EFZbVjyE6osXG+bA3raRQ6obn+
jpeVkzrE0LgOt7rLf0to+7lkM0VhWSqDuEbLC/d+OQbvmr8QsR2E0fsASspQuY+1
8bZM+VuI4S3HcMBp5LiAa+gS0HakcD5CnwK1LQv2usJl8nm9m/RR9m5K9tJGypTz
f06HBroF66WY+0XQu2w2Adu5ZYQKLZbxHsMhJETxp7WQyClD+/j7gN2YIzGzwpdm
PW5AF6df9Y6GLps4Q8c/QmICCaw+Ep82U2/rup7My0el+SgaPL7U9WKuZRc6pUY=
=sE0K
-----END PGP SIGNATURE-----
