Received: (qmail 22380 invoked by uid 550); 28 Dec 2023 10:30:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22362 invoked from network); 28 Dec 2023 10:30:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1703759504; x=1703845904; bh=ZKv9FCXoTj
	FQ3+ESIQIFcZMVQKYwfRqvfykvFWzy3Vc=; b=eShL7mp41BibUM7DJ5xjfzvZzp
	0q4amOgZ4umTUN/R/boqnm8N8iJ50nZOpWHbRQf0Dt0xXFKkAxcwvryj9MWl2UlV
	2SIdQN6f9e4vVrgSA/1/7uYvIt+hsfII9O9grEFEo04A95XA/wa++x4usLIsouho
	1YlkJaPLR1TqN+tcxiHQWnap+iFyjiltStm8UyK9FR16qdfeLPPuD76lJs35KbuB
	1McFKDNlqiCnNGIr4VHyF9+XR7siDJbBjZUFUGJJ9KtextNRa6DFjC/fa77tqQ4x
	68DOVi6raz+MfYsm+RTzBBPk8DDbq4yAF1vloCw9jbvCF0WUZ43iO0XHoh5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1703759504; x=1703845904; bh=ZKv9FCXoTjFQ3+ESIQIFcZMVQKYw
	fRqvfykvFWzy3Vc=; b=7GTMQsy/CwAoIK2LOChwUbHIfjmqKbxXdAntjS5pLPe1
	mckSuVwReUWEhNCnSXulgo1uD6NbujNqMMUD4ROZRLNOWVCxzBHw6bySKcBIKn2Y
	w0Dc3ZzT6jFdL70A1pSdlrJrzpaz3LkXKHM6Q1MaquPQ7lDbyOCr+MQVuhk+Q1hY
	u2v/SVDUVJW9qvPQ3B+4Apfl6GcuO16dCW4rAM8KPIeFHQZDII0YFhRuC+15jZBX
	q4r/p81mWKErC+IE11BFpdYmUyhXkS3dXN9gpAWKGpDpiff5m7Zd4UhA24H6uNIS
	My5soWAtK65Jq/KpDyAFA3wLCvyzg7nByitcSUfXlg==
X-ME-Sender: <xms:j06NZbYV7qdYqRGQLdBWJ0C12OVhrZSu-ye3bTYlXqCRq5dAFDJTMw>
    <xme:j06NZabenoeUy6YFy0vfN5ZHKjCVA7rfLXo4icjxVRCO76A6PEDTYbvN6_-RG0aRI
    TyhAgplqt6gmQ>
X-ME-Received: <xmr:j06NZd9IFqfL9tI0VIu-62W7biKJ953sN3boi69E-aQnxFJQt90nB5fomw4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdefuddgudejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:j06NZRrNbP595a4USVHzxlcN_SwOD7EL79OoCjr5v_WuoVms6HSNxg>
    <xmx:j06NZWp01PB-k3GFT7JwPVDhco0BoFmoIsTPfMMoAilTdQ55a-tgFQ>
    <xmx:j06NZXRpqylUWo98LA-JDXdJKxKdh-J_8w8h3g3iOxQYe9CoQcOZYg>
    <xmx:kE6NZdQCqpIkuQqigsQddnAssMjiWJCohmx9wNAin9NKYp_vVPDHjg>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 28 Dec 2023 10:31:42 +0000
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2023122830-stopwatch-sierra-7cf0@gregkh>
References: <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh>
 <ZS1UPsZo1VyHDAkV@itl-email>
 <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
 <20231223181636.GA8305@openwall.com>
 <CA+-XxSE0v4B32UjrVZgu5WUpTb+78W3zpupnoJq4FeR3omPGSg@mail.gmail.com>
 <CAN_LGv2C4DNFaK2TRA5upQuwaP=SY3K6zzOzp7zT8J-k1HaM0Q@mail.gmail.com>
 <20231225220925.GA17188@openwall.com>
 <20231225233836.R7BLTwQ-@steffen%sdaoden.eu>
 <20231226003555.GA19071@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231226003555.GA19071@openwall.com>
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Tue, Dec 26, 2023 at 01:35:55AM +0100, Solar Designer wrote:
> On Tue, Dec 26, 2023 at 12:38:36AM +0100, Steffen Nurpmeso wrote:
> > and i really today stumbled over his funny opinion
> > 
> >   . All "early notice" lists are leaks and should be considered
> >     public.
> >   . Unless your project is not used by anyone.
> >   . Otherwise, why would your government allow it to exist?
> 
> I think Greg's stance on this is inconsistent, if we also recall his
> preference against full public disclosure of issues discussed on private
> lists and his running of private lists on CPU microarchitectural issues.

As you are referring to my talk here, I figured I would point out that
later on in it I do talk explicitly about the private lists that we run
for these CPU issues and how much we hate them.  Companies who are
currently not on these lists are actively trying to circumvent them to
get access to the information on them, despite all of the lawyers and
governments involved agreeing that this is the best and only way we know
how to handle these types of issues at the moment.

In other words, I hate them, companies hate them, and governments hate
them, but no one involved has solid ideas of what to do instead.

"Luckily" I think that laws like the CRA are going to make them obsolete
in a few years time so maybe that will cause them to go away as I don't
see any end of CPU bugs happening before then.

> However, the concern about leaks is valid.  I think the most effective
> defense we have is the 14 days maximum embargo time, which removes the
> data's long-term value for potential use in attacks.

Again, I still consider this a form of blackmail against open source
projects when you do this, but hey, you do you :)

thanks,

greg k-h
