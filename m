X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2017" "Wednesday" "3" "August" "2016" "08:16:04" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160803121604.097D66C19BE@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE request:Heap overflow vulns in MuPDF" nil nil nil "8" "2016080312:16:04" "[oss-security] Re: CVE request:Heap overflow vulns in MuPDF" (number mark "U       cve-assign@m Aug  3   52/2017  " thread-indent "\"[oss-security] Re: CVE request:Heap overflow vulns in MuPDF\"\n") "<CAPGxrc9YpXo-DHd-oSOker5MhCAH1QoCW-6O4JE+pZScG79vng@mail.gmail.com>" ("<CAPGxrc9YpXo-DHd-oSOker5MhCAH1QoCW-6O4JE+pZScG79vng@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5255 invoked by uid 550); 3 Aug 2016 12:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5233 invoked from network); 3 Aug 2016 12:16:16 -0000
From: cve-assign@mitre.org
To: rootredrain@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAPGxrc9YpXo-DHd-oSOker5MhCAH1QoCW-6O4JE+pZScG79vng@mail.gmail.com>
Message-Id: <20160803121604.097D66C19BE@smtpvmsrv1.mitre.org>
Date: Wed,  3 Aug 2016 08:16:04 -0400 (EDT)
Subject: [oss-security] Re: CVE request:Heap overflow vulns in MuPDF

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The location of this vulnerability is at pdf_load_mesh_params function, at
> source/pdf/pdf-shade.c
> 
> n = (pdf_array_len(ctx, obj) - 4) / 2;
> 
> the length of array return from pdf_array_len not be checked. But the
> max size of "shade->u.m.C0/C1" is defined as a macro(32 as default). So if
> I make a pdf which have a large decode array. This code will cause a heap
> overflow.
> 
> And the overflow data could be control, And on the memory I overflow, I
> found a struct which full of function point. Maybe I can let it point to
> got table for a chance to call "system"
> 
> issue:
> http://bugs.ghostscript.com/show_bug.cgi?id=696954
> 
> fix code:
> http://git.ghostscript.com/?p=mupdf.git;h=39b0f07dd960f34e7e6bf230ffc3d87c41ef0f2e

>> Make sure that number of colors in mesh params is valid.

>> -               n = (pdf_array_len(ctx, obj) - 4) / 2;
>> +               n = fz_mini(FZ_MAX_COLORS, (pdf_array_len(ctx, obj) - 4) / 2);

Use CVE-2016-6525.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXod95AAoJEHb/MwWLVhi2vJsP/3mNzGB1iKiPpJuwf/CV+WTk
Y1wTcD45iQMF5BxDWKaLbZkTzqIhLw7elQFn0EW5Yybc/v9h11Ok3qSP3vm4m7AY
WIN/2r3T2JWaFyjogmvRn2o5+N5ffaqMFNxL5xV4DclQHqitSdztic9Ud0Kthpqu
9rT/91hFTWzS7jzlwmMrurrTWQ4fDD7H8/c4QXGNu4E3iaYLEJuz6OUbyAn5N2/j
B4dKCnDrkd+4nEneBFGS5FWak90g7BZQ7No9XugmsufiO26CzCv4SYDT2P+HGSul
UDxUIJLxM2Uo7vL25UMiSTRT04jzpggdL/95QFUVzjvYZ/5Srpv/lYCoKV6+CpOF
FIFGoeqMegIMKUcm7oGwRLpiJRZ7e2OUyZ3vVkCtohgmWHHq5UZ025FopRQZiYTi
MlCjJm61RGZGQRefVuC56UH2GgQ7VWEtT7T4Lbqtyu9Oyuy7GM/YrDhgu8GFp16K
L51V/3ohw3HrYtMlVIBP4orrhm7LLOZOG5jSO3yy88TgHGByqjlnhcMtvsWHsP1y
NSG+xZGr85tx71Bpp8rvEKbsZKY0q7bJ/05kF1CrPeeJfex2nUX0TocUFKkZsqwh
NKVXeOkjMv4TLpZ2z6dH5CX0NNVPZodBJJ5sJQW9Mk0lPnIOLS+Argm9OI7CKFbY
h/Vh2BSu7slwycmNpQjZ
=ZFaZ
-----END PGP SIGNATURE-----
