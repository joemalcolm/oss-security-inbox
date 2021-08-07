X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1067" "Saturday" "7" "August" "2021" "03:58:07" "+0000" "Thorsten Glaser" "tg@mirbsd.de" nil "38" "[oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       tg@mirbsd.de Aug  7   38/1067  " thread-indent "\"[oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5610 invoked by uid 550); 7 Aug 2021 12:24:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27961 invoked from network); 7 Aug 2021 04:07:18 -0000
Date: Sat, 7 Aug 2021 03:58:07 +0000 (UTC)
From: Thorsten Glaser <tg@mirbsd.de>
X-X-Sender: tg@herc.mirbsd.org
To: Axel Beckert <abe@debian.org>
cc: oss-security@lists.openwall.com, security@debian.org
In-Reply-To: <20210807024937.g43ooqppdm7zozbh@sym.noone.org>
Message-ID: <Pine.BSM.4.64L.2108070356370.904@herc.mirbsd.org>
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org> <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
 <20210807024937.g43ooqppdm7zozbh@sym.noone.org>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Subject: [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in
 clear text via SNI (under some circumstances)

Hi XTaran,

>> I *ALWAYS* SAID SNI IS A SHIT THING [=E2=80=A6]
>
>Don't blame the messenger. ;-)

Not blaming you in the slightest, rather the contrary, thanks for
vindicating me =E2=98=BB=E2=98=BA

>> Other browsers also need checking.
>
>Good idea.
[=E2=80=A6]
>I didn't find any such issue in any of these tools. All cases verified
>via Wireshark's "follow TCP stream" against an Apache 2.4.48 (from
>Debian Unstable as well).
>
>But yeah, there are probably many more to check. But so far it looks
>like a lynx-specific issue.

Good to know.

>> Thanks for the detective work,
>
>You're welcome. Thanks for stumbling over this issue and triggering my
>digging. :-)

Heh, I know the feeling. *adds more mksh commits because a user is
porting it to another weird hobbyist OS=E2=80=A6*

bye,
//mirabilos
--=20
=E2=80=9ECool, /usr/share/doc/mksh/examples/uhr.gz ist ja ein Grund,
mksh auf jedem System zu installieren.=E2=80=9C
	-- XTaran auf der OpenRheinRuhr, ganz begeistert
(EN: =E2=80=9C[=E2=80=A6]uhr.gz is a reason to install mksh on every system=
.=E2=80=9D)
