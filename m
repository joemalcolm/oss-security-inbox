Received: (qmail 19668 invoked by uid 550); 23 Jun 2023 10:14:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19647 invoked from network); 23 Jun 2023 10:14:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1687515253; bh=Uwda4F8h5FusssQ8F59FTovKAolIDZ/o5byDeR9faT0=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=Er3wQAzyOg1GoNPmDSx3FxTp2u4OQDFmeckDAlg2rsqMv/m/meOjXNork3Ar+lqrL
	 +At6+5g5tIJvY1D7P4UeXCfjs2eToSHbJ+DEpWuDiIpM8BHMJDXssQgcjC3M26sLZ9
	 37cmbrMISUwMFCESmWWUPVF0Krc+mBVAjJHfIfz0/63EbJGgazKanAuvIrPtUcXREB
	 AmI7wfZjxmK2Q7Je6YffXN24bhPrGYKnKmOQzu9kJjLuh+QwQyTDyIBcVub2w93UKx
	 glkxY1ti5vdI3IEMkxdSxduRVRfrfbu3dqYAscvkXup25zbsBrrleZip4HhNiiA7xw
	 nH7p2ln6+6f/A==
Original-Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Fri, 23 Jun 2023 12:14:12 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230623121412.25fbf45a.hanno@hboeck.de>
In-Reply-To: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Tue, 20 Jun 2023 15:47:28 -0700
Alan Coopersmith <alan.coopersmith@oracle.com> wrote:

> https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out
> scanners since it claims this bug has a CVSS of 9.8.

The problem really is that these scanners are assuming something that
is not true. They assume that data from vulnerability databases is
reliable.

These debates are coming on a regular basis, usually either "should
this thing get a CVE?" and "is this a reasonable CVSS value /
criticality rating?"

It's actually quite simple: There are dozends (maybe hundreds?) of CVEs
issued every day. If you want them to be properly vetted, you'd need to
have a massive team of security professionals doing that vetting. No
such team exists, so the only plausible assumption is that CVE and CVSS
data is by default unreliable.

If your scanner sounds an alarm because someone added a high CVSS
rating to a CVE entry, you should assume that the people creating that
scanner don't know what they are doing.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
