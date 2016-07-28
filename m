X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2701" "Thursday" "28" "July" "2016" "16:17:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160728201723.046E4332028@smtpvbsrv1.mitre.org>" "66" "[oss-security] Re: CVE-Request Buffer overflow ImageMagick" nil nil nil "7" "2016072820:17:23" "[oss-security] Re: CVE-Request Buffer overflow ImageMagick" (number mark "U       cve-assign@m Jul 28   66/2701  " thread-indent "\"[oss-security] Re: CVE-Request Buffer overflow ImageMagick\"\n") "<5FE87C7D-93F9-45CE-91F4-4C29BEB1A8E2@gmail.com>" ("<5FE87C7D-93F9-45CE-91F4-4C29BEB1A8E2@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13391 invoked by uid 550); 28 Jul 2016 20:17:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13370 invoked from network); 28 Jul 2016 20:17:35 -0000
From: cve-assign@mitre.org
To: i.elsayed92@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5FE87C7D-93F9-45CE-91F4-4C29BEB1A8E2@gmail.com>
Message-Id: <20160728201723.046E4332028@smtpvbsrv1.mitre.org>
Date: Thu, 28 Jul 2016 16:17:23 -0400 (EDT)
Subject: [oss-security] Re: CVE-Request Buffer overflow ImageMagick

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I would like to request a CVE for a buffer overflow in ImageMagick
> that was fixed in the following commit:
> https://github.com/ImageMagick/ImageMagick/commit/dd84447b63a71fa8c3f47071b09454efc667767b
> 
> to run the PoC try:
> magick convert -clip PoC1  <<<-- This will run the first PoC
> 
> The vulnerability gets triggered at 
> 
> https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore/property.c#L697
> 
> (void) CopyMagickMemory(attribute,(char *) info,(size_t) count);
> 
> The info ptr points at the end of the PoC image. The out-of-bound read
> occurs when info+count is > image_size. The attribute ptr then points
> to data that is read from the memory.
> 
> backtrace
> #9  0x000000000043a5f8 in CopyMagickMemory ... at MagickCore/memory.c:696
> #10 0x000000000046f0ff in Get8BIMProperty ... at MagickCore/property.c:698
> 
> PoC1: reads 0xff5f extra bytes from the memory
> 
> PoC2: reads 0xb0ff5f bytes of the memory (it is likely that this PoC
> causes a crash because the memory segment isn't mapped or doesn't have
> the correct permissions)
> 
> The read out-of-bound could lead to memory leak because the data read
> is then written into the output image using SetImageProperty which is
> called after the read
> 
> The PoC has been tested on 
> version: ImageMagick 7.0.2-1 Q16 x86_64 2016-06-19 http://www.imagemagick.org

>> We can reproduce it and will have a patch to fix it in GIT master
>> branch @ https://github.com/ImageMagick/ImageMagick later today. The
>> patch will be available in the beta releases of ImageMagick @
>> http://www.imagemagick.org/download/beta/ by sometime tomorrow.

Use CVE-2016-6491.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXmmfOAAoJEHb/MwWLVhi2IfMP/11wKvLq+QNlKEQhhkEjqtHo
TKeWjJoiuLQnZENiE1QXQ5JC2tZFaDHyqcun9Kf9CIAUaskSxQM7iEmsPvfyqYaA
4Q/Rzj7ECKyvBR5DUszKgpiOzA8UFBzNUaRijNQfSttefTBhOm76l4jGLFCiSyTU
h3/QrvvaYJBOcYnyFcvRW+p7XxCR/ZFeoqo9HExMYLZDIt2XaBS2/+Baea7gDPsZ
SUhG701l7W5RGoQYLszoUm0Bz54AH9253fzl0TKlC/XQqSQ33eUi5gWgzXCNr4dx
Vuaf1oaPRh3khNQi04/HGnQY3dMrOUPWz2LXb5IDJAxSoGBDLShwhdmGaTqLOgJq
MwQVItboa+pP8FwXeHQdn3ILYux1LXTZwNrQrDwpM5OBR5OyGYNa9XhcAZAMb7l2
sawjvOG0SvGU4FGaiELy1E9B6QxOOY7ZlOHXUY1Wrqaa1hFKU/30btWcprAj23jc
vnvxKMq2FHJRDGCKFSgtOVtdush551sPWKkdlsb7mENT9Xu0cuCZAYkrwjgiNb7K
87uWrfyIIsWkNBm/V58hhP5qwx1LsX13Fq7uv40snnGPjGBhxjdWeinbnsEemxYr
vPNMq7eOhRTAyLJ2k+DE6jsV89I6vMkNl6/JblZjrG9HNyFVCl1LGCJ3ZtUib/pK
VtsKTtJ1QXnPAwVPaNnf
=mi15
-----END PGP SIGNATURE-----
