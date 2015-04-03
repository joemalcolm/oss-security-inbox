X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3409" "Friday" "3" "April" "2015" "16:15:41" "+0000" "Sona Sarmadi" "sona.sarmadi@enea.com" "<3230301C09DEF9499B442BBE162C5E48258B5FA8@SESTOEX04.enea.se>" "79" "RE: [oss-security] membership request  to the closed linux-distros security mailing list" nil nil nil "4" "2015040316:15:41" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        sona.sarmadi Apr  3   79/3409  " thread-indent "\"RE: [oss-security] membership request  to the closed linux-distros security mailing list\"\n") "<551E2093.5000902@gmail.com>" ("<550C19ED.9030901@enea.com>" "<20150402234357.GB9941@hunt>" "<551E2093.5000902@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31834 invoked by uid 550); 3 Apr 2015 16:15:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31816 invoked from network); 3 Apr 2015 16:15:54 -0000
Thread-Topic: [oss-security] membership request  to the closed linux-distros
 security mailing list
Thread-Index: AdBjDd9rd2bbnUCBQhiZ4+FiR1jJMwKvpnPQABQkhCA=
Message-ID: <3230301C09DEF9499B442BBE162C5E48258B5FA8@SESTOEX04.enea.se>
References: <550C19ED.9030901@enea.com> <20150402234357.GB9941@hunt>
 <551E2093.5000902@gmail.com>
In-Reply-To: <551E2093.5000902@gmail.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [172.21.1.188]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Fri, 3 Apr 2015 16:15:41 +0000
From: Sona Sarmadi <sona.sarmadi@enea.com>
Reply-To: oss-security@lists.openwall.com
Subject: RE: [oss-security] membership request  to the closed linux-distros
 security mailing list
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>


> On 02/04/15 07:43 PM, Seth Arnold wrote:
> > On Fri, Mar 20, 2015 at 02:00:29PM +0100, Sona Sarmadi wrote:
> >> On behalf of Enea  Software AB, I would like to request membership to
> >> the closed linux-distros security mailing list.
> >
> > Speaking strictly for myself, I'm still somewhat skeptical; the
> > security announce archives
> > http://mail.lists.enea.com/pipermail/security-announce/
> > do show some security updates, but (guessing) 15% of the actual patch
> > links I tried to follow no longer exist.
 All advisories should have a correspondent patch, Can you please let me=20
know what patches are missing?=20
> >
> > Furthermore, the advisories all suggest downloading patches via http
> > and offer no mechanism to validate the patches before applying them.
> > Consider this recent advisory:
> > http://mail.lists.enea.com/pipermail/security-announce/20150326/000064
> > .html
Yes, we failed here, this was sent by one of our engineers (and not the sec=
urity team) while I was attending ELC and Open Embedded.

 > - there's no gpg signature on this advisory
> > - there's no cryptographic checksums in the advisory to authenticate
> >   the patch even if the advisory were signed
> > - there's no ascii-armored signatures in the patches
> > - there's no detached signatures at
> >   http://linux.enea.com/5.0-beta-m400/patches/
> >   or at
> >   http://linux.enea.com/4.0/patches/
> >

I agree, we have plan to provide patches in a more secure way. Our intensio=
n is to do=20
more for security. Security for embedded customers has not been a high prio=
 in the=20
past since most of these devices are isolated, not connected to the outside=
 world. This
is however changing and thus security is becoming important.
To become a member in the Linux-distros list is not the only security conce=
rn for us,=20
this is one of the items on our list.  This is a sign that we care about se=
curity, and we=20
want to be part of this community, to contribute back to this community as =
much as we
can and also get help and inspiration to improve.=20=20

> > If downloading patches and applying them by hand is really the
> > distribution model Enea has chosen, then it feels like the provenance
> > of updates is seriously lacking.

Patches to our customers are handled differently, basically the way each of=
 our customers require. The publically available patches are primarily for =
non-customer Enea Linux users, but still we should provide security updates=
 in a secure way.
Please note that Enea Linux is used in the embedded systems, so our custome=
rs don't want every day (binary/source code) patches. Some embedded devices=
 are not easy to update. Instead we often deliver e.g. monthly updates or w=
hen the customer desires the update.


> > In my opinion, until some more of the security basics are covered,
> > joining linux-distros@ is premature.
>=20
> I guess Ubuntu has to be dropped from the linux-distros then, because
> www.ubuntu.com appears to be http-only and the ISO download is entirely
> insecure. The security notices are also served insecurely there:
>=20
> http://www.ubuntu.com/usn/
>=20
> Am I missing something... ? It doesn't make much sense to criticize this =
when
> you folks are doing the same. I do get the impression that Enea Linux is
> handling security poorly (where are all of the other issues?) but this
> bothered me.
=20

Kind regards,
//Sona
