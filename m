X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["583" "Friday" "4" "November" "2016" "09:52:32" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161104095232.010c9d40@pc1>" "23" "Re: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Date:" nil nil "11" "2016110408:52:32" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        hanno@hboeck Nov  4   23/583   " thread-indent "\"Re: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<20161102110745.o3la3xffk4xh6rgr@symphytum.spacehopper.org>" ("<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>" "<20161102110745.o3la3xffk4xh6rgr@symphytum.spacehopper.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32682 invoked by uid 550); 4 Nov 2016 08:52:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32661 invoked from network); 4 Nov 2016 08:52:44 -0000
Message-ID: <20161104095232.010c9d40@pc1>
In-Reply-To: <20161102110745.o3la3xffk4xh6rgr@symphytum.spacehopper.org>
References: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
	<20161102110745.o3la3xffk4xh6rgr@symphytum.spacehopper.org>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 4 Nov 2016 09:52:32 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use
 wrong host
To: oss-security@lists.openwall.com

On Wed, 2 Nov 2016 11:07:45 +0000
Stuart Henderson <stu@spacehopper.org> wrote:

> This switches to using libidn2,
[...]
> Has anyone poked at it much yet?

I poked a bit.
Nothing spectacular, a stac underread (accesses -1 of array), but only
in the command line tool:
https://gitlab.com/jas/libidn2/commit/3e3742321e7a280874903a7f7ae9bae7852c3=
415

And a memleak (not committed yet, sent to the maintianer).

It's only one function, so it's not too much to test.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
