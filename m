X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1259" "Tuesday" "24" "November" "2020" "15:41:38" "-0300" "=?utf-8?B?w4lyaWNvIE5vZ3VlaXJh?=" "ericonr@disroot.org" "<C7BPQ8QXYYWF.D8NINZX15SL4@mussels>" "39" "Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil "11" "2020112418:41:38" "[oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" (number mark "U       ericonr@disr Nov 24   39/1259  " thread-indent "\"Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions\"\n") "<X71KzJHgsplpNDjT@sol>" nil nil nil nil nil nil nil nil "Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11530 invoked by uid 550); 24 Nov 2020 19:12:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23771 invoked from network); 24 Nov 2020 18:50:22 -0000
X-Virus-Scanned: Debian amavisd-new at disroot.org
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1606243809; bh=aVulgQXgFv2De/6/t+gGJvPVr4pl1/75f0ZXWUOYykM=;
	h=Subject:From:To:Date:In-Reply-To;
	b=lPmjCPNHTJ/0eCjxxNjp1cmMd3sHb7FLoeKEiyyVzTxLTtiMPkxHYpwJk+8mZrqEi
	 v4b2Njr6iBtx3OnKd0wrIBeygrJtgWuc9pAF4odyedQEsfo4BNQL3OYl+JXsrA967w
	 ZxR4q5eQN3i40IpWqYsMGiayjAxFQDaAFFaI2ys0YpuVNPkTHvhlGbsYIxhVL/+P9J
	 8+5yYK8m92ALZDX6Wr5HgGEitZBokk2OSoyEpIZ1ft4Leyx1peS+mX/73Ll9eqEPx7
	 6ALkWsB4kElqoid1Vq8rSDwM5Ky4wo/APPVBwngyMg6BauiJqeLe1fqBrfG3/XuQrZ
	 UEf5kJgmREr6g==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
From: =?utf-8?q?=C3=89rico_Nogueira?= <ericonr@disroot.org>
To: <oss-security@lists.openwall.com>
Date: Tue, 24 Nov 2020 15:41:38 -0300
Message-Id: <C7BPQ8QXYYWF.D8NINZX15SL4@mussels>
In-Reply-To: <X71KzJHgsplpNDjT@sol>
Subject: Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some
 conditions

On Tue Nov 24, 2020 at 3:02 PM -03, John Helmert III wrote:
> On Tue, Nov 24, 2020 at 07:20:21PM +0100, Marcus Meissner wrote:
> > Hi,
> >=20
> > (via IRC, spotted by Foxboron)
> >=20
> > PAM 1.5.0 had a potential auth bypass, if a user did not exist and the =
root password was
> > empty (but root locked down).
> >=20
> > The reporters usecase was spammers pretending to be unknown users with =
a PAM enabled dovecot.
> >=20
> > This issue affected only pam 1.5.0.
> >=20
> > News entry:
> > https://github.com/linux-pam/linux-pam/commit/28b8c7045ac8ea4ea080bce02=
a2df9e3b9e98f06
> >=20
> > CVE-2020-27780
> >=20
> > github issue reporting the problem: https://github.com/linux-pam/linux-=
pam/issues/284
> > Fixing commit: https://github.com/linux-pam/linux-pam/commit/af0faf666c=
5008e54dfe43684f210e3581ff1bca
>
> It looks like that commit is in 1.5.0, and the issue was closed by
> commit 30fdfb9 (not af0faf6).

=46rom the PR [1] that fixed it, the issue was introduced in af0faf6.

Commit 30fdfb9 was made 4 days ago, and is not in the 1.5.0 release
(clearing this up for others, since I thought you meant the issue had
been solved in 1.5.0 already, and was a bit confused).

- [1] https://github.com/linux-pam/linux-pam/pull/300

Cheers,
=C3=89rico
