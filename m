Received: (qmail 30141 invoked by uid 550); 14 Mar 2023 19:36:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15589 invoked from network); 14 Mar 2023 19:11:44 -0000
Date: Tue, 14 Mar 2023 20:11:32 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Helmut Grohne <helmut@subdivi.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20230314191132.qDz3u%steffen@sdaoden.eu>
In-Reply-To: <20230314110138.GA1192267@subdivi.de>
References: <Y91yP6mYIZ+UXmgf@alf.mars> <20230314110138.GA1192267@subdivi.de>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
 oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-438-g5e0fdbd9f9
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Re: sox: patches for old vulnerabilities

Hello and greetings.

Helmut Grohne wrote in
 <20230314110138.GA1192267@subdivi.de>:
 |On Fri, Feb 03, 2023 at 09:44:47PM +0100, Helmut Grohne wrote:
 |>  * CVE-2021-33844
 |
 |The original fix for this issue would cause a regression. After applying
 |it, sox would be unable to decode WAV GSM files. This has been reported
 ...
 |I see that most distributions (e.g. RedHat, SUSE, Gentoo, etc.) have not
 |picked up the faulty patch. Ubuntu inherited it from Debian and will
 |likely inherit the fix as it gets fixed in Debian releases.

You have chosen not to update to latest possible git(?).

  ...
 |From: Helmut Grohne <helmut@subdivi.de>
 |Subject: wav: reject 0 bits per sample to avoid division by zero
 |Bug: https://sourceforge.net/p/sox/bugs/349/
 |Bug-Debian: https://bugs.debian.org/1021135
 ...
 |--- a/src/wav.c
 |+++ b/src/wav.c
 ...
 |     default:
 |+        if (ft->encoding.bits_per_sample == 0)
 |+        {
 |+            lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample \
 |is zero");
 |+            return SOX_EOF;
 |+        }


Now, latest git removed support for built-in GSM, and i am too
lazy and angry (do not get me started on Microsoft and OAuth for
a normal "app" that is to read mail, they now no longer accept
simple token refresh but with re-authenticating a 1024 or so bit
password after 3600 seconds, and then fail to accept SMTP even
though it is included, POP3 is not there anyway even though
announced, but IMAP is right -- is anybody here??  But that is
off-topic; just like my single-line graylister fix to support
verbose logs in non-development code, sic) to check it.

_But_ .. "default" is mysterious, there is WAVE_FORMAT_GSM610
right above, and it is optional in latest git, which does not even
support the "default:" label.
How can you reach "default:", thus?

 |         wav->numSamples = div_bits(qwDataLength, ft->encoding.bits_per_sam\
 |         ple) / ft->signal.channels;
 |         ft->signal.length = wav->numSamples * ft->signal.channels;
 |}

 --End of <20230314110138.GA1192267@subdivi.de>

Subdivision is a top-modern song of Rush, no?

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
