X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["438" "Monday" "5" "October" "2020" "14:43:58" "+0200" "Greg KH" "greg@kroah.com" "<20201005124358.GA806250@kroah.com>" "14" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100512:43:58" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       greg@kroah.c Oct  5   14/438   " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9344 invoked by uid 550); 5 Oct 2020 12:43:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9323 invoked from network); 5 Oct 2020 12:43:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=gkWYgQzCuF1rdfbnyA14A5XOZ6E
	86dVkrp7j6GmablM=; b=cBw9Lzw2LsPdzwhfdvetpqfeWhmEaYfxu6Juw6rKj2X
	IHV2am+NDcQRcSthHKPtaiUD0U65mBj2rnRoyVLnfvuoVyBmvG090woZmf6VK7fX
	xtw+nBiT+W8c/t7R7v66+fQw4hWiK8xpk1XznTIqzEDqclwEC+aFrNpPcFfMqQzF
	9+e5mHwzVVUldcqE3MDZHByu+r943w4oaM/aP9g/ifwMElDpgsGycF/yCmWzydr8
	e3N9/S+mX5cg4NcfYiWFD8x9hJnUMp2u1Ld9HLHyrdyEZG8+Fvhy+BJzTOhjt6bM
	83nOLJdk+2zyLkFyiX/oCztRBxUfz2vim8rqScTFwvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=gkWYgQ
	zCuF1rdfbnyA14A5XOZ6E86dVkrp7j6GmablM=; b=q6bdFUqGVV37++ONDtAH7F
	Kz5fDiXvo9WJID419u9qfB6N6EFd1lTxfdmD6iITTlFFqlu0o7BUyQspp26a4fYo
	K8JMoXNP8AXAN2oeiw/YpTUV1o3wsjdpnNLin2mdeXA0/Uxm7vTbg8zz7/BlNhDR
	Wf0pRKuujCG64xayIYvK1P0HCBx01x3VYwnf6JYA9E45b1ZAkB9nApMS6sH16oK4
	vALCuEnFktm3qJeol/lJWoVx1KCwYnpRZnOFtnm6qruFti8BC+fFBww9hNJk6aWR
	kChcCx2Qz92ojD/gCdSi/AHVfsYJAthu6RqQMR/GJqipYxPInoLMJX+sZ7hrnbeQ
	==
X-ME-Sender: <xms:4BR7XzixFmd6m10RF6V4URK7-ahqE3QkDY90dV5BurtQtJXiRO5r7g>
    <xme:4BR7XwDhd3_O8g-_2Y0v_sN_N3ZJu5RQ41HphxKYDwb45W6xogV3-inde6SNtQIFS
    ypH45XaMu7LvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgedvgdehjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucfkphepkeefrdekiedrjeegrdeigeenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:4BR7XzElkV2J23Ia0I_mU-M2fJ73p8aYzPAiBwrM5YuBIkGLcIj7wQ>
    <xmx:4BR7XwRIRkrQ26UZ2iIO9fRkDdHmB8ExZxFczll49jq2Hqjoimg8Ag>
    <xmx:4BR7XwwGlNx1qRPBGtqp_S8ju7zrFEV60qGIppW3cit-0jnJoALV4A>
    <xmx:4BR7X_8KZ1P8N3t1qE6reuwLZiteN7hnVtCK6I2vNWgEFmXEPjIkBA>
Date: Mon, 5 Oct 2020 14:43:58 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20201005124358.GA806250@kroah.com>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

On Mon, Oct 05, 2020 at 03:02:33PM +0300, Georgi Guninski wrote:
> Disclaimer: I am not watching the security theatre closely,
> so this is likely trivial.
> 
> Are there major security changes needed if
> gnu/linux dominates the desktop and/or mobile phone
> markets?

"if"?  You do know the market share of Linux-based mobile phones, right?
Last I looked, it made the Linux server market quantity a rounding error :)

thanks,

greg k-h
