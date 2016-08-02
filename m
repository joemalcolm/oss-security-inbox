X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1460" "Tuesday" "2" "August" "2016" "17:14:37" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160802211437.0BF366CC689@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request ImageMagick buffer overflow" nil nil nil "8" "2016080221:14:37" "[oss-security] Re: CVE Request ImageMagick buffer overflow" (number mark "U       cve-assign@m Aug  2   38/1460  " thread-indent "\"[oss-security] Re: CVE Request ImageMagick buffer overflow\"\n") "<CAJvHH_QoBJyo_qyOdgE-G=pMhZCfD0pt2f3WHhGjnw9KZMC5qA@mail.gmail.com>" ("<CAJvHH_QoBJyo_qyOdgE-G=pMhZCfD0pt2f3WHhGjnw9KZMC5qA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15448 invoked by uid 550); 2 Aug 2016 21:14:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15427 invoked from network); 2 Aug 2016 21:14:48 -0000
From: cve-assign@mitre.org
To: i.elsayed92@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAJvHH_QoBJyo_qyOdgE-G=pMhZCfD0pt2f3WHhGjnw9KZMC5qA@mail.gmail.com>
Message-Id: <20160802211437.0BF366CC689@smtpvmsrv1.mitre.org>
Date: Tue,  2 Aug 2016 17:14:37 -0400 (EDT)
Subject: [oss-security] Re: CVE Request ImageMagick buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I would like to request a CVE for a buffer overflow that was found in
> ImageMagick. You can find the fix in the following commit:
> https://github.com/ImageMagick/ImageMagick/commit/76401e172ea3a55182be2b8e2aca4d07270f6da6

>> 2016-07-01 7.0.2-7
>> 
>> Evaluate lazy pixel cache morphology to prevent buffer overflow (bug report
>> from Ibrahim M. El-Sayed).
>> 
>> MagickCore/enhance.c

Use CVE-2016-6520.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXoQy/AAoJEHb/MwWLVhi26RoP/A3Phfv7ZYopbu2nA2iNS/qB
vY9vU+qLHin7ZO5w/ZRRSuB2mPXa7pMlQLV5qaRrYFg/C76wicJefeCY3eX2Y/jD
BOf672Ih7UGk8Tgm4wmluZ2axD+EPAOt+qDInccS0SG93yIXAJGb3QHG13aEQjLp
+FFTENAEINPW0KtcE2FAE4BruYpR6kwswDtaeNFA4YJWEqRnhPtOBidR0V1rPSrI
4sUVzkeb1RCipCJ8uyltUe+s3O9utoZSTMrV+RSXfoXueaERU37Fo5YJY586CmvS
gTRklzyfIRiWNK5UH9bIjIiAESUbCbbcURXoGX3w0EXihlZBjwpA/fzLhao4UYk+
aeDmhW74vKIljg1ySYH9GbcWYqOYFqma20F8FB0Zfar5cYvTXCgCqYOgFqLZCWcC
bC4Ex/owNHNxG4vZygaQU2/yNrmFjASveNC0CsTBSGknO9yFgnQfi7psFFdEFCL9
Xy2syOKKaDZTRN0YQlC52/MU0Hoh15MgZHbDVzTbIwDwOx4it74HQbzsYv1/wJ0G
RRomamCqEvNp90TJDav/1yRJDsWfHfGXLqLiwqfJVdzuLKYCOmGLP8K3059Q4rw1
xT/Yor8pdcmniVLz+KyZrHl6xNvOFVRN0GCphAU/mLtmJr/EaYdevyz9WyeFvQA5
DNWeQmPGew1VJofR0Slz
=3+w9
-----END PGP SIGNATURE-----
