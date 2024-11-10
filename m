Received: (qmail 30404 invoked by uid 550); 10 Nov 2024 19:39:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32548 invoked from network); 10 Nov 2024 16:46:22 -0000
X-KPN-MessageId: 4aba6aa0-9f83-11ef-9dde-00505699b430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=sbrRiNYN5IRmE54q1P9Q+was8BKUhGzXidm9eacSuiw=;
	b=dPWrNKfezKdQgQk1jKeGWiZg55iWdvvMcRY3gXbrAEkkBROSpH4bQLHvFbvovS+1bfPWW/SpyJRIT
	 mERWeiTEps9s9EOMhqa7advw1WS31a7Yt3E5c+GhguAVD0Baj9wBJMzIAgM2cNqQwOr6jSsK7UR31i
	 uMOvYgrwLFSYFVJr7Z3em2K4Dy2yRLNxYs0fl3Iv6toSf5B0gdShL7n9ibO4LiApgDD/R9iAUiPviH
	 RsvLFRDpK2BIB+J8jrPs+RzUqJnoet8udyGMSs5NI6zBTcTCTqvcBOerZd9vxYwxzdgFXlQZoH1D2s
	 n32WbygNotukujQmfDRxoWBhJCXKnyQ==
X-KPN-MID: 33|Tx7wzVZKxLeLP91RSre9fz1aiYLhchHJwAleiptukujORrcTsNex/u1Piusvhmr
 armwrcY+lFWRDhk1AIwtyFf5qpxZKQxi/gvxcbRn+mBk=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|938hONayXbGAVfuFPBHziNdDwWa7KDuDnHgAlQMLW2npj655W4rIQ04aNdKX7XN
 0GyVF/JJ2nJYOMme3l2bQ7w==
X-Originating-IP: 82.169.217.143
Date: Sun, 10 Nov 2024 17:46:13 +0100
From: Jeroen Roovers <jer@xs4all.nl>
To: Eli Schwartz <eschwartz@gentoo.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20241110174613.5d6f5282@del.fritz.box>
In-Reply-To: <21a818cc-d665-43a7-8ff0-c23769f6da04@gentoo.org>
References: <20241106041215.GA4432@openwall.com>
	<CAGUWgD_T4vUhBfkmjm+8ELcuiOD9dx1vSC4HnKG88Py7ip+zPw@mail.gmail.com>
	<CABEVAa0+EE0M3Q2wwpOSX0-VCw95xSjZV-1S4u7hSYY9K=YK7w@mail.gmail.com>
	<21a818cc-d665-43a7-8ff0-c23769f6da04@gentoo.org>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] shell wildcard expansion (un)safety

On Sat, 9 Nov 2024 18:59:01 -0500
Eli Schwartz <eschwartz@gentoo.org> wrote:

> The earliest version of the Bash Pitfalls guide that includes a
> warning about the topic, per the Wayback Machine:
> 
> https://web.archive.org/web/20090426020027/https://mywiki.wooledge.org/BashPitfalls#Filenames_with_leading_dashes

Also available on that very site:

https://mywiki.wooledge.org/BashPitfalls?action=recall&rev=329#Filenames_with_leading_dashes

and specifically as those changes you mentioned, on that site:

https://mywiki.wooledge.org/BashPitfalls?action=diff&rev1=326&rev2=327


Kind regards,
     jer
