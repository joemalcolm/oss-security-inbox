X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["623" "Thursday" "23" "February" "2017" "17:08:48" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170223170848.17d43fb3@pc1>" "20" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022316:08:48" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       hanno@hboeck Feb 23   20/623   " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>" ("<20170223074630.GB26098@suse.de>" "<20170223104054.42060545@pc1>" "<20170223100148.GA23394@suse.de>" "<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19610 invoked by uid 550); 23 Feb 2017 16:09:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19592 invoked from network); 23 Feb 2017 16:09:02 -0000
Date: Thu, 23 Feb 2017 17:08:48 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20170223170848.17d43fb3@pc1>
In-Reply-To: <D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
References: <20170223074630.GB26098@suse.de>
	<20170223104054.42060545@pc1>
	<20170223100148.GA23394@suse.de>
	<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

On Thu, 23 Feb 2017 07:56:51 -0500
Assaf Gordon <assafgordon@gmail.com> wrote:

> GNU Coreutils stopped installing 'su' by default in 2007,
> and completely removed 'su' (including the 'su.c' source file)
> in 2012.

That's good to know, so now there are only 2 competing versions of su
instead of 3 in major packages :-)

Anyone have a good idea who is using shadow vs. util-linux su? Do they
have specific advantages/disadvantages, would it be reasonable to try
to get all distros to use them same one?

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
