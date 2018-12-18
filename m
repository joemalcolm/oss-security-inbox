X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Tuesday" "18" "December" "2018" "12:14:00" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3810169.hn6iprp2Ks@overwatch>" "26" "Re: [oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" nil nil nil "12" "2018121811:14:00" "[oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" (number mark "U       ago@gentoo.o Dec 18   26/639   " thread-indent "\"Re: [oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array\"\n") "<CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>" ("<nycvar.YSQ.7.76.1812181420590.5773@xnncv>" "<CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7270 invoked by uid 550); 18 Dec 2018 11:14:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7252 invoked from network); 18 Dec 2018 11:14:17 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: saar amar <saaramar5@gmail.com>, P J P <ppandit@redhat.com>
Date: Tue, 18 Dec 2018 12:14:00 +0100
Message-ID: <3810169.hn6iprp2Ks@overwatch>
In-Reply-To: <CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>
References: <nycvar.YSQ.7.76.1812181420590.5773@xnncv> <CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart1600637.lG3KUbQIHY"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array

--nextPart1600637.lG3KUbQIHY
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 18 dicembre 2018 10:44:32 CET saar amar wrote:
> Thanks all  I'm happy it fixed, thanks for the response guys!
>=20
> I'm wondering why it says "DOS" and not "execute arbitrary code on the
> host, in the context of the QEMU process"? I have stack overflow, it pret=
ty
> clear I could gain more than simple DOS:)
>=20
> What do your day?

Maybe because of the -fstack-protector* flag used by default in the build p=
rocess.


--=20
Agostino Sarubbo
Gentoo Linux Developer

--nextPart1600637.lG3KUbQIHY--



