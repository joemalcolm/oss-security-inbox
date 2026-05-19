Received: (qmail 5317 invoked by uid 550); 19 May 2026 12:27:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5295 invoked from network); 19 May 2026 12:27:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1779193624; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pI+2TfGINrngnVC34FytqVbIq88IdFddHj/9QGX290c=;
	b=DhKqDuuOfwznLeTtK3e6lwu7Kdb1RVz6ymGViJM9LjOceqC1O/qPhfXx7fciFYrFXtz8Px
	8iDshd3bARvgxKl91soOBh+iIzn06bdsURFiSTsd11GdrKp8qzJLrBVZN4nXv5C9oPluuC
	TugmtjRbegA9rhoLjQ4k9IBTl73ad+Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1779193624;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pI+2TfGINrngnVC34FytqVbIq88IdFddHj/9QGX290c=;
	b=1lZGxxPmsNNMvC6+PcfpogLeh/3AFA9pzPhpvq5mQN0t3Vog0MtrGsIOuG5yCl06aXrKK8
	LFWLZLKW8+z92TBA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1779193624; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pI+2TfGINrngnVC34FytqVbIq88IdFddHj/9QGX290c=;
	b=DhKqDuuOfwznLeTtK3e6lwu7Kdb1RVz6ymGViJM9LjOceqC1O/qPhfXx7fciFYrFXtz8Px
	8iDshd3bARvgxKl91soOBh+iIzn06bdsURFiSTsd11GdrKp8qzJLrBVZN4nXv5C9oPluuC
	TugmtjRbegA9rhoLjQ4k9IBTl73ad+Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1779193624;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pI+2TfGINrngnVC34FytqVbIq88IdFddHj/9QGX290c=;
	b=1lZGxxPmsNNMvC6+PcfpogLeh/3AFA9pzPhpvq5mQN0t3Vog0MtrGsIOuG5yCl06aXrKK8
	LFWLZLKW8+z92TBA==
Date: Tue, 19 May 2026 12:27:03 +0000
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <agxXF1J53iSJIrP6@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
X-Spam-Flag: NO
X-Spam-Score: -4.30
X-Spam-Level: 
Subject: [oss-security] Fixed: local root exploit in haveged, fixed in 1.9.21, CVE-2026-41054

Hi,

If you are using haveged, todays release fixes a local root exploit.

https://github.com/jirka-h/haveged/releases

Release 1.9.21 — Security fix for CVE-2026-41054

Fix privilege escalation via command socket (CVE-2026-41054) - the uid
check sent a NAK to non-root callers but did not exit the function,
allowing unprivileged local users to send commands to the root-running
daemon via the abstract UNIX socket.

Problem was found by Gemini Pro, operated by Dirk Mueller of SUSE.

https://bugzilla.suse.com/show_bug.cgi?id=1264086

The bug was added in 1.9.3.

Ciao, Marcus
-- 
Marcus Meissner (he/him), Distinguished Engineer / Senior Project Manager Security
SUSE Software Solutions Germany GmbH, Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, HRB 36809, AG Nuernberg
