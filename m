Received: (qmail 5482 invoked by uid 550); 29 Mar 2024 19:19:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5430 invoked from network); 29 Mar 2024 19:19:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1711739967; x=1711826367; bh=UZ5ELUaXnQ
	nY0QwsueFFwMA4KTr4ELm9fCLkRj9SNas=; b=CkgrXDCFw670Sq2KqkPckyXr7I
	8oc5zggMPYHP23xCvL/JZLnPg4FBPyHswi27jLp+rNQLZ4npt/5lAbwEyvg3KhOv
	Rg0RtdWHxKTic8CFJkKbQ+NjErTh/ND4HCJQhcR2fH7VafwuNe0cJSNaOpOzaaZ/
	qF5APTk0mWZI5uul80gC8MGSvPgjF4CwwgAISzGtzWT55frIJ0pGh/AFWYk4z21p
	rU4tfP7xNgvYrA1RFUh3VEod6IQqr9ZdOupdlHTPc2vbgdwUTMmyaBhfUdFBkjje
	GMLdXXgORnveIClO+ZpDW6xPxFo3V/XPn7/v7gP59Uf4eGF6fhMmCeeFCAaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711739967; x=1711826367; bh=UZ5ELUaXnQnY0QwsueFFwMA4KTr4
	ELm9fCLkRj9SNas=; b=v1z2QVV6XF9TpDIhxu76vQeZdnDxW93OCRXr+LNB76Ym
	DJ5KeXApkHpQNktFQNImHoifHNINvtcdUii9+70m2cMXKLxer+RywEnuG5StnKdQ
	e0Gph1RutwXdqQwBnVa+kDa7pp2GbGIqHO3/n6dH0HgEjUlwx+TgUX1p5LS/GdHE
	i2xA+KMg2+7NqpdH0dgohxrdfMDeZK70V5Lbpp764d3A8JuMgK8H2umyPQOOEpD8
	6VzoL3jh+K+2KBCMTQ4EqfgaVDL7+o/1/oBJ72XdOQlWVPwQQ3l4i0BM+jTSzRCX
	Lc2/UePZyWjWrN5iy+iu9gK75zNi5kAg9b3gJvdCVA==
X-ME-Sender: <xms:PxQHZmxEnlJCs_IfMN5cDGMybISLtBH_T7E2gUtl6fGYAS2Q0p0c4g>
    <xme:PxQHZiRGYmL2U6qa23vAEIh23IrDHD0L-g3UF3N80M6zoYgua5dD2JHgwcZZqBKMj
    jN9cHqry6NhYaq0KQ>
X-ME-Received: <xmr:PxQHZoWNbAdBpuf8deh9PiTL5PvGhkgwX2LiVWDW581cNk1eYCgqI3oXVDbOTspyfUCwC80bowhtILIQyqmN5-b7onLBdDbtMob02XX5i4XEk8v9oKy-_rHCQtXr>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvvddguddvgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeetnhgurhgvshcuhfhrvghunhguuceorghnughrvghssegr
    nhgrrhgriigvlhdruggvqeenucggtffrrghtthgvrhhnpedukefhkeelueegveetheelff
    ffjeegleeuudelfeefuedtleffueejfffhueffudenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:PxQHZsgr3cES5NErpOX5gPoWNzFEZEVEx0eKiuTf4f50H_Si3Jnsfg>
    <xmx:PxQHZoAYJUnN0nxW4GtMIX83g1SHwS7vftXmZOE8bOMxRqeS8PncdA>
    <xmx:PxQHZtIKtY80Gtg0iNlpM_5CzGdHjO7qtT0eGvkdnTZ0qXpNA5fx4Q>
    <xmx:PxQHZvDYA2D_yZtSst2yXlyO69bad5H7ZBdX6ZYJBgQEBAUDhueQgA>
    <xmx:PxQHZjr2aZgetax4m6gpCGzBFHzMz3sgVcTq99pyQhjD6P7KHf8BJg>
Feedback-ID: id4a34324:Fastmail
Date: Fri, 29 Mar 2024 12:19:26 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcL9VUx6CQ5Wx/W@weckbecker.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgcL9VUx6CQ5Wx/W@weckbecker.name>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Hi,

On 2024-03-29 19:44:05 +0100, Matthias Weckbecker wrote:
> I've attached a yara rule to detect the *.o droplet you attached in the
> email (liblzma_la-crc64-fast.o.gz).

Unfortunately xz 5.61 added further obfuscations, making it harder to
detect. Should have made it clearer that the attached .o was from 5.60. Among
others 5.61 removed the two symbols you're checking against here.  That's why
Vegard's script looks for a specific instructions sequence, but obviously is
also more obscure :/

Regards,

Andres
