Received: (qmail 1206 invoked by uid 550); 30 Dec 2025 22:16:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15890 invoked from network); 30 Dec 2025 22:14:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seestieto.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1767132876; x=
	1767219276; bh=OCyKiPaZa/LQIQFPDWEu7H+rJ9syJjq3j0K3mld2pjc=; b=W
	+OGWgRBDP+ERYaH/D2uLiP39Z365kucAE5kMi2YEUtVlLLYVfAkFbWIakOVoooYM
	M3ulhelb1Z0JpUUUzFwofdjB595nwClhp2cNTCCqP8N0EFCZN6/FPaME8f9f0WmO
	wsWhJGtwjX5NkOh9GMYJ9p/THpHMfu85BBV77wQN6aBL+/81QKI+eZxyo04jLp8s
	nMsE6F/guM0QDoPtyzdM9GJXsVTR5lQtlH+9BVb80WlQrcT48lpC+75A2G51pECV
	vSQIEea6Mv95GFoiSu64PwMvMUwTujjjmvTE0rSgqYWdYrlYhwpjEBBjJBdDd2x5
	R6jRjR/aWB5XyihFFC+BQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1767132876; x=1767219276; bh=OCyKiPaZa/LQIQFPDWEu7H+rJ9syJjq3j0K
	3mld2pjc=; b=xvL0Mqp2YDnbq/DGNGCyHAStHXLkcgLZg5gPIRh58CXzR3kwzv5
	/+OyNamN/UTtk8/8GIBNNzHtsiKF1RCrPQVfQCwDUHhCjGX51lNZF9gr+c+7rp2U
	sgGoLtnUlO1kDQjUZGpSemkFl8TSadE244iCIXOkDfg1Qvx8hlaKtGNh1RA6o2Iz
	22nFDtzh/MCpuJsWgyxbBCOmrqfZFD4qzn5nMpBZeO+xhIvwYdX0Pu6bY7KzojB+
	jIF2JwxEoX0dI3IR8QHJWELEyVi8Txeu0behxRUUfvf1BXwI32KwKaMHdT9y/fq4
	UH9r2wb1rKtG6MynEwxOlX0uxfiFPsdUQxg==
X-ME-Sender: <xms:zE5Uaf5cCBROTbGuH2COaa3-p_X0O4FNIdwDlF1tiQ1Effy9RXEIJw>
    <xme:zE5Uab3g46_uoaAf6Y2JtD761iBl6dI48nyqQ_OgruEe9qje-Cw41gkOLZXb4LY-k
    AohD7fFMauZgis2bm9rGCbyOokMxgdGIqwoztfhf4Jk5QEdbNs>
X-ME-Received: <xmr:zE5UacHpTjCUCEfpN0pIoXebT4RjGeez77Rbsa1qrnynUSFM2SCQwQDOvC1WypoMscqd0mGxxv8UnlhcyA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdekuddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhephffvvefujghffffkgggtsehttdertddttd
    dtnecuhfhrohhmpefjvghnrhhikhcutehhlhhgrhgvnhcuoehprggslhhosehsvggvshht
    ihgvthhordgtohhmqeenucggtffrrghtthgvrhhnpeetudduveevgeetveegfeejvdevte
    evvddvgeejheeuueevtdfggfdtjeevhfeugeenucevlhhushhtvghrufhiiigvpedtnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpehprggslhhosehsvggvshhtihgvthhordgtohhmpd
    hnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhs
    qdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:zE5UaVRu_ru69y3SVhkX3MmQAI_KE6YNnIlXqJgMaZA9KkDIgu0a-A>
    <xmx:zE5UaTBnCdECc3uYihpO7MLbBmnggcWUGq3ne0X_jMM8hXeq8XAaRA>
    <xmx:zE5UaV38oPWddgAodJkrE3xTn8to1HRWYQ8qwEkVQZEACMq7HEWIkQ>
    <xmx:zE5UaRULApN7bQLTaZvsA8VLglLzc2D6QZHoVLIgeeJ2oH_TGbBiIA>
    <xmx:zE5UaSZe3it0pQims_TPGIwNeC1PUCLWTgqkAJU0wKoi4GRSO6JqnIvk>
Feedback-ID: i8ea641e4:Fastmail
From: Henrik Ahlgren <pablo@seestieto.com>
To: oss-security@lists.openwall.com
Cc: 
In-Reply-To: <SYCPR01MB3661EE9E2D62A122A271AE98EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
	(Peter Gutmann's message of "Tue, 30 Dec 2025 11:30:21 +0000")
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
	<SYCPR01MB366178C350BB2649FA5B82D6EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
	<d46c3c34-0fa8-4b79-a624-b7ccc9662ce8@gmail.com>
	<SYCPR01MB3661EE9E2D62A122A271AE98EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
Date: Wed, 31 Dec 2025 00:14:32 +0200
Message-ID: <87h5t7aa7r.fsf@noux.seestieto.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

Peter Gutmann <pgut001@cs.auckland.ac.nz> writes:

> Does anything actually use the cobweb of trust, or do you just assume the key
> you've got is good because doing anything else is too hard?

Perhaps the Debian developer keyring would serve as a compelling
example? They even organize actual key-signing parties, which many
cryptography experts today appear to regard as "LARPing" or otherwise
ridiculous.
