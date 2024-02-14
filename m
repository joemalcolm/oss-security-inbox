Received: (qmail 10039 invoked by uid 550); 14 Feb 2024 15:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10019 invoked from network); 14 Feb 2024 15:41:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-ID:Content-Description;
	bh=pDYFX6I0U3Lqty+awqo25hDdFBSjAWkq7q+3SJVDbGQ=; b=TOs+xXs3B9KVALrSTuT+D85m0h
	AaAKL/OSnmT1YcLyv3hQ6rd7rtsjvr7ErW+7MW4pU3jVLcpyWCbI3MqjhmciDJOqNu+o+F46BDa9t
	5nFl9vs9IbnpinO4Z5puP0uHnQzg1JaLyozPeBmoztIh5N4Eb89OTRHmjMaN15XIKRMmT+hx+5aMB
	tkR6Z89AyTAZNn50mw+s34Z5rgpPlQ6DB4GnB065NUOvvPBYeWRS9j42IP905R/b1IEID63/iek1O
	OSlAHA0GaTSlkQIaO893q9WeNHibKrsYashfTKS4amE0C98x762i3AA1UNBXicZScaK3+N96fNxp4
	fN3ciJDg==;
Date: Wed, 14 Feb 2024 16:43:36 +0100
From: Yves-Alexis Perez <corsac@debian.org>
To: Mate Kukri <mate.kukri@canonical.com>
Cc: oss-security@lists.openwall.com
Message-ID: <ZczfqLnI23SC-A7Q@corsac.net>
Mail-Followup-To: Mate Kukri <mate.kukri@canonical.com>,
	oss-security@lists.openwall.com
References: <CAAfJHtpMWco6y_wRRzrgQfJZmwzsMG6P8D5FFWLMAOihuc2dZw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAAfJHtpMWco6y_wRRzrgQfJZmwzsMG6P8D5FFWLMAOihuc2dZw@mail.gmail.com>
X-Debian-User: corsac
Subject: Re: [oss-security] Secure Boot bypass in EDK2 based Virtual Machine
 firmware

On Wed, Feb 14, 2024 at 02:40:43PM +0000, Mate Kukri wrote:
> Hello,
>=20
> We have identified a vulnerability resulting from an insecure default
> configuration of OVMF/AAVMF
> and similar firmware as used in Ubuntu's edk2 package, the firmware
> used by LXD, and potentially other similar software.
>=20
> Said EDK2 based firmwares implement UEFI Secure Boot functionality but
> also contain a copy of the UEFI Shell,
> this gives an OS resident attacker (without physical access or
> pseudo-physical access) the ability to execute arbitrary
> code at system level, and thus the ability bypass UEFI Secure Boot.

Hi Mate,

I'm not sure if I understand everything correctly, but if UEFI Secure
Boot is enabled, shouldn't the shell.efi binary need to be explicitely
signed in order for it to be correctly loaded? It doesnt look like a
good idea to sign shell.efi on a production platform, but for test
purposes it might be relevant.

Regards,
--=20
Yves-Alexis Perez
