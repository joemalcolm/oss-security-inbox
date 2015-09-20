X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1021" "Sunday" "20" "September" "2015" "14:34:41" "+0200" "Dawa Ometto" "d.ometto@gmail.com" "<55FEA7E1.1070007@uu.nl>" "35" "[oss-security] CVE Request: gollum information disclosure vulnerability" nil nil nil "9" "2015092012:34:41" "[oss-security] CVE Request: gollum information disclosure vulnerability" (number mark "U       d.ometto@gma Sep 20   35/1021  " thread-indent "\"[oss-security] CVE Request: gollum information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13362 invoked by uid 550); 20 Sep 2015 15:13:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18381 invoked from network); 20 Sep 2015 12:34:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:reply-to:message-id:date:user-agent:mime-version
         :content-type:content-transfer-encoding;
        bh=SpTzBiv5u5ptPLXHEkKVQqMA/QYSLnig30PLezPZo9g=;
        b=0GLDVE3Se7JrXzwgxT6NpQKvfZE0iNi8uQ0xMQSjWdD/c+2HGhqBcE1irsJXuhi7fn
         ALqYUxDq11RxXfhxOOp6l9brjkoI/Mp1sg6IJqK51LNquX7LVtQ4G7s9UHP2uVu2Zq4V
         uCXRBWbLEjWfhpkryV5d9gOqXXkYV2DM25NlrtQ+S3AXmhIb/kFAxCvBxRxLB+/1WHlj
         0fYLKhg5evrqXbi6iYnM53Va058AM7NqF0f4aWfjIJgNrez/m0njoGag09lcXCPOg8he
         zvUlghBoIrBaAR290XH3rVtmCfvrzxcsgPm9YdC6REXqZO+VMaXpbkJG2Hmiwii3o/Um
         LGYQ==
X-Received: by 10.180.87.198 with SMTP id ba6mr8646826wib.39.1442752482799;
        Sun, 20 Sep 2015 05:34:42 -0700 (PDT)
X-Google-Original-From: Dawa Ometto <d.l.a.ometto@uu.nl>
X-Enigmail-Draft-Status: N1210
Message-ID: <55FEA7E1.1070007@uu.nl>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:38.0)
 Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Sun, 20 Sep 2015 14:34:41 +0200
From: Dawa Ometto <d.ometto@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: gollum information disclosure vulnerability
To: oss-security@lists.openwall.com


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hi,

A vulnerability has been found in the gollum wiki, which allows
attackers to gain read access to arbitrary files on the system.

Website: https://github.com/gollum/gollum
Affected versions: 4.0.0 and earlier
Patched version: 4.0.1
Fix: update the gollum gem by running `gem update gollum`

See this commit for the patch:
https://github.com/gollum/gollum/commit/ce68a88293ce3b18c261312392ad33a88bb69ea1

Please assign a CVE identifier.

Thanks in advance,

Dawa Ometto

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJV/qfhAAoJEOZ/bElPm95rx8sIAN1//QHUPQEM3Dy3M4zTesTw
72rBxilGPpsb/sCJunekbigW9gVubWrfqmpt7S7RZNW5PTUpspAlgp03Zz6mqhzX
PFYAtF4OaQkumGAigI5Ae+4Zd2I0swkzWWi3G8Xhyze6POYQYy2rxsoOJCfV2l/I
3dxKJL9bX23PCc2G3TyOoNr4ctYsjtHLLosUDuoyTYsRgoturUlf1+My+naV9Ccv
+JtRkeCCtZ+YsJmnnhxzWp/KtCAVju5xalfDbxPJdYeo40+P8crTjXHzLAfD7zra
6IvdnqX9w3VtfKSWzDmoVIefFa6Mq8na7ojeOWAjKSnLoDimyqzAXkTrMPh13Ds=
=DwwE
-----END PGP SIGNATURE-----

