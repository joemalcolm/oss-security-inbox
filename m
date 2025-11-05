Received: (qmail 16288 invoked by uid 550); 5 Nov 2025 15:02:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18247 invoked from network); 5 Nov 2025 10:16:36 -0000
From: "Olle E. Johansson" <oej@edvina.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Date: Wed, 5 Nov 2025 11:16:14 +0100
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com>
 <007B59A3-903D-48C6-8295-764499DA5190@edvina.net>
 <aafcc993-868d-4bd7-90da-de0505c24bd8@protonmail.com>
 <86CF08FC-173D-42AE-B0FD-451FBCA0A724@edvina.net>
 <b72f8f12-623a-4fc5-a7b6-001fa85d965c@protonmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <b72f8f12-623a-4fc5-a7b6-001fa85d965c@protonmail.com>
Message-Id: <BA9450C7-C888-41E6-9C49-8BE94CB659E9@edvina.net>
X-Mailer: Apple Mail (2.3826.700.81)
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq



> On 4 Nov 2025, at 18:59, Art Manion <zmanion@protonmail.com> wrote:
>=20
> On 2025-11-04 04:03, Olle E. Johansson wrote:
>=20
>>> On 3 Nov 2025, at 19:07, Art Manion <zmanion@protonmail.com> wrote:
>=20
>>>>> CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-12200)
>>>>> and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
>>>>> CVE-2025-12207) mentioned in this thread are not yet disputed and have
>>>>> no comments of this sort in their descriptions.
>>>=20
>>> I asked VulDB to mark the dnsmasq CVE IDs as disputed.
>=20
> The VulDB CNA decided to reject the dnsmasq CVE IDs.
>=20
>>>> As part of the Kamailio project I can say that we did just become aware
>>>> of these CVEs in your email. They do not make sense. Trying to get to
>>>> the report, the config files used to provoke the issue can=E2=80=99t b=
e downloaded.
>=20
>> We=E2=80=99ve gone back and this was our core developer=E2=80=99s reacti=
on to the mail we got earlier to our security address:
>>=20
>> "This is clearly spam, imo: vague/generic reporting, no explicit naming
>> of Kamailio ... the email was not sent from the vuldb.com server
>> but from mc20a2201.dnh.net ([185.46.57.114]) -- I would suggest to not
>> clink on the links, they might lead to malware, etc...
>=20
> I understand both sides of this problem.  Would it have helped if the Vul=
DB
> notification included details such as these (from CVE-2025-12207)?
>=20
>  https://shimo.im/docs/vVqRMVMlrycMO63y/read
>=20
For us that site is not trustworthy. It could be language/cultural issues. =
One example is that the actual configuration files for some reason can=E2=
=80=99t be downloaded and the error message is
in a language I have no understanding of.

Trust is hard. We have to think about this. We get all kinds of strange ema=
ils to our
security reporting email address so we=E2=80=99re very cautious unfortunate=
ly.=20

How can we create some kind of trust system so that any open source develop=
er - from one person projects to large projects with massive funding - know=
 that a report is worth reacting to?

/O
> - Art
>=20
>=20

