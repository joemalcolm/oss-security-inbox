X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2573" "Tuesday" "26" "July" "2016" "17:32:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160726213218.C0BD36C49F4@smtpvmsrv1.mitre.org>" "62" "[oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7" nil nil nil "7" "2016072621:32:18" "[oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7" (number mark "U       cve-assign@m Jul 26   62/2573  " thread-indent "\"[oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7\"\n") "<CAGkswnQeO6oXv+so+DRCMWHqpVKuKYjZ3dTo=gZo2GzycdArhw@mail.gmail.com>" ("<CAGkswnQeO6oXv+so+DRCMWHqpVKuKYjZ3dTo=gZo2GzycdArhw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11779 invoked by uid 550); 26 Jul 2016 21:32:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11758 invoked from network); 26 Jul 2016 21:32:30 -0000
From: cve-assign@mitre.org
To: franco.costantini.20@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, gustavo.grieco@imag.fr
In-Reply-To: <CAGkswnQeO6oXv+so+DRCMWHqpVKuKYjZ3dTo=gZo2GzycdArhw@mail.gmail.com>
Message-Id: <20160726213218.C0BD36C49F4@smtpvmsrv1.mitre.org>
Date: Tue, 26 Jul 2016 17:32:18 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A write out-of-bounds parsing an ico file was found in gdk-pixbuf 2.30.7.
>  #0  0x00007fffd83b428c in OneLine32 (context=0x7fffe0029820) at io-ico.c:589
>  #1  OneLine (context=0x7fffe0029820) at io-ico.c:800
>  #2  gdk_pixbuf__ico_image_load_increment (data=0x7fffe0029820,
>      buf=0x7fffe001b852 "", size=0, error=0x7fffe9655b68) at io-ico.c:891
> 
> The affected function is here:
> 
>  static void OneLine32 (struct ico_progressive_state *context)
> {
>         gint X;
>         guchar *Pixels;
> 
>         X = 0;
>         if (context->Header.Negative == 0)
>                 Pixels = (context->pixbuf->pixels +
>                           context->pixbuf->rowstride *
>                           (context->Header.height - context->Lines - 1));
>         else
>                 Pixels = (context->pixbuf->pixels +
>                           context->pixbuf->rowstride *
>                           context->Lines);
>         while (X < context->Header.width) {
>                 Pixels[X * 4 + 0] = context->LineBuf[X * 4 + 2];
>                 Pixels[X * 4 + 1] = context->LineBuf[X * 4 + 1];
>                 Pixels[X * 4 + 2] = context->LineBuf[X * 4 + 0];
>                 Pixels[X * 4 + 3] = context->LineBuf[X * 4 + 3];
>                 X++;
>         }
> }
> 
> The value of context->Header.height in OneLine32 is a very large number
> (probably it wasn't validated correctly). Such value is used to calculate
> where to write, resulting in an overflow where Pixels is written.

Use CVE-2016-6352.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXl9U9AAoJEHb/MwWLVhi28xQP/1zBqPYG123HPUFPnXTWGwze
sGFujS/ujI5pnHeSG4mQtDVQmAbVwzhBFzzs1OfIsDFNDCvLiZdOJd7EJaTjnjK0
S4yLI65ch0WFZj5ryloElr8Fz3SpPG0fe1pMP7Ozy+XcZQuk6DhWvfXoh7hT1L3g
H2+Tk6VLnFukQ14+wFo0QrSg/sYdXnZw1bO7sD6RVuV0Kq/hNeZkk30pAElTe8j4
DmdvGk24KYz7kEjJ7oBH12lLk+fkCar0p6ns34xqjxHmlwH/ZyQv/CFGyONiDuS0
nKQ8sXAYdDUWNZXL+gCksa3xP7RrNckEU1tR7sgxJ05gYtJc2ynmtIzaKcNnPBqQ
HZFsdCNH5Jhps7TQgKDO7P5ODfn4TV+npbk0m+9bMycm32ZQIMaJN3ogGCol9fMl
HSSReoF8vqp8MN2jXk7/sSeethQBdQGztq0DumaTqAZQgT+hCbCuRGBHKjPWuKDc
KJSmjYr6S0vh2uKPgpKp5K2YaFp7wyrFunpYpAlY39OoKmBAvfnH61Ot9zAPNwZk
OVn6cXRKNALZvJcYQWpovJQafYXkQjvDZDNSFmf+2IlG63L+xe59s4wyDDFMrfdH
NuVT245u/Tzry++Zpd7ngllQnmnXgU9/afi3BJ8kSbYtD4Yv7IBD4jL5BuE7IjUv
RZAyaUwhZ7VlgAGBBpN/
=7A2U
-----END PGP SIGNATURE-----
