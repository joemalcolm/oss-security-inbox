X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1511" "Monday" "14" "November" "2016" "13:40:34" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<7871016480124167bb36dc8681d1e8bd@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: Imagemagick heap overflow" nil nil nil "11" "2016111418:40:34" "[oss-security] Re: Imagemagick heap overflow" (number mark "U       cve-assign@m Nov 14   37/1511  " thread-indent "\"[oss-security] Re: Imagemagick heap overflow\"\n") "<CAE2SPAbE_XOSFwrt=r=zvLf003rXL78f+-pBpXU4Ggc+q6gGtA@mail.gmail.com>" ("<CAE2SPAbE_XOSFwrt=r=zvLf003rXL78f+-pBpXU4Ggc+q6gGtA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11582 invoked by uid 550); 14 Nov 2016 18:40:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11561 invoked from network); 14 Nov 2016 18:40:45 -0000
From: <cve-assign@mitre.org>
To: <roucaries.bastien@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<team@security.debian.org>
In-Reply-To: <CAE2SPAbE_XOSFwrt=r=zvLf003rXL78f+-pBpXU4Ggc+q6gGtA@mail.gmail.com>
Message-ID: <7871016480124167bb36dc8681d1e8bd@imshyb02.MITRE.ORG>
Date: Mon, 14 Nov 2016 13:40:34 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Imagemagick heap overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/ImageMagick/ImageMagick/issues/296
> 
> Imagemagick before 3cbfb163cff9e5b8cdeace8312e9bfee810ed02b
> suffer from a heap overflow in WaveletDenoiseImage()
> 
> https://github.com/ImageMagick/ImageMagick/commit/3cbfb163cff9e5b8cdeace8312e9bfee810ed02b
> 
> -  kernel=(float *) AcquireQuantumMemory(MagickMax(image->rows,image->columns),
> +  kernel=(float *) AcquireQuantumMemory(MagickMax(image->rows,image->columns)+1,

Use CVE-2016-9298.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYKgM4AAoJEHb/MwWLVhi2MewP+QFOJsQiiDfwNhdN+UKAPde4
6Lr26VhijhZvwDFrYM+YGcAdajnTmOXe1JnRHKuFwThVwHfnmKq36INM3urKH+pS
Vr6+xaG1ITbFsA9xNojUSFeK98LOYs+1EEipTW+PsPpkvL7LAwjTEdBIvbc5rKhF
gCcV9IScnAGPMyQvi6rnlKU7BbBMkEh7H7b/1B/ytaNVPy9adG18h9M7dY7+bXEN
FsBO7stN/Mvz0UtnMyCsFeP14RwUSRmwDhsfxv9K8YCiogI70B1rjWMHvG0ZoBhP
omZENbWh+ZJyKCOnyEN1o331NINkbYS0NWVvjrOU5Opre+Jo6yPHoG9lp+kScLQ3
1u509BUE3415Ny8xPqITP/duAzQoNNoSR6y3ZCuDEtSn+jH0rufkie2N6wI0FK49
c4nxspUMBm5UlMVjGfKBZXa1OX7GthFXu22sEm/uc8Zmf/ALVR48vHHKs3Bz3t5S
fIw7R9mAhp5CM/ieu3X0g0WlrVQbqbQqfDSOokHWDOhi79n7hEGkNjAMWh1oBWah
SY52vuWRTDla9k6mJuXENej2Cj01B9J5PbqY6lNUXSh+gExCLx7ZC0RVoXRiJ/AS
WIstWjng16SMIVrT88koD9JD3nHQ/QpBIEONBqBfVosEzvqVkO3/ijPuNQ4eAjAb
6AmnkYtJ1wfbZgjiYqCe
=gHC9
-----END PGP SIGNATURE-----
