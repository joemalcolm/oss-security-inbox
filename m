X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2397" "Wednesday" "7" "October" "2020" "20:07:34" "+0000" "Noel Kuntze" "noel.kuntze@thermi.consulting" "<D9ABD55E-B4E7-4713-89DA-9FC17DAA7DF1@thermi.consulting>" "66" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020100720:07:34" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        noel.kuntze@ Oct  7   66/2397  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23961 invoked by uid 550); 7 Oct 2020 20:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11446 invoked from network); 7 Oct 2020 20:07:49 -0000
X-Virus-Scanned: amavisd-new at thermi.consulting
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thermi.consulting;
	s=201909; t=1602101257;
	bh=5n0tOtq1fAnQe+tjF8E7xt/LMmmWRcT+5JXmNvQOEVY=;
	h=Date:MIME-Version:Content-Type:Subject:To:From;
	b=VbA/UNB7cET9EBy6RXd21LWk59rp36ciSikarSX6xUhiyX9+msZSWLJWpljQk99yv
	 YG935r88Djsx6SrE2T4ZMWau1o3feH+1lCbrMBXdm8TlBCXDCXzylCT+ZFwDq+wyit
	 us5anKSCoLLXii1hmEZCb+WdHZLYXym61zXOtjyPv1KTTFngZp0KX78UHUmzsFKf0Z
	 c6br+dQ0Dw0squAgLSE0H/oTO6/PdQraK0zsHQyO9DXdcNgwGBoJsJGFeItUbMLQO4
	 bstV9OXw9RjrmULSyePQVzlr33J2b75VU84r3z00nm82uONWe6FiGvqJy9j+QEEO1z
	 uIUg13mgqAOtA==
In-Reply-To: <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com> <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----N9O2U7PHTGN4D25YWCQ8ZK030GG6S4"
Content-Transfer-Encoding: 7bit
Message-ID: <D9ABD55E-B4E7-4713-89DA-9FC17DAA7DF1@thermi.consulting>
Date: Wed, 07 Oct 2020 20:07:34 +0000
From: Noel Kuntze <noel.kuntze@thermi.consulting>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022
To: oss-security@lists.openwall.com

------N9O2U7PHTGN4D25YWCQ8ZK030GG6S4
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

It'd be sensible for the mode to be 751 and have public_html and, for examp=
le, a hypothetical "share" directory to have mode 755.

Kind regards

Noel

Am October 7, 2020 7:18:56 PM UTC schrieb Jeremy Stanley <fungi@yuggoth.org=
>:
>On 2020-10-07 21:00:35 +0300 (+0300), Georgi Guninski wrote:
>> https://lists.debian.org/debian-security/2020/10/msg00000.html
>>=20
>> =3D=3D=3D
>> /home/loser is with permissions 755, default umask 0022
>>=20
>> on multiuser machines this sucks much.
>>=20
>> on a multiuser debian mirror we found a lot of data,
>> including the wordpress password of the admin.
>> =3D=3D=3D
>
>It's tradition that on multi-user systems, users would want to share
>data with one another and also serve content from their home
>directories in Web sites. Further, it's not at all uncommon for
>sysadmins to not understand or consider the system defaults when
>making deployment decisions and failing to secure sensitive files.
>
>As a long-time Debian user myself, I agree that this default is
>showing its age, and can represent a risk for operators who overlook
>it.
>
>> Then in the thread someone with @debian.org email explains
>> to me it is a feature, not a bug.
>
>Nowhere in that response do they call it a feature, and it's
>disingenuous of you to imply that they did. It's a default, which is
>almost always going to be a balance between two (or more) competing
>needs. Also, I encourage you to take a guess at how many people
>there are "with @debian.org email" (hint, it's not a small number).
>
>A more informative response would probably have been to point you to
>https://wiki.debian.org/Debate/umask which provides pointers to
>where and how this would need to be solved in the long run.
>
>> In a addition, they suggest to tell them the mirror, lol.
>
>Yes, do you fault them for wanting to remove a likely compromised
>server from the network of volunteer-run package mirrors?
>
>> Are debian detached from reality?
>
>Your brusque and insulting attitude (saying their choices suck,
>calling them detached from reality, laughing at their explanations)
>is likely to trigger glib responses and cause people to be less
>inclined to pay attention to what you have to say.
>--=20
>Jeremy Stanley

------N9O2U7PHTGN4D25YWCQ8ZK030GG6S4--
