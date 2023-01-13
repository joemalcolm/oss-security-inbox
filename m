Received: (qmail 25897 invoked by uid 550); 13 Jan 2023 10:17:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25873 invoked from network); 13 Jan 2023 10:17:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1673605025; x=1673691425; bh=T3UDOCiZAH
	r+8SzFh9epD7RvvrlGIch/ouvmdDRLVaY=; b=UGXZzbLgipvLCnMb0WFA2PL/R6
	Di91WbuVW8VeSP60hc0SVktEre9JwoqApGtvGGuAttaExsm+pX7OGeOYZLeIu+pc
	Cgf4OR4lbszsl/vA/6h80Do8+NKddIy4+i4FEw7yJzqWeG+mrS/DHD8HeuLrmojR
	xcofBP2bIBWhpc3rLVPJkjVOh7iduLsGvFi5dAt/tpxPHitFkzB+sAeTOJ7rS4nQ
	YOz/Ie+Dzn0TwSbJOZu3vX0BVkqrL/fWwOHU3v6TKdRfsPpCY1SOVcK8WtkBDFJ5
	ORGLVpNpBE6skW/MtciuJk6n4hi4MtDZ5bL0fslT/202Ir0gW7ME4mP+SBgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1673605025; x=1673691425; bh=T3UDOCiZAHr+8SzFh9epD7RvvrlG
	Ich/ouvmdDRLVaY=; b=ciPO4YVEIXCOxLH8+7HjgPxCQ9EaRIQtZSS6H9lmuxpe
	6/AotJgO+0wYla8K3yeWGvv18jpLJpoa9PgkbajOpdu4guTH+I8CI3Zc/SwGViGx
	yMUCDtQbbzbDsM7x29GyuIAUStAJtJzYjBQFEkvSwIWbPDJu5tbHGQFRk2CFqWZr
	KaWQRuqvZk5UfjLiXxZsuftIXzxB3M6q7TlussGh2K2ea1sjnCPkw7MvVmXTWrPf
	c/oIIcX8C7UVw830E4Vr4kJ9E5ls4xxURqcm6Kf0Ep+gp6v1WY/QYoJmRaKiJfZE
	lU04w9iE2z03ivFXnM+M52CoNV+2nrXwzwOSjs3aXw==
X-ME-Sender: <xms:oS_BYx9YTwdHHW6w_FUy2O9O6Y1gOZd0Hq_po4ZjpQ_R2cP7fd8p9g>
    <xme:oS_BY1t7fsz1IjMgblWGRofS2zycgOk6kqk8kH3wFvirEN1SdrXQf4kM2l6lz87LK
    Lk0SoyC2Q5qPw>
X-ME-Received: <xmr:oS_BY_Cf8k0DbPCU4PyOlHuVCbvwo-JqvUKqNIm-8Yb9tqqaQG4vTPK5DM4l85TYTEmXAnjujhmNf2QW3Tn8IWLy7w87OSqidPIlrw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrleekgddtlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpefgteefffetvdffledtgeduudetffdutdduveefvedtueegue
    eggfeiteehfeetfeenucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgv
    rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrd
    gtohhm
X-ME-Proxy: <xmx:oS_BY1clIwLYnAg1iyw4O4vuHaFDJAjJuk-2znYlpgsxtAd31NKjFA>
    <xmx:oS_BY2PU-pYuV4aZm0q7-DdNyG3Pflk8uGPFIgXMuePWVK9Nf8mnvw>
    <xmx:oS_BY3n8x8lVQUSCQGf03B5OjMRApvRCOklCMoZIit7DEfJQ85hdzQ>
    <xmx:oS_BYwXLmRO2pphOrscOViUk3ZEfPXbD8_vCZVInV1zvqVUB43xQSw>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 13 Jan 2023 11:17:00 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <Y8EvnDtwz6Hlq/Qs@kroah.com>
References: <CAO15rPk6Uh6ZqZ=c8yjz0=53DqXQKF=fSXqDo9dLdMAy7-YS3g@mail.gmail.com>
 <Y8A+/ys+5oIRzr9V@kroah.com>
 <Y8BednLm17osifo0@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y8BednLm17osifo0@gentoo.org>
Subject: Re: [oss-security] CVE-2023-0122: Linux kernel: Pre-Auth Remote DoS
 in NVMe

On Thu, Jan 12, 2023 at 01:24:38PM -0600, John Helmert III wrote:
> On Thu, Jan 12, 2023 at 06:10:23PM +0100, Greg KH wrote:
> > On Thu, Jan 12, 2023 at 04:12:30PM +0200, Tal Lossos wrote:
> > > Hi all,
> > > 
> > > # Description
> > > A NULL Pointer Dereference bug in nvmet_setup_auth
> > > (drivers/nvme/target/auth.c) can be triggered remotely to cause a DoS.
> > > Since the bug occurs in the authentication feature, it can be easily
> > > triggered by an unauthorized client in the pre-auth stage.
> > > Versions affected - v6.0-rc1 to v6.0-rc3 (fixed in v6.0-rc4).
> > 
> > Meta-comment, why are CVE's being assigned for issues found, and then
> > fixed, in development kernel releases?  Who assigned this CVE, MITRE or
> > someone else?
> 
> This information used to be available for "reserved" CVEs in the JSON
> data in [1], but now that that's retired I'm not sure this is made
> public anywhere.
> 
> [1] https://github.com/CVEProject/cvelistV5

So if we don't know who allocated it, we can't know who to ask to get it
revoked?

{sigh}

Yet-another reason why I hate CVEs...

greg k-h
