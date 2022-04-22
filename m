Received: (qmail 32010 invoked by uid 550); 22 Apr 2022 07:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31971 invoked from network); 22 Apr 2022 07:06:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1650611151; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8J5Wq7aWS3vFjikypfrJ24xqcm/XnZeTKHEQ+Q+lR4Y=;
	b=GKdM1qIPxIhqdz0Mf/sdZov/PTUUA2gHoKI/Xxo1r+VVJS0AsbVL4Gj7R1a/X+RESy1OMG
	HK5PhmGKfee7Vu/FHMEkolSWH9cOH2QjtfPaQ6adp/zuU9ZXHc/pqpZWrXVtqBIef2aDNC
	YVUN3Dm0NRJj4gWz4RS0OHsWET6UrSw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1650611151;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8J5Wq7aWS3vFjikypfrJ24xqcm/XnZeTKHEQ+Q+lR4Y=;
	b=5f6v18jwwL9rdMKin/zXAo4QLE01spMAnLLASEcfQ74b53TwNlxNEp02uKZZQv+E1Bu1QY
	fu2txdUtNLkO87DQ==
Date: Fri, 22 Apr 2022 09:05:50 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20220422070546.GD7624@suse.de>
References: <CAH5WSp5hx0pPjhbUoyduc-Nk7fW12pLsJqBFFQ9S4p7ZdgkHcg@mail.gmail.com>
 <YmGV8gVeaVN9IMve@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YmGV8gVeaVN9IMve@kroah.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Ivo_Totev=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] CVE-2022-1419: Linux kernel: A concurrency
 use-after-free in vgem_gem_dumb_create

On Thu, Apr 21, 2022 at 07:35:46PM +0200, Greg KH wrote:
> On Thu, Apr 21, 2022 at 11:44:54PM +0800, Minh Yuan wrote:
> > Timeline:
> > * 21.04.22 - Vulnerability reported to security@kernel.org and
> > linux-distros@vs.openwall.org
> > * 21.04.22 - CVE-2022-1419 assigned.
> 
> Why are people assigning CVEs to things that require root permissions?
> Or are there distros running on kernels older than 5.4 that allow
> untrusted users access to the drm ioctls directly?
> 
> I'm curious as it would affect the backporting of the needed fixes here
> (or not.)

It does not, distros like SUSE give out ACLs or groups write perms to /dev/dri/card0
to it via udev.

crw-rw----+ 1 root video 226, 0 Apr 22 08:47 /dev/dri/card0

getfacl /dev/dri/card0

# file: dev/dri/card0
# owner: root
# group: video
user::rw-
user:marcus:rw-
group::rw-
mask::rw-
other::---

Ciao, Marcus
