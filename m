X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1164" "Saturday" "7" "August" "2021" "18:49:57" "+0000" "Thorsten Glaser" "tg@mirbsd.de" nil "32" "[oss-security] Re: [Lynx-dev] [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       tg@mirbsd.de Aug  7   32/1164  " thread-indent "\"[oss-security] Re: [Lynx-dev] [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [Lynx-dev] [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9362 invoked by uid 550); 7 Aug 2021 20:10:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32484 invoked from network); 7 Aug 2021 18:55:49 -0000
Date: Sat, 7 Aug 2021 18:49:57 +0000 (UTC)
From: Thorsten Glaser <tg@mirbsd.de>
X-X-Sender: tg@herc.mirbsd.org
To: Ariadne Conill <ariadne@dereferenced.org>
cc: oss-security@lists.openwall.com, Axel Beckert <abe@debian.org>,
        lynx-dev@nongnu.org, security@debian.org, 991971@bugs.debian.org
In-Reply-To: <ab519dc0-7354-8e5-8855-ffea2534ea34@dereferenced.org>
Message-ID: <Pine.BSM.4.64L.2108071847450.4154@herc.mirbsd.org>
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org> <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
 <ab519dc0-7354-8e5-8855-ffea2534ea34@dereferenced.org>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Subject: [oss-security] Re: [Lynx-dev] [oss-security] Re: bug in Lynx' SSL certificate
 validation -> leaks password in clear text via SNI (under some circumstances)

Ariadne Conill dixit:

> It turns out SNI is only marginally related to this issue.  The issue
> itself is far more severe: HTParse() does not understand the authn
> part of the URI at all.

Yes, of course. But without SNI, nothing would have been sent *in
plaintext* at all. The certificate validation fails=C2=B9, the connection
stops and the user is asked whether to continue.

=E2=91=A0 Tested on an OS without SNI in its libssl.

> As a workaround, I taught HTParse() how to parse the authn part of URIs, =
but
> Lynx itself needs to actually properly support the authn part really.
>
> I have attached the patch Alpine is using to work around this infoleak.

Thanks!

I recall having to work manually to strip the port from the hostname
for SSL certificate validation, ages ago, but I had not tested with
HTTP Auth sites back then.

bye,
//mirabilos
--=20
Gestern Nacht ist mein IRC-Netzwerk explodiert. Ich hatte nicht damit
gerechnet, darum bin ich blutverschmiert=E2=80=A6 wer konnte ahnen, da=C3=
=9F SIE so
reagier=E2=80=99n=E2=80=A6 gestern Nacht ist mein IRC-Netzwerk explodiert~~~
	(as of 2021-06-15 The MirOS Project temporarily reconvenes on OFTC)
