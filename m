Received: (qmail 27748 invoked by uid 550); 4 Nov 2025 18:01:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28525 invoked from network); 4 Nov 2025 17:59:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1762279171; x=1762538371;
	bh=srE8OgkUXZSh2O3kAxpgUYBwz661FpFsCKNBkWdBNBw=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=wS2CAIlw79SE4HIgJRDxYyzxGz0m/SLhzRgBD0Q9LBSPR1JyGR0B0R+MFuOTXNgEB
	 b+pbrpQmH+3XUczRGn4jIIS9kYPy0korViVB4i6OCBTU+0YIhITO4kfW04cYqTzgR7
	 VIXk3iiU9Z0PkQ0JHfLSbQs0/KKIfOgAmeQF4OqvRlbCYU6nZLErcH/vgrmWDYXnuC
	 UOfNpQ/uAAA8xbIOGkpW1mOsUbUxyaOUKjpdmdzM+6dSKAeQUB013pN5MJXci7zagf
	 Khh9voYKzW/QHKHx5MoV/ttFBxY7MsBEYh+6+cw0DbSGx1oyLl6FK407vxuTlGD4XK
	 zfCmynhzOevvw==
Date: Tue, 04 Nov 2025 17:59:26 +0000
To: oss-security@lists.openwall.com
From: Art Manion <zmanion@protonmail.com>
Message-ID: <b72f8f12-623a-4fc5-a7b6-001fa85d965c@protonmail.com>
In-Reply-To: <86CF08FC-173D-42AE-B0FD-451FBCA0A724@edvina.net>
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com> <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com> <20251101030054.GA3031@openwall.com> <007B59A3-903D-48C6-8295-764499DA5190@edvina.net> <aafcc993-868d-4bd7-90da-de0505c24bd8@protonmail.com> <86CF08FC-173D-42AE-B0FD-451FBCA0A724@edvina.net>
Feedback-ID: 39015149:user:proton
X-Pm-Message-ID: 049c7a8251bbeb9187b8ef3b500d041518dde3be
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 2025-11-04 04:03, Olle E. Johansson wrote:

>> On 3 Nov 2025, at 19:07, Art Manion <zmanion@protonmail.com> wrote:

>>>> CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-12200)
>>>> and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
>>>> CVE-2025-12207) mentioned in this thread are not yet disputed and have
>>>> no comments of this sort in their descriptions.
>>
>> I asked VulDB to mark the dnsmasq CVE IDs as disputed.

The VulDB CNA decided to reject the dnsmasq CVE IDs.

>>> As part of the Kamailio project I can say that we did just become aware
>>> of these CVEs in your email. They do not make sense. Trying to get to
>>> the report, the config files used to provoke the issue can=E2=80=99t be=
 downloaded.

> We=E2=80=99ve gone back and this was our core developer=E2=80=99s reactio=
n to the mail we got earlier to our security address:
>=20
> "This is clearly spam, imo: vague/generic reporting, no explicit naming
> of Kamailio ... the email was not sent from the vuldb.com server
> but from mc20a2201.dnh.net ([185.46.57.114]) -- I would suggest to not
> clink on the links, they might lead to malware, etc...

I understand both sides of this problem.  Would it have helped if the VulDB
notification included details such as these (from CVE-2025-12207)?

  https://shimo.im/docs/vVqRMVMlrycMO63y/read

 - Art


