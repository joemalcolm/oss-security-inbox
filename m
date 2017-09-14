X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1275" "Thursday" "14" "September" "2017" "09:51:36" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<4196795.4HvRXNqvRy@wanheda>" "31" "Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" nil nil nil "9" "2017091407:51:36" "[oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" (number mark "U       ago@gentoo.o Sep 14   31/1275  " thread-indent "\"Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)\"\n") "<20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>" ("<427445.19640425-sendEmail@localhost>" "<20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3174 invoked by uid 550); 14 Sep 2017 07:51:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3153 invoked from network); 14 Sep 2017 07:51:51 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Simon McVittie <smcv@debian.org>
Date: Thu, 14 Sep 2017 09:51:36 +0200
Message-ID: <4196795.4HvRXNqvRy@wanheda>
In-Reply-To: <20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>
References: <427445.19640425-sendEmail@localhost> <20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)

On gioved=EC 14 settembre 2017 09:24:45 CEST Simon McVittie wrote:
> On Thu, 14 Sep 2017 at 07:00:25 +0000, Agostino Sarubbo wrote:
> > The fuzz was done via the aacgain command-line tool which uses mp3gain
> > which bundles an old-modified version of mpg123 called mpglibDBL.
>=20
> I wouldn't recommend putting effort into fuzzing mp3gain. mpglibDBL
> is known to have security vulnerabilities anyway:
> https://security-tracker.debian.org/tracker/source-package/mp3gain
> (I wonder whether you've rediscovered those, or found new vulnerabilities=
?)
>=20
> It probably also suffers from most other historical vulnerabilities
> that are listed for mpg123. We removed it from Debian in 2014,
> with a recommendation to use the rgain Python package instead:
> https://tracker.debian.org/pkg/rgain
>=20
> rgain uses libmad or ffmpeg via GStreamer for decoding, so it isn't
> exactly bug-free either; but those libraries are actively maintained,
> and when they have vulnerabilities, they'd need to be fixed anyway for
> the benefit of other packages.
>=20
> Regards,
>     smcv
I didn't investigate to the mpg123 bugs, I searched for mp3gain into the CV=
E=20
database.
Anwyay I agree with you that is time to drop the packages.

--=20
Agostino Sarubbo
Gentoo Linux Developer
