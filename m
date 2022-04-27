Received: (qmail 1063 invoked by uid 550); 27 Apr 2022 07:46:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1045 invoked from network); 27 Apr 2022 07:46:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1651045555; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=+PfSon/k+UlL1umUV8OmnkX4hIcyFfvQrhlAKFDnMvM=;
	b=sN0fhLGm2XRDiIaafba2ZOdU/kGwLB6nyAwvC1bJN4QUkVPL/Rl0IeNqOPLkdoO+qhIq4l
	F2lb577fal7wBqPPkY6FkD0paDzNy/5s3J/dKKgxH1TlEviBSbNQoG3IvH2f1qmokfaXol
	8BD2gpV/If/h+crihgYYuiA3mHkDFP8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1651045555;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=+PfSon/k+UlL1umUV8OmnkX4hIcyFfvQrhlAKFDnMvM=;
	b=nf3u98O/5uLtKwXLU4WVIQ0ocGVsXtWXDlOKgjzl0a0PZMWoxodRyDJWeAc9r83exXVuPc
	WqRttMQPgTVgYwCg==
Date: Wed, 27 Apr 2022 09:45:54 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20220427074550.GL28706@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Ivo_Totev=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] CVE-2022-27239: cifs-utils mount.cifs buffer overflow in ip parameter

Hi,

A buffer overflow in mounts.cifs commandline parameter ip= handling
was just fixed/published.

CVE-2022-27239

https://bugzilla.suse.com/show_bug.cgi?id=1197216
https://github.com/piastry/cifs-utils/pull/7
https://github.com/piastry/cifs-utils/pull/7/commits/955fb147e97a6a74e1aaa65766de91e2c1479765

(mounts.cifs is usually setuid-root)

This was reported by Jeffrey Bencteux <jbe@improsec.com> to samba security.

Both -fstack-protector and -D_FORTIFY_SOURCE=2 overflow protections are catching it.

Ciao, Marcus
