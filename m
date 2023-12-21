Received: (qmail 19555 invoked by uid 550); 21 Dec 2023 14:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19514 invoked from network); 21 Dec 2023 14:36:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703169394; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=favpGDFP5O0Jld0ZRkZclTv+rcNyFf+oEHCKj/lMRcs=;
	b=spIV4wLHAMlNDH6gun2vkahTBXXW2CYubCfeFs4EAIbqVq1MISjXfl8KIRbY0xxKuNWjcg
	kec8XQwIult/LzhgNTW5YY83SperLXseLELof/MmLZinNaY56YJh0gZoV0JCYqQIQiBCwc
	Xze3ZfhZKJRBElXF/RgFx83xyCfFsQk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703169394;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=favpGDFP5O0Jld0ZRkZclTv+rcNyFf+oEHCKj/lMRcs=;
	b=NVJZ4CCWUt7S9oaOnhW40HfdYCGf/Mj8QBpk8+vU/GObstdrwrrU89vLuYxizKDVydD56d
	OTziezXFFTp0V4BQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703169394; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=favpGDFP5O0Jld0ZRkZclTv+rcNyFf+oEHCKj/lMRcs=;
	b=spIV4wLHAMlNDH6gun2vkahTBXXW2CYubCfeFs4EAIbqVq1MISjXfl8KIRbY0xxKuNWjcg
	kec8XQwIult/LzhgNTW5YY83SperLXseLELof/MmLZinNaY56YJh0gZoV0JCYqQIQiBCwc
	Xze3ZfhZKJRBElXF/RgFx83xyCfFsQk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703169394;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=favpGDFP5O0Jld0ZRkZclTv+rcNyFf+oEHCKj/lMRcs=;
	b=NVJZ4CCWUt7S9oaOnhW40HfdYCGf/Mj8QBpk8+vU/GObstdrwrrU89vLuYxizKDVydD56d
	OTziezXFFTp0V4BQ==
Date: Thu, 21 Dec 2023 15:36:33 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20231221143630.GD14101@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Authentication-Results: smtp-out2.suse.de;
	none
Subject: [oss-security] New SMTP smuggling attack

Hi,

As if we did not have sufficient protocol vulnerability work short before
Christmas break this year, here is one more:

	https://sec-consult.com/blog/detail/smtp-smuggling-spoofing-e-mails-worldwide/

While it looks like "old stuff", this is new quality.

tldr: The end of "SMTP data phase" with "<CR><LF>.<CR><LF>" is not
consistently implemented everywhere (e.g. when leaving out <CR> or
inserting \0 or so) and could lead to one server passing it through and
the other processing it, leading to mail spoofing.

The security report it for some custom email servers, but at least
Postfix announced mitigation work already:

	https://www.mail-archive.com/postfix-users@postfix.org/msg100901.html

Ciao, Marcus
