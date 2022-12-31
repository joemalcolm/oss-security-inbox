Received: (qmail 4044 invoked by uid 550); 31 Dec 2022 16:36:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1673 invoked from network); 31 Dec 2022 16:31:45 -0000
X-MC-Unique: AHTFuIkIMMqNt7aEoGq0EQ-1
From: David Laight <David.Laight@ACULAB.COM>
To: 'Shawn Webb' <shawn.webb@hardenedbsd.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Alejandro Colomar <alx.manpages@gmail.com>, Michael Kerrisk
	<mtk.manpages@gmail.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-man@vger.kernel.org"
	<linux-man@vger.kernel.org>
Thread-Topic: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly
Thread-Index: AQHZGtCXw3AZMxRdFEGt4rB+yFX0n66IM7kQ
Date: Sat, 31 Dec 2022 16:31:30 +0000
Message-ID: <fe260c38cf7e416288449691bb9cb5dd@AcuMS.aculab.com>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
In-Reply-To: <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: RE: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

From: Shawn Webb
> Sent: 28 December 2022 15:25
>=20
> On Tue, Dec 27, 2022 at 04:44:49PM -0800, Lyndon Nerenberg (VE7TFX/VE6BBM=
) wrote:
> > Dominique Martinet writes:
> >
> > > But, really, I just don't see how this can practically be said to be =
parsable...
> >
> > In its current form it never will be.  The solution is to place
> > this variable-length field last.  Then you can "cut -d ' ' -f 51-"
> > to get the command+args part (assuming I counted all those fields
> > correctly ...)
> >
> > Of course, this breaks backwards compatability.
>=20
> It would also break forwards compatibility in the case new fields
> needed to be added.
>=20
> The only solution would be a libxo-style feature wherein a
> machine-parseable format is exposed by virtue of a file extension.
>=20
> Examples:
>=20
> 1. /proc/pid/stats.json
> 2. /proc/pid/stats.xml
> 3. /proc/pid/stats.yaml_shouldnt_be_a_thing

None of those are of any real use if you are trying to parse the
data in something like a shell script.
Multiple lines formatted as "tag:value" are probably the best bet.
Provided something sane is done with embedded \n (and maybe \r).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)

