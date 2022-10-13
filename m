Received: (qmail 27890 invoked by uid 550); 13 Oct 2022 10:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27855 invoked from network); 13 Oct 2022 10:11:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1665655855; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=oncSTjomQkWu3Y7SLrxrIeZG7agNMzjgLAVj2VQKZmI=;
	b=qrC+WEdSR8QTuoCLh+uGvVzYl7SOHUzSoWhBhkXvCuur+sK4jSsDBqcLwBnMGtef0aGJBp
	+CEXBVy544ahlaXbhAMQBWnYfD6076ZB/4LDuyQ8LJomqHqfgNfiAzXwx5JZOYwBOktPH2
	fBCBvN7Ns3n3n526edm9bK2Hwx2tFvY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1665655855;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=oncSTjomQkWu3Y7SLrxrIeZG7agNMzjgLAVj2VQKZmI=;
	b=628zeWl9lbkJnB9QrXMlolRUttGDsl6NJywQgc8R4jgQnfKgXZSWiuXralWdiBmrs3mOPr
	2Wbvtw2nTnqmqHCA==
Date: Thu, 13 Oct 2022 12:10:54 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com, shuster@seemoo.tu-darmstadt.de
Message-ID: <20221013101046.GB20615@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Various Linux Kernel WLAN security issues (RCE/DOS) found

Hi folks,

Security Researcher Soenke Huster from Tu Darmstadt (
shuster@seemoo.tu-darmstadt.de ) emailed SUSE with a buffer overwrite in
the Linux Kernel mac80211 framework triggered by WLAN frames.

We delegated the issue to the kernel security folks, and Soenke and
Johannes Berg from Intel evaluated and worked on this issue.

During their research they found multiple more problems in the WLAN
stack, exploitable over the air.

The patchset has been posted to the netdev list just now and will be
merged in the next hours/days:

	https://lore.kernel.org/netdev/20221013100522.46346-1-johannes@sipsolutions.net/T/#u

I have requested 5 CVE from Mitre, they are referenced in the commits.

Note that some patches did not get CVEs, as these were not showing any
relevant security impact but only warning messages or UBSAN shift overflow
messages.

CVE-2022-41674: fix u8 overflow in cfg80211_update_notlisted_nontrans
	(max 256 byte overwrite) (RCE)
CVE-2022-42719: wifi: mac80211: fix MBSSID parsing use-after-free
	use after free condition (RCE)
CVE-2022-42720: wifi: cfg80211: fix BSS refcounting bugs
	ref counting use-after-free possibilities (RCE)
CVE-2022-42721: wifi: cfg80211: avoid nontransmitted BSS list corruption
	list corruption, according to Johannes will however just make it endless loop (DOS)
CVE-2022-42722: wifi: mac80211: fix crash in beacon protection for P2P-device
	NULL ptr dereference crash (DOS)

Soenke will post additional details as followup to this email.

Ciao, Marcus
