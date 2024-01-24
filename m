Received: (qmail 30324 invoked by uid 550); 24 Jan 2024 07:40:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30306 invoked from network); 24 Jan 2024 07:40:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1706082157; bh=qdHS3N7QyJuAOw1O5u5w5xXWCIHpTC6A9TctO2PYEwE=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=JhjwLTQbS7lFSLAu2ClGd2hhoqTrUxzRW3OzvukwdYh8tsKuV2CDc7VW5LX8EMQ20
	 w0XboEvaOPtGvW/wp1PPJ/XGBS7a9peHjFG07tQFZbS4q3rDfDveUfbbGDuHbLbd52
	 jbV5b9e7XtheCHCQNQmb/c2rw4eYVV44fRO34bGNQAJ/4qEqtZh3GaZo3hlcu4Bew1
	 CdW1JrfQ/fqlXTQEZPSPPag0oObeM5HISeMkCkd+rH7FR3XJhPgNRduuYSswWfv5nu
	 FWUqPNNftMYIPSA9mQZkTOv4tI2oIsb5k/91OExAiyvYnXKffnVhEjYxjJL3LZndEy
	 KYlbUGdlr6ANg==
Original-Subject: Re: [oss-security] darkhttpd: timing attack and local leak of HTTP
 basic auth credentials
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Wed, 24 Jan 2024 08:42:35 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20240124084235.360eb42b.hanno@hboeck.de>
In-Reply-To: <Za-XWUEPml2pcATt@kasco.suse.de>
References: <Za-XWUEPml2pcATt@kasco.suse.de>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.40; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] darkhttpd: timing attack and local leak of HTTP
 basic auth credentials

On Tue, 23 Jan 2024 11:39:19 +0100
Matthias Gerstner <mgerstner@suse.de> wrote:

> The only way to configure the HTTP basic auth string in darkhttpd is
> to pass it via the `--auth` command line parameter. On Linux all local
> users can view the parameters of other programs running on the system.

I'd like to comment on that.
While "on Linux" *in most distros default settings* this is true, the
Linux Kernel actually has a mitigation for this since quite a while.

This is a feature that I believe was initially introduced by
grsecurity, but was lated ported as an option to the mainline kernel.
/proc can be mounted with the hidepid option (ideally set to hidepid=3D2)
[1], with it enabled users cannot see processes of other users.

Unfortunately, this has not been widely applied by linux distributions.
There is a website by redhat that explicitly discourages its use [2].

it hints to some problems that could show up because daemons could not
access information about the clients accessing them. But that sounds
very nonspecific and they don't reference any examples, so it's hard to
tell what exactly these problems would be.

Furthermore, they point out that the same information can be queried
via systemd without any access control. That sounds more like a weakness
in systemd that should be fixed than an issue with hidepid.

I think it would be desirable that Linux distributions start using
hidepid and mitigate the whole class of bugs like the one mentioned
above.

[1] https://www.kernel.org/doc/html/latest/filesystems/proc.html
[2] https://access.redhat.com/solutions/6704531
--=20
Hanno B=C3=B6ck
https://hboeck.de/
