X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1797" "Wednesday" "13" "July" "2016" "14:11:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160713181134.26BA78BC19E@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" nil nil nil "7" "2016071318:11:34" "[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" (number mark "U       cve-assign@m Jul 13   48/1797  " thread-indent "\"[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd\"\n") "<CACn5sdQdx5A0vn88nZHTkYE_T6cgP8zrcPfeFBKUGp-W7AjdKA@mail.gmail.com>" ("<CACn5sdQdx5A0vn88nZHTkYE_T6cgP8zrcPfeFBKUGp-W7AjdKA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31973 invoked by uid 550); 13 Jul 2016 18:11:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31950 invoked from network); 13 Jul 2016 18:11:45 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQdx5A0vn88nZHTkYE_T6cgP8zrcPfeFBKUGp-W7AjdKA@mail.gmail.com>
Message-Id: <20160713181134.26BA78BC19E@smtpvmsrv1.mitre.org>
Date: Wed, 13 Jul 2016 14:11:34 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/libgd/libgd/issues/247#issuecomment-232084241
> 
> a read out-of-bound

> AddressSanitizer: heap-buffer-overflow
> READ of size 4

> The problem is
> https://github.com/libgd/libgd/blob/gd-2.2.2/src/gd_tga.c#L102. In
> this case tga->bits == TGA_BPP_8 && tga->alphabits == 1, but the code
> in the if body assumes tga->bits == TGA_BPP_32. The comment above the
> respective code block already hints, that this combination is not
> supported. The condition is supposed to be:
> 
>    } else if (tga->bits == TGA_BPP_32 && tga->alphabits) {

> https://github.com/libgd/libgd/commit/10ef1dca63d62433fda13309b4a228782db823f7

> the libgd developers confirmed that this issue is not the
> same as CVE-2016-6132

Use CVE-2016-6214.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXhoP0AAoJEHb/MwWLVhi2CXgP/0BrhP3KJ9rAB74j3KghawYu
7sVjfO28PWfCd4aEhor1/T4UFWU7u2LWJ2uBfMG+aDbUOn3WHezSo1+6HreoJmRn
X95QK52iQ7/+9ZcO0+AqbRkiP/ZhkRBq9q5jzfSDSBKwPwgc+wkYj3CvaSD9f1A7
zqJ2+y65l1jceyc/ytmFM4vA0vfRVKwaNCrYCYTVxfqPUoSZqsOTpp3yoj0l4kZM
MJs7fVPbkeyWK+5S80VgSMSMoRAezackJq3GiTnonbnNn6Zxy8dX0of0eRxfzBVZ
o6EhPWcawE49oOdo50GSWAN+CkPj+HMlT427/DWyvNpcuugxKlEx9eEefzSKdLAW
RqUJde6c3np/tWp0Vl3DMxQEsUojUX1MV294uixvGlh5M4FUmbir/OF8kyEsjRJ1
6ZfoJRaI/JOGTbaEHOy1qjH4FoOXmDUGnDccUs6fv834UOrPVK9vNXlql++8nPxh
JPHDkjv2ZO+MEV+m4EZM7FdA03oK5Hum3qWvnsmqbHMSMfCMQgUcfustMVsEreJF
t5DT04HRFGVfk4DcYMu17bdyPQNPhsfqP9Dx34cHp8FYJ5M/1h9nzjFmKWyf2Tqw
39ua05QjA7VNx/m3XQBnMwKQAGfhKzoQger0mbMPO+E9fENh3PmzWJO02xtkrQAZ
iHWVDcQfP5wIpp/QdtCm
=W+Ut
-----END PGP SIGNATURE-----
