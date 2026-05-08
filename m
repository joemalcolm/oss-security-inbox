Received: (qmail 10000 invoked by uid 550); 8 May 2026 07:24:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9974 invoked from network); 8 May 2026 07:24:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1778225044;
	 x=1778311444; bh=mLLm8jtjzB3zTu8PAa3yr2KMx/l7cNeEBS2JnlErdv4=; b=
	mKKDPIaOGIKbDNfKH8P9vSyhQ54za3yrG1FBnTRLvJRzS7kO6V2PoX/FS39H8kM+
	2a50kA1iVHUTtdg+5A3x8n2AoY1PQySpBeyN7JCG+jls1BDlNrw0JDllqCNYgZ71
	nPoekxR7o6rs0aP+xgnSBhwBUyZNN6c9mRz6R5Md65sLT2c0kBJUgHdpxS7jq6lr
	r6VQLjutp9Znwpg58NuWuN4PHbQ9ER6K2ReY34IPy6+Y7xizUWsbc4grRqTaaRW/
	kKyTY3EVpFaT/F5n4M2Ag7gwGGSXGjL/RnfRML2TFka8qezmDFDyENMIiDGjb3aT
	C7b6ryZkb00oDjBoHy2IgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1778225044; x=
	1778311444; bh=mLLm8jtjzB3zTu8PAa3yr2KMx/l7cNeEBS2JnlErdv4=; b=M
	EMeBNY8w7+cXrzLlTcERrRcKA9nfzARB6U+NsSuudDuDM5A0uvdMEOT8dF7EtuZ3
	bpAwJX1wtoB78Jd9n8gYzfa2R0rXbjSNY2Nr/gY8CnEeeG31gqDTUdV3E5Qu88ws
	HAitNfB5YkS+rJnDaA+jfGw0n0cfC2agnG4tI7UsZewngXy3A1ersri+tnpb5ncY
	gIXR4ZRXbu78oa7zAUPfzGo/jECaUZm2qn54kZU7UW73oYeMOs8HE1PnQIL1b5hI
	81i3b80FdqHDgUnhsEtK6JXl+KQ7HvJmPlQQZ2dP64AwICONeh/ifExeiz3wyy6k
	hQ9FH2UGsAj70WLZqUs+g==
X-ME-Sender: <xms:k4_9aXVHeLlqJhkdpsJN88gmJC-AKk91l3wW-k3OPEvUv77V1FZFIg>
    <xme:k4_9aZmoLtP3oOsVMpatfdWaYaOaAcNkO1JFdbpqsSZxwLBCYA-Y0yDOD4lpiPd9B
    OLCehElPHp67ypGweL8sB8wsWm869gVkkNyxcLX2bxI3_4FiQ>
X-ME-Received: <xmr:k4_9aaDNoRkmFbwVFdzECDcB_aUEkdd2NFZoisfLEA8OHApOC4WaiWn8LzQhOYH6FS6ljnzmRplhES-ZtAmn9bNYVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddutdeljeegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpefgkeffie
    efieevkeelteejvdetvddtledugfdvhfetjeejieduledtfefffedvieenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomhdpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouhhtpdhrtghpthht
    ohepshgrrhhohiesrhgvughhrghtrdgtohhmpdhrtghpthhtohepohhsshdqshgvtghurh
    hithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgtphhtthhopegtvhgvsehk
    vghrnhgvlhdrohhrghdprhgtphhtthhopehimhhvgegsvghlsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:k4_9aQhL2nii_duwMbKjrzE82W9IOiUsa3Cy0gAUk93fs_yJDZgY8Q>
    <xmx:k4_9afxyfjJcYICxzFgIf6gWUzEjVT35cxfwjBDMO1xAYGG13Q9Q1w>
    <xmx:k4_9aZ09KdYo-1mCw_Y4AwoAmyM7LCw690rIyRo5rnUPW9QbPfuQqw>
    <xmx:k4_9ac8exLazDooIrQTPyj4WB92Z7ih5xE0aYnOSjIrRgnprxXtblQ>
    <xmx:lI_9aXOWD9kxLsMGfqNA5RsZuf_iZehPJhIVxdoYHbUW-FFli5pmm8c1>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 8 May 2026 09:24:01 +0200
From: Greg KH <greg@kroah.com>
To: Sandipan Roy <saroy@redhat.com>
Cc: oss-security@lists.openwall.com, cve@kernel.org, imv4bel@gmail.com
Message-ID: <2026050843-chump-specks-dd29@gregkh>
References: <afzgS2SCWNcZU3vU@v4bel>
 <CAJ33NAVT3SKdcF6LFSnn4zuCUyxnjih0KET_cCTrMmgnhwNPbA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ33NAVT3SKdcF6LFSnn4zuCUyxnjih0KET_cCTrMmgnhwNPbA@mail.gmail.com>
Subject: Re: [oss-security] Dirty Frag: Universal Linux LPE

On Fri, May 08, 2026 at 12:43:59AM +0530, Sandipan Roy wrote:
> Hi,
> 
> This stated that “no patches or CVEs exist” because the embargo was broken.
> Could you please provide an update on the CVE assignment status for this
> issue?

CVE-2026-43284 is now assigned.

thanks,

greg k-h
