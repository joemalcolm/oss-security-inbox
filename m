X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["971" "Saturday" "7" "August" "2021" "02:50:16" "+0000" "Thorsten Glaser" "tg@mirbsd.de" nil "25" "[oss-security] SNI is a security vulnerability all by itself (was Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances))" nil nil nil "8" nil nil (number mark "U       tg@mirbsd.de Aug  7   25/971   " thread-indent "\"[oss-security] SNI is a security vulnerability all by itself (was Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances))\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] SNI is a security vulnerability all by itself (was Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances))" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3842 invoked by uid 550); 7 Aug 2021 12:24:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3650 invoked from network); 7 Aug 2021 02:50:55 -0000
Date: Sat, 7 Aug 2021 02:50:16 +0000 (UTC)
From: Thorsten Glaser <tg@mirbsd.de>
X-X-Sender: tg@herc.mirbsd.org
To: Axel Beckert <abe@debian.org>
cc: lynx-dev@nongnu.org, oss-security@lists.openwall.com, security@debian.org,
        991971@bugs.debian.org
In-Reply-To: <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
Message-ID: <Pine.BSM.4.64L.2108070246110.904@herc.mirbsd.org>
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org> <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Subject: [oss-security] SNI is a security vulnerability all by itself (was Re: [Lynx-dev]
 bug in Lynx' SSL certificate validation -> leaks password in clear text via
 SNI (under some circumstances))

>Axel Beckert dixit:

>>IMHO this nevertheless needs a CVE-ID.

I wonder=E2=80=A6 perhaps the use of SNI, both in the TLSv1.3 standard
and in some TLSv1.2 implementations, should receive CVEs as well?

It certainly ought to be disabled by default. Perhaps add some
environment variable to enable SNI in the SSL library, and if
it=E2=80=99s not present or explicitly set to 0, disable SNI (which also
would disable TLSv1.3 as it requires SNI). Hmm, yes, this sounds
completely like a good idea.

(Considering SNI also leaks the vhost addressed by the end user,
which is otherwise hidden with wildcard certificates or grouped
with tone others in multi-subjectAltName certificates, it ought
to have been anyway.)

bye,
//mirabilos
--=20
=E2=80=9CIt is inappropriate to require that a time represented as
 seconds since the Epoch precisely represent the number of
 seconds between the referenced time and the Epoch.=E2=80=9D
	-- IEEE Std 1003.1b-1993 (POSIX) Section B.2.2.2
