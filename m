X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1258" "Tuesday" "12" "June" "2018" "11:25:45" "-0400" "Jordan Glover" "Golden_Miller83@protonmail.ch" "<KBGc1jApJZIJ7ISv_bB8MS1GLVaDWKb2J89dL8hnV0DlCJyVQ2f0VYI0-JpMbF4B9o5uHNn6ZTLlYLpseEup2hOfJ17rofaARO-joZhPOl4=@protonmail.ch>" "43" "Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" "^Date:" nil nil "6" "2018061215:25:45" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "        Golden_Mille Jun 12   43/1258  " thread-indent "\"Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>" ("<20180612095613.GC1073@sivokote.iziade.m$>" "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25670 invoked by uid 550); 12 Jun 2018 15:44:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4050 invoked from network); 12 Jun 2018 15:26:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=default; t=1528817148;
	bh=o6JGpQiDUepONIECxX5S4iTj76fJHwUSFaM2YPzVoQ4=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
	 From;
	b=saKpwrzTYxhlVyz/0vw277bpEZWlThsuEGvA7Zgj+jOCBeMpSRFhtKY7JnrNTGRhe
	 8OvpgKOZDr6bhDidJ0QfnPoMk4Ew8Nk1YX4EMBiBIBmFejdVvSE2VUhQXvMD3ZXYrK
	 /68fwP5nmC5JasAcIvRIz59CNK43hnJCx57JAAjo=
Message-ID: <KBGc1jApJZIJ7ISv_bB8MS1GLVaDWKb2J89dL8hnV0DlCJyVQ2f0VYI0-JpMbF4B9o5uHNn6ZTLlYLpseEup2hOfJ17rofaARO-joZhPOl4=@protonmail.ch>
In-Reply-To: <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
References: <20180612095613.GC1073@sivokote.iziade.m$>
 <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
Feedback-ID: QEdvdaLhFJaqnofhWA-dldGwsuoeDdDw7vz0UPs8r8sanA3bIt8zJdf4aDqYKSy4gJuZ0WvFYJtvq21y6ge_uQ==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Jun 2018 11:25:45 -0400
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

On June 12, 2018 1:38 PM, Jakub Wilk <jwilk@jwilk.net> wrote:

> -   Georgi Guninski guninski@guninski.com, 2018-06-12, 13:17:
>=20
> > https://j.ludost.net/blog/archives/2018/06/12/are_su_user_andor_sudo_-u=
_user_sh_considered_dangerous/index.html
> >=20
> > Per vague memory I discussed half of this with some linux crowd and
> >=20
> > they said "won't fix" long ago.
> >=20
> > `su user' and`sudo -u user sh' give the user the fd of root's tty and
> >=20
> > it is readable and writable. After closing the session, the user can
> >=20
> > keep it and on root's tty potentially do:
> >=20
> > 1.  inject keypresses via ioctl()
> >=20=20=20=20=20
> >     and/or
> >=20=20=20=20=20
> > 2.  read the output of root's tty, probably with some analogue of
> >=20=20=20=20=20
> >     tee(1).
> >=20=20=20=20=20
> >=20
> > Is this really a concern?
>=20
> This class of vulnerabilities has been known since at least 2005:
>=20
> https://bugzilla.redhat.com/show_bug.cgi?id=3D173008 (CVE-2005-4890)
>=20
> It was last discussed on oss-security in 2017:
>=20
> http://seclists.org/oss-sec/2017/q2/412
>=20
> > Any workarounds?
>=20
> For sudo, there's the "use_pty" flag. (It's not enabled by default.)

Why this isn't default? Where's the catch?

=E2=80=8BJordan
