Received: (qmail 13726 invoked by uid 550); 12 Apr 2022 17:37:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31917 invoked from network); 12 Apr 2022 17:03:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=from:to:cc
	:subject:references:date:message-id:mime-version:content-type
	:content-transfer-encoding; s=sasl; bh=bxYv4ifpDI7OniPvFN0F+VpC6
	ej+EVjOnQNtLUoSREU=; b=smzseeTPwWs2xVl0S205wHz5W7N6yOSq3DQzxgY8K
	++o0SMkgv0L6CeEpNCmOJy86IYqDaawrdlwNf4iCxit7iVeznZIOZi+YCYXlGkAe
	6tZx4pdQcXdRUByXcoteJOD55zbcYQ3nVThF8h1RhDoPbHKYQbMAb1M02xc6R73j
	2w=
From: Junio C Hamano <gitster@pobox.com>
To: oss-security@lists.openwall.com
Cc: git-security@googlegroups.com, =?utf-8?B?5L+e5pmo5Lic?=
 <ycdxsb@gmail.com>,
  prplr@github.com,  vdye@github.com
References: <nycvar.QRO.7.76.6.2204072234360.347@tvgsbejvaqbjf.bet>
Date: Tue, 12 Apr 2022 10:02:48 -0700
Message-ID: <xmqqo816b5fr.fsf@gitster.g>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
X-Pobox-Relay-ID: 
 61D21BD0-BA82-11EC-BB3A-CB998F0A682E-77302942!pb-smtp2.pobox.com
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] git v2.35.2 and friends for CVE-2022-24765

The Git project released versions v2.30.3, v2.31.2, v2.32.1,
v2.33.2, v2.34.2, and v2.35.2 today.  They are to address
CVE-2022-24765.  All supported platforms with multiple users are
affected in one way or another.

    https://lore.kernel.org/git/xmqqv8veb5i6.fsf@gitster.g/

We highly recommend to upgrade.

The addressed issue is:

* CVE-2022-24765:
  On multi-user machines, Git users might find themselves unexpectedly in
  a Git worktree, e.g. when there is a scratch space (`/scratch/`) intended
  for all users and another user created a repository in `/scratch/.git`.
  Merely having a Git-aware prompt that runs `git status` (or `git diff`)
  and navigating to a directory which is supposedly not a Git worktree, or
  opening such a directory in an editor or IDE such as VS Code or Atom, will
  potentially run commands defined by that other user via
  `/scratch/.git/config`.

Credit for finding the vulnerability goes to =E4=BF=9E=E6=99=A8=E4=B8=9C; c=
redit for fixing
it goes to Johannes Schindelin.
