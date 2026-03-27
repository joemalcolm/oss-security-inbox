Received: (qmail 29903 invoked by uid 550); 27 Mar 2026 16:23:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28221 invoked from network); 27 Mar 2026 15:46:26 -0000
References: <20260312212345.GA2728@localhost.localdomain> <20260312213345.GA3105@localhost.localdomain> <20260326183559.GA22540@localhost.localdomain> <2026032744-resale-jeep-2d72@gregkh> <20260327145022.GA30102@localhost.localdomain> <CAEB6B1E-9A4A-487D-AD0B-F61651BC23F4.1@smtp-inbound1.duck.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 John Johansen <john.johansen@canonical.com>,
 "cve@kernel.org" <cve@kernel.org>
Message-ID: <96DB51DA-22DB-4BDE-AB09-A29E3352AF87.1@smtp-inbound1.duck.com>
Date: Fri, 27 Mar 2026 11:46:16 -0400
From: kf503bla@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: Cc: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: References: Subject; q=dns/txt; s=postal-KpyQVw;
 t=1774626377; bh=jM+Lr8QjyLlJlauC+uSBhd940As+ExsixJi1G/X31dY=;
 b=EOAEImSPtiUW/TV2YhBd8cCGG5TfX5dAgjJ25avrovGvRpu46gfBanTGGCGQTcFqCu1B5XMxv
 ASqqLHAP1TuSSMkPClqN7gic9nfx/vHuTGiy/AdwEqSj8j0UvNI61KL/Lv+e+OJqhkF74VoVu4d
 kTZVKUApY5sU4oOTf3/SOic=
Subject: Re: [oss-security] Re: Multiple vulnerabilities in AppArmor

it wont work on read-only container


On Friday, March 27th, 2026 at 8:47 PM, Qualys Security Advisory <qsa_at_qu=
alys.com_kf503bla@duck.com> wrote:

> DuckDuckGo was unable to verify sender identity
>=20
> Hi Greg, John, all,
>=20
> On Fri, Mar 27, 2026 at 07:23:24AM +0100, Greg KH wrote:
> > On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrot=
e:
> > > Since two weeks have passed now (since the fixes were released), would
> > > it be possible to please assign CVEs to the remaining seven AppArmor
> > > vulnerabilities:
> > We were told that these all required elevated privileges to hit, and so
> > were not classified as individual vulnerabilities.  If the Apparmor
> > maintainer tells us that these really all should be assigned a CVE, we
> > will be glad to do so, but until then, we're just going to stick with
> > the ones that we have assigned already.
>=20
> Thank you very much for your reply! Adding John Johansen then
> (AppArmor's maintainer), since he will have the authoritative answer.
>=20
> The problem is that containers can be allowed to manage their own
> AppArmor profiles (via AppArmor namespaces), in which case an attacker
> inside such a container can directly write to AppArmor's .load, .replace
> and .remove files and trigger all these vulnerabilities, even without
> CVE-2026-23268 (the confused-deputy vulnerability).
>=20
> The way we see it:
>=20
> - either CVEs should be assigned to the remaining seven vulnerabilities,
>   in light of the container use case described above;
>=20
> - or CVE-2026-23269 ("validate DFA start states are in bounds") should
>   be rejected, because this vulnerability is no different from the other
>   seven vulnerabilities.
>=20
> Thank you very much in advance! We are at your disposal for questions,
> comments, and further discussions. With best regards,
>=20
> --
> the Qualys Security Advisory team
>

