Received: (qmail 21684 invoked by uid 550); 6 Nov 2025 17:48:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32164 invoked from network); 6 Nov 2025 08:24:44 -0000
From: "Olle E. Johansson" <oej@edvina.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E59C7AB6-0E02-443B-9CB6-1F71D82322DB"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Date: Thu, 6 Nov 2025 09:24:24 +0100
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com>
 <007B59A3-903D-48C6-8295-764499DA5190@edvina.net>
 <aafcc993-868d-4bd7-90da-de0505c24bd8@protonmail.com>
 <86CF08FC-173D-42AE-B0FD-451FBCA0A724@edvina.net>
 <b72f8f12-623a-4fc5-a7b6-001fa85d965c@protonmail.com>
 <BA9450C7-C888-41E6-9C49-8BE94CB659E9@edvina.net>
 <CAEFhzs_s6U2xMwp3jmGK9_pOg6toiSH_4bBcp3GS7t59CUUamg@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CAEFhzs_s6U2xMwp3jmGK9_pOg6toiSH_4bBcp3GS7t59CUUamg@mail.gmail.com>
Message-Id: <BDCB7338-F999-48E1-9D1A-80124BA132A4@edvina.net>
X-Mailer: Apple Mail (2.3826.700.81)
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

--Apple-Mail=_E59C7AB6-0E02-443B-9CB6-1F71D82322DB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 5 Nov 2025, at 19:02, Pedro Sampaio <psampaio@redhat.com> wrote:
>=20
> On Wed, Nov 5, 2025 at 12:13=E2=80=AFPM Olle E. Johansson <oej@edvina.net=
 <mailto:oej@edvina.net>> wrote:
>>=20
>>=20
>> > On 4 Nov 2025, at 18:59, Art Manion <zmanion@protonmail.com <mailto:zm=
anion@protonmail.com>> wrote:
>> >=20
>> > On 2025-11-04 04:03, Olle E. Johansson wrote:
>> >=20
>> >>> On 3 Nov 2025, at 19:07, Art Manion <zmanion@protonmail.com <mailto:=
zmanion@protonmail.com>> wrote:
>> >=20
>> >>>>> CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-122=
00)
>> >>>>> and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
>> >>>>> CVE-2025-12207) mentioned in this thread are not yet disputed and =
have
>> >>>>> no comments of this sort in their descriptions.
>> >>>=20
>> >>> I asked VulDB to mark the dnsmasq CVE IDs as disputed.
>> >=20
>> > The VulDB CNA decided to reject the dnsmasq CVE IDs.
>> >=20
>> >>>> As part of the Kamailio project I can say that we did just become a=
ware
>> >>>> of these CVEs in your email. They do not make sense. Trying to get =
to
>> >>>> the report, the config files used to provoke the issue can=E2=80=99=
t be downloaded.
>> >=20
>> >> We=E2=80=99ve gone back and this was our core developer=E2=80=99s rea=
ction to the mail we got earlier to our security address:
>> >>=20
>> >> "This is clearly spam, imo: vague/generic reporting, no explicit nami=
ng
>> >> of Kamailio ... the email was not sent from the vuldb.com <http://vul=
db.com/> server
>> >> but from mc20a2201.dnh.net <http://mc20a2201.dnh.net/> ([185.46.57.11=
4]) -- I would suggest to not
>> >> clink on the links, they might lead to malware, etc...
>> >=20
>> > I understand both sides of this problem.  Would it have helped if the =
VulDB
>> > notification included details such as these (from CVE-2025-12207)?
>> >=20
>> >  https://shimo.im/docs/vVqRMVMlrycMO63y/read
>> >=20
>> For us that site is not trustworthy. It could be language/cultural issue=
s. One example is that the actual configuration files for some reason can=
=E2=80=99t be downloaded and the error message is
>> in a language I have no understanding of.
>>=20
>> Trust is hard. We have to think about this. We get all kinds of strange =
emails to our
>> security reporting email address so we=E2=80=99re very cautious unfortun=
ately.=20
>>=20
>> How can we create some kind of trust system so that any open source deve=
loper - from one person projects to large projects with massive funding - k=
now that a report is worth reacting to?
>>=20
>> /O
>> > - Art
>> >=20
>> >=20
>>=20
>=20
>=20
> It seems to be that there is a hidden stage during the PSIRT function tha=
t may require its own identification inside the CVE Program (which I assume=
 is the highest source of truth for us at this moment?). And that stage is =
when a security issue is deemed not enough to become a full CVE, but it is =
still relevant for awareness purposes. Assigning a CVE ID only to have it d=
isputed or rejected later seems like a process that is confusing and hard t=
o manage.=20
With bug bounties and other incentives to =E2=80=9Cfile a CVE for your CV=
=E2=80=9D normal bugs are reported as vulnerabilities, which cause a lot of=
 work in all parts of the vulnerability management process. The amount of p=
eople spending time assessing these before finding out that they can be ign=
ored will cost society a lot of money, resources and frustration.

In our case (Kamailio) getting a message directly from the CNA would have h=
elped starting a dialogue, if we could somehow validate the CNAs messages.


>=20
> Disputes have no nuance and once the word is out, the possible damages ar=
e hard to revert. Oftentimes they stay perpetually open, and resolutions se=
em to not give any definitive answer, which adds to the confusion. Most CVE=
 record consumers do not have a way to clearly differentiate and correctly =
prioritize them.
Right. I haven=E2=80=99t looked into how various vulnerability management p=
latforms handle this. Worth investigating.
>=20
> What if a new ID could be created for these cases, like a lower level CVE=
, which can help raise awareness, maintain discussion history, and issues c=
ould be elevated or degraded to it without them getting stuck at the never =
ending vendor CVE grinder, but still benefiting from the current CVE infras=
tructure?

My personal vision is that we need a set of related objects for each CVE, m=
uch like the ADPs. CVEs will in many cases continue to have different opini=
ons - with some vendors disputing them just to protect their brand and othe=
rs wanting to add a different severity.=20

Anyway, I think this is an indication of a CNA that did not fully look into=
 the issue.

/O=

--Apple-Mail=_E59C7AB6-0E02-443B-9CB6-1F71D82322DB--
