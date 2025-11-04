Received: (qmail 3562 invoked by uid 550); 4 Nov 2025 16:02:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11977 invoked from network); 4 Nov 2025 11:04:16 -0000
From: "Olle E. Johansson" <oej@edvina.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Date: Tue, 4 Nov 2025 12:03:55 +0100
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com>
 <007B59A3-903D-48C6-8295-764499DA5190@edvina.net>
 <aafcc993-868d-4bd7-90da-de0505c24bd8@protonmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <aafcc993-868d-4bd7-90da-de0505c24bd8@protonmail.com>
Message-Id: <86CF08FC-173D-42AE-B0FD-451FBCA0A724@edvina.net>
X-Mailer: Apple Mail (2.3826.700.81)
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq



> On 3 Nov 2025, at 19:07, Art Manion <zmanion@protonmail.com> wrote:
>=20
> On 2025-11-02 03:30, Olle E. Johansson wrote:
>>=20
>>=20
>>> On 1 Nov 2025, at 04:00, Solar Designer <solar@openwall.com> wrote:
>>>=20
>>> CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-12200)
>>> and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
>>> CVE-2025-12207) mentioned in this thread are not yet disputed and have
>>> no comments of this sort in their descriptions.
>=20
> I asked VulDB to mark the dnsmasq CVE IDs as disputed.
Ok
>=20
>> As part of the Kamailio project I can say that we did just become aware
>> of these CVEs in your email. They do not make sense. Trying to get to
>> the report, the config files used to provoke the issue can=E2=80=99t be =
downloaded.
>>=20
>> If you have access to edit the config files, there are much more simple
>> ways to cause damage than to provoke a problem in the config file parser.
>>=20
>> We will have an internal discussion but that will likely lead to the
>> project disputing these CVEs.
>=20
> Hello Olle!  I was going to do o the same for the Kamailio CVE IDs but
> defer to the project's decision.  If you do decide to dispute, the first
> request should go to VulDB:
>=20
>  https://www.cve.org/PartnerInformation/ListofPartners/partner/VulDB
Ok.

We=E2=80=99ve gone back and this was our core developer=E2=80=99s reaction =
to the mail we got earlier to our security address:

"This is clearly spam, imo: vague/generic reporting, no explicit naming
of Kamailio ... the email was not sent from the vuldb.com server
but from mc20a2201.dnh.net ([185.46.57.114]) -- I would suggest to not
clink on the links, they might lead to malware, etc...

Remember that this mailing list is open for anyone to send to it, in
order to allow anyone to report security issues, but that means spammers
can send messages to it are well. There is a spammassassin instance on
kamailio.org, but some messages can go though, therefore always be
careful with the messages on this list, especially if the author is not
known.
=E2=80=9C
So we ignored it. We may want to look into how someone like vulndb reaches
out to projects. And vulndb should propably raise the bar a bit for what th=
ey accept
as CVEs.

/O
>=20
> (I accidentally asked the MITRE CNA-LR first.)
>=20
> Regards,
>=20
> - Art
>=20
>=20

