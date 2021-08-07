X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1172" "Saturday" "7" "August" "2021" "02:14:12" "+0000" "Thorsten Glaser" "tg@mirbsd.de" nil "28" "[oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       tg@mirbsd.de Aug  7   28/1172  " thread-indent "\"[oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31842 invoked by uid 550); 7 Aug 2021 12:23:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23799 invoked from network); 7 Aug 2021 02:16:21 -0000
Date: Sat, 7 Aug 2021 02:14:12 +0000 (UTC)
From: Thorsten Glaser <tg@mirbsd.de>
X-X-Sender: tg@herc.mirbsd.org
To: Axel Beckert <abe@debian.org>
cc: lynx-dev@nongnu.org, oss-security@lists.openwall.com, security@debian.org,
        991971@bugs.debian.org
In-Reply-To: <20210807015102.ea4f5immh2l5ku4n@sym.noone.org>
Message-ID: <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Subject: [oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks
 password in clear text via SNI (under some circumstances)

Axel Beckert dixit:

>This is more severe than it initially looked like: Due to TLS Server
>Name Indication (SNI) the hostname as parsed by Lynx (i.e with
>"user:pass@" included) is sent in _clear_ text over the wire even

I *ALWAYS* SAID SNI IS A SHIT THING ONLY USED AS BAD EXCUSE FOR NAT
BY PEOPLE WHO ARE TOO STUPID TO CONFIGURE THEIR SERVERS RIGHT AND AS
BAD EXCUSE FOR LACKING IPv6 SUPPORT, AND THEN THE FUCKING IDIOTS WENT
AND MADE SNI *MANDATORY* FOR TLSv1.3, AND I FEEL *SO* VINDICATED RIGHT
NOW! IDIOTS IN CHARGE OF SECURITY, FUCKING IDIOTS=E2=80=A6

>But given that the symptoms Thorsten discovered stayed unreported for
>quite some years, I assume that this use case is a rather seldom one.

Nah, SNI is a rather recent thing. But=E2=80=A6

>IMHO this nevertheless needs a CVE-ID.

=E2=80=A6 it probably does. Other browsers also need checking.

Thanks for the detective work,
//mirabilos
--=20
<diogenese> Beware of ritual lest you forget the meaning behind it.
<igli> yeah but it means if you really care about something, don't
    ritualise it, or you will lose it. don't fetishise it, don't
    obsess. or you'll forget why you love it in the first place.
