Received: (qmail 9888 invoked by uid 550); 14 Jul 2022 00:21:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32585 invoked from network); 14 Jul 2022 00:13:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=from:to
	:subject:cc:date:message-id:mime-version:content-type
	:content-transfer-encoding; s=sasl; bh=/jAcSP/0pIXSgB5agzvzR6tRB
	sPAQ5QfbUZYXenDVt4=; b=GR7BSIV/ZpFt1vMc0CNpQ1EJFx96r32xxDyLeZOL2
	Kr7pmf01xZQc7P3HJ0fCfN2chUG+kBpNdNnJ19Q6hj7zDeZu+J2FSd3YggqzkX9W
	FLC38rjVD57J2aEIQ4SoxGMvgSryhdZ2iRuUpIKzTtzQgzQIU+6wjWTXcJSYn89J
	7A=
From: Junio C Hamano <junio@pobox.com>
To: oss-security@lists.openwall.com
cc: git-security@googlegroups.com,
    ycdxsb <ycdxsb@gmail.com>, Carlo Marcelo Arenas =?utf-8?Q?Bel=C3=B3n?=
 <carenas@gmail.com>,
    Johannes Schindelin <johannes.schindelin@gmx.de>
Date: Wed, 13 Jul 2022 17:13:18 -0700
Message-ID: <xmqqh73k8sbl.fsf@gitster.g>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
X-Pobox-Relay-ID: 
 C40C71B8-0309-11ED-9024-CB998F0A682E-77302942!pb-smtp2.pobox.com
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Git v2.37.1 and friends for CVE-2022-29187

The Git project released new versions on July 12th, 2022, addressing
CVE-2022-29187.  We highly recommend to upgrade to one of these fixed
versions:

  v2.30.5 v2.31.4 v2.32.3 v2.33.4 v2.34.4 v2.35.4 v2.36.2 v2.37.1

If you are on the unreleased development track, the same fix is
already included, so you do not have to do anything.

https://lore.kernel.org/git/xmqqv8s2fefi.fsf@gitster.g/


This fix contained in these releases are minor updates for the
changes that went into Git 2.30.3 and 2.30.4, addressing
CVE-2022-29187.

 * The safety check that verifies a safe ownership of the Git
   worktree is now extended to also cover the ownership of the Git
   directory (and the `.git` file, if there is any).

Credit for finding and fixing the problem goes to Carlo Marcelo
Arenas Bel=C3=B3n and Johannes Schindelin.

Thanks.

