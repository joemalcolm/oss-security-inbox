Received: (qmail 29769 invoked by uid 550); 30 Apr 2026 16:52:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29739 invoked from network); 30 Apr 2026 16:52:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1777567946; x=1777654346; bh=aZ1TZdyU1y
	Jofx6YnZRFthWze5+hyGtJn1rpecIzijs=; b=FOP57++oA01Jn60RsthW6wRVLf
	fowmc1p1eGnb7NCm+6n/5GcCExhO0N4YYPbK5HduMQ2NpvgmXFruGfmKaKRMF84x
	lPzwRBRq8UCbprafycKS7SisPQa5OHYAGiCDeoALbOQ/vvS30aER5e4bpPj39rf6
	cIn/AWKwVdq8qNUu7yUVKEMpoxY2BztV18QedKkdp9sei2pTWjjKbatErHD9l8w2
	EYdJbA7sXYQUH8vpS0zuhJPesIJo/aKJ/4mzJ+FwxdwGp/JvGVJMQIndWuF0ql/b
	6C83SyaqItqJkuFcJ4CUTsRuS0Rn6iUAj0DnHum1TghnSfFv1b2PAfu+VxZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1777567946; x=1777654346; bh=aZ1TZdyU1yJofx6YnZRFthWze5+hyGtJn1r
	pecIzijs=; b=AfgkHfhJeBSKOLiLu64Rp2IBp5dIzyH5QhYKYPYpdP2nCrCkzfF
	oeDktPtzOmV0959kbdUXQCn+e4wJ4KdGR4Zjf2oOWhegzfUvOt1/s3Brf4oYFNp1
	axyo8LBl8lB3nPyI6VadaNxCacgapxJpN1WwfiawcsQND8vq8fYzDlpbeYOsASlF
	QUU2mj64ALyWuxHR5apJX1OiEDulngxsEtbxrNSxmKPwooPv9Y9GKiiuAftkaGSk
	hkkODnpthNC6v13SIANl1xZlFMWRV7DBBw2SmVo6Hd8Q2cEa9xYTs+o/a0daEUQq
	a3sec+SfZZ+B0YWdL/ptNFWLHgOHv5EDTpQ==
X-ME-Sender: <xms:yYjzaZmlmT68iyLLgqpAYHnKd5IpoQUE6er9_OXSxBRN2l77YJ6F9w>
    <xme:yYjzaSxBGTG3MX57Mcad4N-GxFI4noGp65ZqpQFVocZU7CDP8YnLY7vKevo_peQfY
    9ozHKFPv59_5Z6B5fTHhnElLFQRoo-bxpHODiv9ohY5lVnuBA>
X-ME-Received: <xmr:yYjzaXPFpL6NGkRobbRczpEwQ_EbcvSSkNi9qxP30dfJ10Pdtugst1SGU_y2GD78A-nWc9XKw1JSUjEJoNGJUBoHAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekjeekhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertddttd
    dvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucgg
    tffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeugeegve
    euuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpehgrhgvgheskhhrohgrhhdrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpe
    hsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdho
    phgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:yYjzaWRPKZMVZhW9zPpZ8OWAN8YqO0CKKiW8sEWYq1q86bPHzUb-ng>
    <xmx:yYjzaVZYr4lGqq_KLbgrDD4MRTmfwT83WMrfaJKpToWTrIIiOTwC1g>
    <xmx:yYjzaT3YH97AWKptJjq4ybUVWYJpyf6C1umbuRF3669XTiOa8mL-KA>
    <xmx:yYjzaVXoj6Ls9r5rodzieow1-gWvLTf8dRbKkV5YTrHC1Rme4bGkZw>
    <xmx:yojzae9mMctCy7AuLE5YuQShDfBWmxj3otKv1qK5a-ubkZPD9Bymx7My>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 30 Apr 2026 18:52:15 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2026043018-drinkable-flinch-632b@gregkh>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Thu, Apr 30, 2026 at 03:17:45AM -0400, cyber security wrote:
> That is very terrifying, is it is 10.0 score?

There is a score in the CVE entry, does that not show up properly for
people somehow?

This was one of the few CVE ids that we have provided a score for, why
people ignored that is confusing.  You should contact your distro if you
are paying for support to find out why this happened as it should have
been covered by your support contract.

thanks,

greg k-h
