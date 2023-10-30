Received: (qmail 9903 invoked by uid 550); 30 Oct 2023 17:44:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5625 invoked from network); 30 Oct 2023 17:41:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202305; h=OpenPGP:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:OpenPGP:
	Organization:Auto-Submitted; bh=rfnTza+a2JFX4TIXQjXGrUVTY8TU7yWvKg5O55DlpnI=;
	t=1698687669; x=1699897269; b=P2fAThnx18XgP8EwHAgzSrBVO6zkWZx/XNU7cIWeYMSd14V
	FX9t8fMNPFjv6R797WyHxux7Oiama0qTU5DPbdUsnyroGdWGMUhQSTflEg34Ks/n//1IxcnHctAz0
	bU7RlXG1nckcWMItXV5ejBHus1G2FipZeYhIUgXmLhgC+cZZ7D1ezBWZRefTS3Bk3j3Z8a127IYzw
	fmmAZYMV2dirDYTx1AZA+h578tVjkxL7Cm/ixKb1/Uvb95JSguWfzqshfWfc4pUVo59RZ0rKJaWLd
	XMh/WIdH83fYuOAkmhFLqw9QQCvSAOS3Wo41QbweruGosskFL9dOlm+L7R8v+FOw==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202305e2; h=OpenPGP:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:OpenPGP:
	Organization:Auto-Submitted; bh=rfnTza+a2JFX4TIXQjXGrUVTY8TU7yWvKg5O55DlpnI=;
	t=1698687669; x=1699897269; b=NrZTmZFvblGt9rmhCV9shAxK23JDo/j5Bi/xJBiexyOZyNu
	//3NdKRi5HdWRNoP5zTpe6Grt0XUiqTCDk9FZBQ==;
Date: Mon, 30 Oct 2023 13:40:46 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <ZT/qnsR7RiQSv99z@hill.local>
References: <ZSit-X8iB2gx54hq@fullerene.field.pennock-tech.net>
 <ZT0t-5HDT_cAcgC2@eldamar.lan>
 <ZT632cGIWqgIJCoj@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZT632cGIWqgIJCoj@fullerene.field.pennock-tech.net>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/keys-2013rsa-2020cv25519.asc
Subject: Re: [oss-security] NATS: 2023-01: Adding accounts for just the
 system account adds auth bypass

On 2023-10-29 at 15:51 -0400, Phil Pennock wrote:
> On 2023-10-28 at 17:51 +0200, Salvatore Bonaccorso wrote:
> > On Thu, Oct 12, 2023 at 10:39:53PM -0400, Phil Pennock wrote:
> > > [ CVE has been requested, still waiting for assignment, so we're just
> > >   inventing our own in-house numbering for advisories; we'll make sure
> > >   this one continues to work after the CVE is issued ]
> > > 
> > > NATS-advisory-ID: 2023-01
> > > CVE: pending
> > > Date: 2023-10-12
> > > Fixed in: 2.9.23, 2.10.2
> > 
> > While I see the later NATS-advisory-ID 2023-02 has a CVE assigned, for
> > the 2023-01 was above with CVE pending. has one been assigned in
> > meanwhile?
> 
> No.

Now: yes.  CVE-2023-47090 has been assigned today.

My thanks to whomever gave the nudge.

(Website will be updated as soon as GitHub has an action runner
available to process the pages build).

-Phil
