X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1092" "Wednesday" "27" "January" "2021" "09:33:40" "+0100" "Hanno =?iso-8859-1?Q?B=F6c?==?iso-8859-1?Q?k?=" "hanno@hboeck.de" "<20210127093340.6d976bc2@computer>" "38" "Re: [oss-security] Baron Samedit: Heap-based buffer overflow in Sudo (CVE-2021-3156)" nil nil nil "1" "2021012708:33:40" "[oss-security] Baron Samedit: Heap-based buffer overflow in Sudo (CVE-2021-3156)" (number mark "U       hanno@hboeck Jan 27   38/1092  " thread-indent "\"Re: [oss-security] Baron Samedit: Heap-based buffer overflow in Sudo (CVE-2021-3156)\"\n") "<20210126181453.GA4184@localhost.localdomain>" ("<20210126181453.GA4184@localhost.localdomain>") nil nil nil nil nil nil nil "Re: [oss-security] Baron Samedit: Heap-based buffer overflow in Sudo (CVE-2021-3156)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7590 invoked by uid 550); 27 Jan 2021 08:33:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7569 invoked from network); 27 Jan 2021 08:33:52 -0000
Date: Wed, 27 Jan 2021 09:33:40 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20210127093340.6d976bc2@computer>
In-Reply-To: <20210126181453.GA4184@localhost.localdomain>
References: <20210126181453.GA4184@localhost.localdomain>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Baron Samedit: Heap-based buffer overflow in
 Sudo (CVE-2021-3156)

Hi,

Just sharing a few thoughts and things I read elsewhere:

complexity
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The top comment on lobste.rs points out that a problem of sudo is
complexity:
https://lobste.rs/s/efsvqu/heap_based_buffer_overflow_sudo_cve_2021#c_c6fcfa

I think that's a very fair point. Also it seems the development trend
in sudo is to actually increase complexity even more and adding all
kinds of features that really should not be part of a suid tool, see
e.g.
https://computingforgeeks.com/better-secure-new-sudo-release/

The lobste.rs poster points to doas, which seems to be a much simpler
alternative coming from OpenBSD, a portable version exists:
https://github.com/Duncaen/OpenDoas

testing
=3D=3D=3D=3D=3D=3D=3D

Top commenter at HN points out that there's a lack of testing in sudo:
https://news.ycombinator.com/item?id=3D25921811

Neither the commit that introduced this bug nor the commit that fixed
it contained a test.

Fair point again.
Here doas does not compare well: It does not seem to come with a test
suite at all.


--=20
Hanno B=C3=B6ck
https://hboeck.de/
