Received: (qmail 5707 invoked by uid 550); 1 May 2022 06:24:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15464 invoked from network); 30 Apr 2022 19:09:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=greenbone.net; s=20170621; h=Content-Transfer-Encoding:Subject:Message-ID:
	MIME-Version:To:Date:Content-Type:In-Reply-To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ko0v2RKCK/novk7B0KarpVkbw0QrJdcSW7iQMzvOmwg=; b=UCXBrx1pwuCKZjCK+biyM5Wz8a
	5HKYz9v3hO2Sj+ywEi9HIzRT/9ubSSzRgHSg+zFH0xDlrkPSdM7wD4wwhvuGfgQDvPu3CBOeCsH7q
	OUAbPd/Z0ZKcXL7dfEYzsAieHRx0rIgbjAQ8E9Zkm34Ut9gObtq6jZQJohX83QVCcUQo=;
Delivery-date: Sat, 30 Apr 2022 21:07:45 +0200
From: "Christian Fischer" <christian.fischer@greenbone.net>
In-Reply-To: <Ym1X82gykRQqVzd7@gentoo.org>
Content-Type: text/plain; charset="utf-8"
X-Forward: 127.0.0.1
Date: Sat, 30 Apr 2022 21:09:16 +0200
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Message-ID: <24e8-626d8980-3-6d44cb00@230483808>
User-Agent: SOGoMail 4.3.2
Content-Transfer-Encoding: quoted-printable
X-Scan-Signature: e60bc604d437a99a7e6b4383de3e4568
Subject: =?utf-8?q?Re=3A?==?utf-8?q?_=5Boss-security=5D?= CVE-2022-21449 and version 
 reporting

On Saturday, April 30, 2022 17:38 CEST, John Helmert III <ajak@gentoo.org> =
wrote:

> On Sat, Apr 30, 2022 at 01:24:36PM +0200, Christian Fischer wrote:
> >  > It=E2=80=99s not that they didn=E2=80=99t/can=E2=80=99t verify, it=
=E2=80=99s already verified,
> > they=E2=80=99re claiming those versions no longer being officially supp=
orted
> > means they can seemingly omit them from CVE reporting.
> >  >
> >  > Which is dangerous, misleading, and nonsensical.
> >
> > While i fully agree with this be aware that CVE entries could generally
> > contain incomplete information:
> >
> > After requesting an update of a CVE entry via the MITRE CVE forum in the
> > past to add additional affected products for a different vendor (which
> > wasn't even the assigning CNA like it is the case for Oracle here) my
> > request was rejected by MITRE with the following rationale given:
>
> The CNA that assigned that CVE is Oracle, so Oracle is the CNA to talk
> to to make changes to it. MITRE won't make changes to it as they're
> not the CNA behind that CVE.
>
> >  > A CVE description does not necessarily contain all the affected=20
> > products or versions and is not part of CVE ID requirements. The
> > products are documented in the CVE references.
> > This is also matching my experiences with various other products /=20
> > vendors and related CVE entries for these.
>
> Right, this is documented in the CNA rules [1]:
>
> "8.2.1 MUST provide enough information for a reader to have a
> reasonable understanding of what products are affected. If the
> affected products are not explicitly listed in the description, then
> the CNA MUST provide a reference that points to the known affected
> products."
>
> [1] https://www.cve.org/ResourcesSupport/AllResources/CNARules#section_8-=
2_cve_record_prose_description_requirements

Yes, indeed / in know (since then) but it wasn't clear if all participants =
in this thread are aware of this fact.

But i just have noticed that my posting was only partly relevant for the qu=
oted message and the question of the OP "Why is this being allowed=E2=80=A6=
" because i have missed that Oracle (if they as the assigning CNA are aware=
 that Java 15 and 16 are affected) AFAICT indeed haven't provided any refer=
ence so far about all known affected versions / products.

