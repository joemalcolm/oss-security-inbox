Received: (qmail 25694 invoked by uid 550); 3 Nov 2025 18:39:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22054 invoked from network); 3 Nov 2025 18:07:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1762193264; x=1762452464;
	bh=kVUZtwKvPhm5jxXt2D7F6+7ICBVLhU5JAjzK2dfWvz4=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=PuW1LqXNU5NrxR8YASrOnEC7Yml7MD2qq+pDqJXwvAJfjfCaEDlzqoS54WUlbpdZ6
	 rYxeQQvvzjMMhYMz12zF0sSn2DNJQ+yx3+1GMpB8ArNjqOD9iGEbh+wUSKf0pl5Idn
	 r8JNHr25LwKFR6DrND5gZ2acstkTX0oZqxHd0HwrTt0W1TpMWQS8dJvF1sQFPwEH4Y
	 MHo/BmbQx1Pi2+mMubfQUKbwzSsmK3IP9p4knA9J/O2QFBmQRszvEHLZvEb+zel7IN
	 2GLnptSJwx/4ODPLSVjhoxhSeXbtQtS7pccwjYYtxUhnXZt/kNbOyAQTS8qYDeMFyJ
	 Ifl+mwzaMEP4g==
Date: Mon, 03 Nov 2025 18:07:38 +0000
To: oss-security@lists.openwall.com
From: Art Manion <zmanion@protonmail.com>
Message-ID: <aafcc993-868d-4bd7-90da-de0505c24bd8@protonmail.com>
In-Reply-To: <007B59A3-903D-48C6-8295-764499DA5190@edvina.net>
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com> <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com> <20251101030054.GA3031@openwall.com> <007B59A3-903D-48C6-8295-764499DA5190@edvina.net>
Feedback-ID: 39015149:user:proton
X-Pm-Message-ID: 97ff1ae5898b01b718b0c09f8cdad65c4bc71b04
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 2025-11-02 03:30, Olle E. Johansson wrote:
>=20
>=20
>> On 1 Nov 2025, at 04:00, Solar Designer <solar@openwall.com> wrote:
>>
>> CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-12200)
>> and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
>> CVE-2025-12207) mentioned in this thread are not yet disputed and have
>> no comments of this sort in their descriptions.

I asked VulDB to mark the dnsmasq CVE IDs as disputed.

> As part of the Kamailio project I can say that we did just become aware
> of these CVEs in your email. They do not make sense. Trying to get to
> the report, the config files used to provoke the issue can=E2=80=99t be d=
ownloaded.
>=20
> If you have access to edit the config files, there are much more simple
> ways to cause damage than to provoke a problem in the config file parser.
>=20
> We will have an internal discussion but that will likely lead to the
> project disputing these CVEs.

Hello Olle!  I was going to do o the same for the Kamailio CVE IDs but
defer to the project's decision.  If you do decide to dispute, the first
request should go to VulDB:

  https://www.cve.org/PartnerInformation/ListofPartners/partner/VulDB

(I accidentally asked the MITRE CNA-LR first.)

Regards,

 - Art


