X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2649" "Tuesday" "12" "January" "2021" "11:02:51" "-0500" "David A. Wheeler" "dwheeler@dwheeler.com" "<192EDE83-5DF6-40A9-8928-1CD1739177A0@dwheeler.com>" "52" "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil "1" "2021011216:02:51" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" (number mark "U       dwheeler@dwh Jan 12   52/2649  " thread-indent "\"Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic\"\n") "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>" ("<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>" "<X/1YIT59FZ7clijT@kroah.com>" "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1755 invoked by uid 550); 12 Jan 2021 16:03:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1734 invoked from network); 12 Jan 2021 16:03:14 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Tue, 12 Jan 2021 11:02:51 -0500
References: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
 <X/1YIT59FZ7clijT@kroah.com>
 <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
To: oss-security@lists.openwall.com
In-Reply-To: <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
Message-Id: <192EDE83-5DF6-40A9-8928-1CD1739177A0@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule
 could result in kernel panic


>> On 12 Jan 2021, at 08:04, Greg KH <greg@kroah.com> wrote:
>>=20
>> I still do not understand why you report issues that are fixed over a
>> year ago (October 2019) and assign them a CVE like this.  Who does this
>> help out? ...
>=20
> On Jan 12, 2021, at 10:23 AM, John Haxby <john.haxby@oracle.com> wrote:
>=20
> I think I can answer that.   There's nothing technical going on here, it'=
s down to the behaviour of the end users of enterprise systems.
>=20
> A lot of those people have a hard time understanding that they do actuall=
y want bug fixes and an even harder time understanding that they need to ac=
tually do something to install those fixes.   (I was once asked if I could =
fix a problem without changing anything, anything at all when the fix was a=
 one-off chmod.)   A CVE number gets attention: think of it as getting hold=
 of the customer by the lapels and going nose-to-nose to explain in words o=
f one syllable they if they don't update their systems that they will crash=
 and they will get hacked.
>=20
> Ooh, no, they say, we can't possibly take the risk of updating our system=
s.  Suppose something goes wrong?   Sheesh.   Suppose, instead, someone com=
es along and sees a known, fixed bug is unfixed and uses that to trash your=
 systems.    Or that you've got a bug that crashes the machine once a week =
for which there's a fix.   But, no, apparently the mythical risk of a teste=
d update vs the actual quantifiable risk of leaving the bug unfixed is so g=
reat that they'd rather take the real, quantifiable risk.   I suppose that'=
s understandable, after a fashion, even though actual regressions are quite=
 rare.

I suspect in many cases there=E2=80=99s a simple answer: who takes the *bla=
me* when something goes wrong?

If someone updates a component when =E2=80=9Cthey don=E2=80=99t have to=E2=
=80=9D, and it causes a problem, that person takes the fall: gets demoted, =
fired, whatever. If a component is not updated, and the system is attacked,=
 the *attacker** is blamed & the admins don=E2=80=99t get demoted, fired, w=
hatever. So updates are rare & involve >1 year testing to ensure that the b=
lame is fully distributed away from any one person.

Some organizations make an explicit exception: if there=E2=80=99s a CVE, th=
en you *are* =E2=80=9Crequired=E2=80=9D to update the component by policy. =
Then those who updated the component are no longer at serious career risk, =
because when someone tries to blame the person who did the update, they can=
 say =E2=80=9CI was required to update by policy=E2=80=9D.

In short, I think it=E2=80=99s all about incentives.

--- David A. Wheeler


