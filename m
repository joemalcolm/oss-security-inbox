Received: (qmail 9767 invoked by uid 550); 2 Oct 2023 07:09:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9749 invoked from network); 2 Oct 2023 07:09:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1696230532; x=1696316932; bh=Cd
	vdu0HhLse2Gs052T8GJ1iTtNII1NpnpEINDeZhSCs=; b=SD6wY99k+W9ChoQNfN
	Xtp2qCOSiWEUSQDOYnPyW2i2rxm8iBcTpG4hpOXKJ3171JMXxKbfPRUoYfoXftNW
	JSIG36l5kaOBNNbImltPTYmjtNEumbCLf2lADuCvlBBPi9JatjG06ZV70jIroIau
	AHxM0Q2q4RG2U3UysQeNbdE2BfBadQ9AIGF7xx9t7lkpP1buOR5KUu3X3TAK5ATK
	q8BfZLMTmZvOQphdjxRx8aFH740WkqEFLGkxwOiCxVTkKZEXX1vYrl8xgiTubWal
	oXSe2NbbnPYvq2NZKlpBr/s8n2FiligfWl/n7l6XXjWdKIEM8d68NiH0o3gT1Vln
	MZoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1696230532; x=1696316932; bh=Cdvdu0HhLse2G
	s052T8GJ1iTtNII1NpnpEINDeZhSCs=; b=ir1rcLRdVD2jU0xUQ+7rHZPY+u1Jb
	XEZNNfLwR8br1iweGaOg+xZ7fJol9nsYlXZrjlLioE5CTr25QEarD8OiOBRAY35H
	JhlhOrlg+ik1KjQODm7ooGrBlhY2/poYzducFmzLEsNjfh3b4vGEx8n61Z3cbnEU
	XSCp0N5/QpqfGBdFefrd4fx9fwXTE4Y9K7USsmWb6lfuuZFHWpZjF3Q3NLBwHDZU
	OFykeQMdn6Kj8RlAJ4j3SCEn+GScEA0MUXwPtcc/WItOY/BfQ3O3hxFHjOQDO+ys
	6l3ymhoTCHyMOxJC9nsCYrub8RYjIbKgn6LkEwax1bNB9opNBfICE8zqw==
X-ME-Sender: <xms:g2waZSGzsbQ82W7cmu6LulD-sEV2KUWirdcXj9MVgUMS-wDB7oBzxw>
    <xme:g2waZTUH-55ffpcrw3R7trND23d4LsavcWG-wtHmjMeXVezp2ETbjjXdqk74GmSjr
    Fb4D-hvFekjIg>
X-ME-Received: <xmr:g2waZcIHmMsAT4gw0V49Z1R21z_xzeE7WSP9gW4ixIwig5d-76Padh6lJRwMM7drUo90BPwsJcCDukSBZpbUbioikrmTx9PLi_mylQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekgdduudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeejheeiuedugfeffeeffeevteeugfehffejfffgjeduffetie
    eigeduvdeutedvteenucffohhmrghinheplhhinhhugihfohhunhgurghtihhonhdrohhr
    ghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrh
    gvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:g2waZcEFb-7Fn3imU4VXstZlsiMkfik-ufhjq2QkNz8WmZeUyxbuLA>
    <xmx:g2waZYWdoCxGBXzlos6u2r7VomCGtFm7eDWpeU_cXds-xJyqabbviA>
    <xmx:g2waZfMra1vcd70XSUzegQ9-4HJFCa6D0dwWs_gryLCMetsMfJWCiw>
    <xmx:hGwaZRebwXB8oB6am8GGaqEC9ZRblutxaZ3GvaXR5wGa0wLVHH-T0w>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 2 Oct 2023 09:08:50 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2023100203-narrow-reliant-2560@gregkh>
References: <20231001191303.GA8910@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231001191303.GA8910@openwall.com>
Subject: Re: [oss-security] "Linux Kernel security demistified"

On Sun, Oct 01, 2023 at 09:13:03PM +0200, Solar Designer wrote:
> There's also an upcoming Webinar:
> 
> https://www.linuxfoundation.org/webinars/demystifying-the-linux-kernel-security-process
> 
> > Demystifying the Linux Kernel Security Process
> > October 3, 2023 | 07:00 AM PDT (UTC-7)
> > 
> > Join an interactive, complimentary Mentorship Session exploring
> > Demystifying the Linux Kernel Security Process with Greg Kroah-Hartman,
> > Kernel Maintainer & Fellow, The Linux Foundation
> > 
> > There is a lot of misunderstanding about how the Linux kernel deals with
> > security vulnerabilities.  This talk will go into how the Linux kernel
> > security team works, how changes are propagated out to the public, and
> > how users must take advantage of these changes in order to have a secure
> > system.

It's going to be much the same talk, with only minor tweaks as I forgot
some points I wanted to make in the first one.

Thanks for the link to my slides and presentation, glad to see that
information get spread wider!

greg k-h
