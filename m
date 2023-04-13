Received: (qmail 7513 invoked by uid 550); 13 Apr 2023 12:52:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3726 invoked from network); 13 Apr 2023 09:15:50 -0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ayaya.dev; s=key1;
	t=1681377338;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ylQUD5RMPRkwnUW1JDRg4gS6VqLEnxdD4ifam6BrlBU=;
	b=VmE/6E2dZIdiAricSF+nXxhqT9tp2+XQHgNkn+jjhhz8hB43lms1Q9EVtcJIpRTZTVNsqD
	7wh5jNh3MuYEDcmbW0/GqbCy46/oGojzSL7nCNsnH6jgS7989PODYLafnHviDpGVsH1qep
	I0YQ7Qr0Xe6hiEfwkJxKAmAbmu+hWuY=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 13 Apr 2023 11:15:38 +0200
Message-Id: <CRVIITTTDAQ4.1S0X86S5D7TZD@sumire>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "alice" <alice@ayaya.dev>
To: <oss-security@lists.openwall.com>
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
In-Reply-To: <
 <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] ncurses fixes upstream

On Wed Apr 12, 2023 at 10:40 PM CEST, Jonathan Bar Or (JBO) wrote:
> Hello oss-security,
>
> Our team has worked with the maintainer of the ncurses library (used by s=
everal software packages in Linux) to fix several memory corruption vulnera=
bilities.
> They are now fixed at commit 20230408 - see details here (https://invisib=
le-island.net/ncurses/NEWS.html#index-t20230408)
> A CVE was assigned (CVE-2023-29491) - it's still under a "reserved" statu=
s.
>
> How can we ensure those fixes get deployed upstream, in major Linux distr=
ibutions?

having a patch that is possible to apply to ncurses would make this possibl=
e,
since otherwise it's not possible to patch anything without just updating t=
o the
latest ncurses snapshot.

that said,

- ncurses doesn't keep any git (or whatever) history anywhere (to my knowle=
dge),
  so i don't know where this would even come from

- as someone that uses the latest snapshots, 20230401 works, but 20230408 b=
reaks
  some applications like tmux (when clicking with the mouse, it just exits)=
. i
  assume this breakage is caused by these fixes in question, but i didn't d=
ebug
  it further.

> We've reached out to Arch, RedHat, Canonical and other popular distros in=
dependently.
>
> Thanks!
>                              JBO

