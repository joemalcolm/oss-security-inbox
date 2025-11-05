Received: (qmail 15919 invoked by uid 550); 5 Nov 2025 15:02:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7794 invoked from network); 5 Nov 2025 09:22:58 -0000
From: "Olle E. Johansson" <oej@edvina.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Date: Wed, 5 Nov 2025 10:22:38 +0100
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <2025110538-probation-thickness-0517@gregkh>
To: oss-security@lists.openwall.com
In-Reply-To: <2025110538-probation-thickness-0517@gregkh>
Message-Id: <5F9CEC1C-62DC-4BF1-96DC-22F62F2935F9@edvina.net>
X-Mailer: Apple Mail (2.3826.700.81)
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project



> On 5 Nov 2025, at 00:23, Greg KH <greg@kroah.com> wrote:
>=20
> On Tue, Nov 04, 2025 at 08:47:35AM -0300, Rodrigo Freire wrote:
>> Open Source Project Maintainers,
>>=20
>> Managing security vulnerabilities is currently a significant pain,
>> especially with the recent increase in dubious CVE reports due to AI
>> assistants. The discussion around questionable CVEs reported against
>> projects like dnsmasq, curl highlights a growing concern within the
>> open source community.
>>=20
>> One effective way to combat the influx of bogus CVEs and ensure
>> accurate vulnerability reporting is for open source projects to become
>> their own CVE Numbering Authority (CNA). As a CNA, your project gains
>> control over the CVE assignment process.
>>=20
>> Taking ownership of your project's as a CNA ensures that you are in
>> control of the CVE assignment. There will be some requirements to it,
>> sure thing. Check
>> https://openssf.org/blog/2023/11/27/openssf-introduces-guide-to-becoming=
-a-cve-numbering-authority-as-an-open-source-project/
>=20
> I totally agree that all "major" open source projects should become a
> CNA, and strongly recommend taking back control over stuff like this.
>=20
> But, for "smaller" open source projects, it would be _great_ if a root
> CNA could become the default for all of open source so that we don't
> have the problem where any CNA can assign CVEs against any random
> software without any repercussions.

I would be happy if we could assign or =E2=80=9Cscope=E2=80=9D to a CNA tha=
t would help us,
but also protect our scope without having to become a CNA with all that
comes with being one. In that case, we have to be in control over our scope
if we want to move it to another CNA or at some point have the resources
needed to register as a CNA ourselves. I am not sure how scope =E2=80=9Cown=
ership=E2=80=9D
works in the CVE program today.

/O=
