X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1938" "Tuesday" "9" "January" "2018" "17:02:44" "+0100" "=?UTF-8?B?TWljaGFsIEhydcWhZWNrw70=?=" "michal.hrusecky@nic.cz" "<67BB8FFF-4D14-4129-84CC-D21A38846436@nic.cz>" "46" "Re: [oss-security] Own on install. How grave it is?" "^Date:" nil nil "1" "2018010916:02:44" "[oss-security] Own on install. How grave it is?" (number mark "        michal.hruse Jan  9   46/1938  " thread-indent "\"Re: [oss-security] Own on install. How grave it is?\"\n") "<20180109134207.GI869@sivokote.iziade.m$>" ("<20180109134207.GI869@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5435 invoked by uid 550); 9 Jan 2018 16:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30043 invoked from network); 9 Jan 2018 16:11:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
	t=1515514258; bh=yByrb+2Z4JxOzkIoQPIY/QMsvkzgZ3A+0TDvCcmHjkA=;
	h=Date:To:From;
	b=W6uFjo0s+yCccmf/XFs2lc2/Iam/9HYWxBqGT2Kc7p9Wv/eluP33mGqerNugxcZQY
	 xLygScWcAx8A9zBV4RD37gdXO5uUPGs8vqcTaTbDz59wgFnUV4t4u+lCj3D6QcHSSr
	 wYYMuSc2kai6jXFXhT0OoGQL+Pso23H+QKvLLCjo=
User-Agent: K-9 Mail for Android
In-Reply-To: <20180109134207.GI869@sivokote.iziade.m$>
References: <20180109134207.GI869@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Message-ID: <67BB8FFF-4D14-4129-84CC-D21A38846436@nic.cz>
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
Date: Tue, 09 Jan 2018 17:02:44 +0100
From: =?UTF-8?Q?Michal_Hru=C5=A1eck=C3=BD?= <michal.hrusecky@nic.cz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Own on install. How grave it is?
To: oss-security@lists.openwall.com

On January 9, 2018 2:42:07 PM CET, Georgi Guninski <guninski@guninski.com> =
wrote:
>[don't know if this is ontopic. Not on the list so CC me].
>
>This is well known, haven't seen it discussed.
>
>In short doing clean install (factory defaults) has a window of
>opportunity when the device is vulnerable to a known network attack.
>
>It used to be common sense to reinstall after compromise (probably
>doesn't apply to the windows world where the antivirus takes care).
>
>All versions of windoze are affected by the SMB bug to my knowledge.
>Debian jessie (old stable) is vulnerable to malicious mirror attack.
>
>More of interest to me are devices where the installation media is
>fixed and can't be changed.
>
>This includes smartphones and wireless routers.
>
>Some smartphones might be vulnerable to wifi RCE (found by google?).
>Some wireless routers might be vulnerable to wifi RCE or
>default admin password attack over wifi.
>
>Internet of Things will make things worse (some NAS devices are
>affected).
>
>Shielding the device might not be solution since updates must be
>applied.

Hi,

we are manufacturers of Turris Omnia routers and our approach to minimise t=
hose attacks is that on factory reset, your wan and wifi is disconnected ti=
ll you setup your router. So your workflow after factory reset has to be co=
nnect localy via wire, setup your own password and then recommended steps a=
re sugested in this order - setup wan, update, setup wifi. In theory somebo=
dy can beat you on LAN, but you should have enough common sense to disconec=
t other computers if you are doing factory reset. You can also skip updates=
, but hey, you can setup passwordless wifi if you try hard enough (not easy=
 that easy in our setup) and make your pasword admin1234. We can't protect =
you from every mistake and there are usecases where it might make sense.


--=20
Sent from my Jolla device with K-9 Mail. Please excuse my brevity.
