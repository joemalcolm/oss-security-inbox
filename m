Received: (qmail 1876 invoked by uid 550); 30 Apr 2026 13:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1846 invoked from network); 30 Apr 2026 13:48:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1777556899;
	 x=1777643299; bh=+5HSxgPHZ6rldzlPnenCRZJ+YqvDnhEmI7yqtJW2s4c=; b=
	DzxzvTxiVyvR8gNi9CwUX/nZWRuXNyxK9kIzHmssmifdsF+DbXiVEZFwCY/WND6q
	0vLsMAAlQ7E6vt9QTAxMKaoLQVmSOe74HgiV8Vun29LwVenvmGeWqQMFM88sJ6Ou
	iZkBTeJpEP1HXY+4VuDmB3h8E0qdRUu/7HhIzbV4c5QPjIHcs254x6quLsRr8Uxg
	tXzLaKJn+WnZYom7lnJfPgNYwH1NeJ4FuxG68640VLN1jEuXeNd/1EV0mHLdHWaR
	ylfd9arNDe8luEO+gGgEJ4NCd+HBvuBiqKW1vjnKZfF8Mlksw2eNdRWTcPl1xZrY
	mEca6iqqO/gtNtJtoNSKjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1777556899; x=1777643299; bh=+
	5HSxgPHZ6rldzlPnenCRZJ+YqvDnhEmI7yqtJW2s4c=; b=XsZzDRnSfq4X6PCoy
	WO1nxIleof9m0NsooK6hdJ4Dco1ndmUwApKJYu+2Xo1fGANRP1Ejv/IgY7Easm4k
	8gx83QaDY6GbIs2Mj/vKWkjnc0QgIbrz5gxRv62nRhjmXYYCB2+is+Wa5iZoMami
	Jb04kLPAumIibiBCjMgy6rpf+QgzmghSjQ7o7kDKSpdDbAPE5nfavmM4ZGdyqvHx
	i8hTTlicekpOAmP8VEAYDQu1Wl9O+N/s9HC1lA4aJ6qS4PrKGv8nb9HU/ACDFetX
	k0je5ogorOxqYkVlOKeau4m5rfmTVzYYm1pnI3Bp9BIKaQDsCYoOpaxAingvCw8+
	6P6fA==
X-ME-Sender: <xms:o13zaRbvu9BGB9CKxqdO3ifka7sCXWvxfXFgWt76sJC8O6B092OnWQ>
    <xme:o13zaWXZ9FxXJUHWMGhP-_PJTxg5At1urY0lOLpG9WRZmF6c7obVSdwnARMZGE7b8
    cr7SNw-QWDOOkT2S1EwHJ0_3zAnn8unAMCfuq0FD3P2c6hU0g>
X-ME-Received: <xmr:o13zabjLc3ikll-Wm4EbxJvY4QKTzqLxQN8oz6-WtCZFCfwOdovWpwiYyyEhFPxkclh3xVE-2LV5gbzFhboh_NUp6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekjeegkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtugfgjgesthekredttd
    dtjeenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecu
    ggftrfgrthhtvghrnhepueehkeehlefffeeiudetfeekjeffvdeuheejjeffheeludfgte
    ekvdelkeduuddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvg
    epshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdr
    ohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:o13zacX4jE3lErXpO6cDpehqERxUP20Q-39O3ssKNTPJzkgW6CvkWQ>
    <xmx:o13zaaOct7Pg3ww02C2x_fyoGOgkbms0j1b8bexzN2_jSX3IRT4Ljw>
    <xmx:o13zaQYb_u1IzkPb31k0uYyXoM-Yet6yxTg9M-OamFSwBDmwmlazEA>
    <xmx:o13zaertfvP_1PIeGKMZeXHGRCuQb2dL635xr4rNA6ifSqmVZ1cDJQ>
    <xmx:o13zaXSIEk4wTJWT7XhJm7S9dyi7_gIPn83pDllpcxzDAB0aDL7qNKy3>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 30 Apr 2026 15:48:17 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2026043030-unpinned-grafted-38eb@gregkh>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
 <3CD03E7B-92A9-4C32-AC58-E811FB8A43A6@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3CD03E7B-92A9-4C32-AC58-E811FB8A43A6@redhat.com>
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On Wed, Apr 29, 2026 at 08:52:14PM +0200, Clemens Lang wrote:
> Hi,
> 
> > On 29. Apr 2026, at 05:18, Jacob Bachmeyer <jcb62281@gmail.com> wrote:
> > 
> >> I'm sorely tempted, both due to the increased volume and the risk of premature disclosure, to just assume that any vulnerability reported as a result of research using an LLM is trivially discoverable by others, and give up trying to pretend there's any point to working it under embargo.
> > 
> > You are correct here:  you should assume that any LLM will give a similar result to another person who asks a similar question.  In other words, LLM-discovered vulnerabilities should be considered already publicly known.
> 
> As a further data point backing up this theory: We’re seeing duplicate reports of the same issue found by multiple independent groups that use LLMs, within the embargo period.

We (on the kernel) are seeing duplicate reports of the same issue from
different groups within the time period it takes to get a fix merged
(i.e. just within a few days).

thanks,

greg k-h
