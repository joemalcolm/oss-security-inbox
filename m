Received: (qmail 32259 invoked by uid 550); 27 Jan 2025 21:00:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29857 invoked from network); 27 Jan 2025 20:59:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738011535;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AcY3BsEofun9Ei+4T1i7tHvwRezYSBSWKBq+OhM7jIE=;
	b=Y5OlItFpxXB1OrbaOUKPbvQV8bGa8kj1uhOhWoPyctYaTs9kCtMvdec2Zo3GNpXKhMl/Qx
	NIM68v7lbntfbwSfCab4xKLpIpxUh2fbzzXqi8fvPWSTXN229klzhefTGSe6Oc2jEfT7C3
	RTuqSlFmNM+2a4OqpWeJEII1OhoKY6Q=
X-MC-Unique: iLdsemZ4OeOFtAvJQ7bhGw-1
X-Mimecast-MFC-AGG-ID: iLdsemZ4OeOFtAvJQ7bhGw
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738011530; x=1738616330;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AcY3BsEofun9Ei+4T1i7tHvwRezYSBSWKBq+OhM7jIE=;
        b=DOsSF0+S8ZIklwUKVEd/XIc2JG/UfJJMrgmOQrabLt83xo22DNldSUCBXo9t5S0L99
         Ym/PiwMKcGRPFG9FOafE3jMZet75kwh8w0WjqUNijNfr+i1Jip20WlbLSV5Hy3eSNPFK
         vJBS/0WvtX5AwIztkbh1PZLdadvBj6Gf6o/Y/cgq9raGRN1297jnZnVp263rkX0CoJcq
         ntot7m0aUqAKh+W74ZmbTknTuH4TGvZkUYku0s9USynQPCzJnvoZ9F6tKaXIgLbZnPVN
         V4yuzqX60L2koVr16occw3zIB2yaVXGYru82p1jiF50l0r71xamOeg20cWnp0YfZjEfz
         YMaA==
X-Gm-Message-State: AOJu0Yx3iL6qGmp8PpI+9YsGwZ4tAtoTMBMGHR4Pd6Hfooc12+Ci0j0z
	ySyOUwo+8vMZQhR9oBFQ28o7aALfYDfpq5CQM9EZRMr9t0o6YwSZNItFZUroRbzIgSfJWvszQOT
	92c7fvk9k6ydlmmEmBmzjeD0rVk8OJXJ+RMu51odXIpgpgddGHH9S0SVQsYSUv+ZdeZdUX796vc
	j+BHz/jen5Bei3S7mCTYSPL52CPUAw9Pbo7JQLobvnKtn/fZYt
X-Gm-Gg: ASbGnctHdbpBgM1ujcKCC1QL4/myvFjsFL23GyigSfjlFx9ysbwrXbk6NMt/+ZuOCnE
	u++FkvjFfNFGNr1/xv2MECqLHiwpe90sGPaRqlqzyCJZIVivOhHTuBUuYUWbs4cc=
X-Received: by 2002:ac2:4c24:0:b0:542:213f:78fa with SMTP id 2adb3069b0e04-5439c21f24bmr11378272e87.7.1738011530190;
        Mon, 27 Jan 2025 12:58:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHcGO8Q+rBTlFcKAZrv3oMRxv9W9eVUITA635gvR6D6wHdCe0ahvxYNcJbJXbkT8qDbhMzPvx+MxdK08XAfP8M=
X-Received: by 2002:ac2:4c24:0:b0:542:213f:78fa with SMTP id
 2adb3069b0e04-5439c21f24bmr11378268e87.7.1738011529742; Mon, 27 Jan 2025
 12:58:49 -0800 (PST)
MIME-Version: 1.0
References: <Z5DF00lM-3Q36mhh@kasco.suse.de> <2025012206-remember-glare-da7d@gregkh>
 <Z5D-Io-ch6YXKAAn@imap.suse.de> <Z5Q9VKUg_v3MBrmh@aeon> <Z5dAKLJ-Lm6i5LyM@suse.com>
In-Reply-To: <Z5dAKLJ-Lm6i5LyM@suse.com>
From: Pete Allor <pallor@redhat.com>
Date: Mon, 27 Jan 2025 15:58:37 -0500
X-Gm-Features: AWEUYZmslIvk7v1zbGsv5TIO4qxfdFK7QSF0cR32XQASakX0h2nEt6NIVX5EmSs
Message-ID: <CAEFCzXXpUN0+JgdfpirSb4pinJJ+aukbc1=L+czv1iJGYHwZrQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: E6BGQNpzx1q8r2waaGDpai14GuZ50xXbyvJwKPYIpsM_1738011532
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000d89ed2062cb65774"
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

--000000000000d89ed2062cb65774
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Johannes,
If that community does not have a CNA with it in their scope, it is open
for assignment.    Sometimes it is easier to have a Root CNA assign for
that under the CVE Services.  Just note that as the CNA, everyone can /
should come back to you for the updates and the CNA vulnrichment will come
back to your CNA.
Pete
PS I am on the CVE Board.

On Mon, Jan 27, 2025 at 11:13=E2=80=AFAM Johannes Segitz <jsegitz@suse.de> =
wrote:

> On Sat, Jan 25, 2025 at 01:24:36AM +0000, Mark Esler wrote:
> > On Wed, Jan 22, 2025 at 03:18:10PM +0100, Johannes Segitz wrote:
> > > We're not empowered to do this. We are a CNA for code that we own (e.=
g.
> > > zypper), but not for arbitrary open source projects.
> >
> > The text of SUSE's scope [0] is similar to Canonical's [1]. We
> > understand "All Canonical issues (including Ubuntu Linux) only" as
> > including all software we distribute. It does not require us to be the
> > author of that code.
>
> Interesting. I'll reach out to MITRE to clarify this and will report back
> (might take a while, I'll be away for some weeks starting tomorrow). When=
 I
> was introduced to this > 10 years ago I was told not to allocate for
> anything for which we're not clearly upstream.
>
> Johannes
> --
> GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
> Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
> SUSE Software Solutions Germany GmbH, Frankenstra=C3=9Fe 146, 90461 N=C3=
=BCrnberg,
> Germany
> Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew McDonald, Werner Knoblich (H=
RB 36809,
> AG N=C3=BCrnberg)
>

--000000000000d89ed2062cb65774--

