X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1109" "Tuesday" "13" "October" "2020" "08:16:23" "+1100" "Brian May" "brian@linuxpenguins.xyz" "<871ri3p2l4.fsf@canidae.wired.pri>" "25" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020101221:16:23" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        brian@linuxp Oct 13   25/1109  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" "<87v9flhhj5.fsf@canidae.wired.pri>" "<20201012194139.GA30753@openwall.com>" "<20201012203108.GA25626@wopr>" "<CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1561 invoked by uid 550); 12 Oct 2020 21:16:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1540 invoked from network); 12 Oct 2020 21:16:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-type:content-type:mime-version:message-id:date:date
	:references:in-reply-to:subject:subject:from:from:received
	:received:received:received; s=dkim20160331; t=1602537390; x=
	1604351791; bh=arXVfUfhkmbFPA1Ox+0LI+uNVzNbkivQazSunb9RawA=; b=U
	loMA6h9lbEWfGhqesw4jBvr7pRzMpe4YxNafAOsOsbj6L2OH8J5OQgXlwtGTSpS0
	z3kRbX1GrHIl1FjRmrhmfM3KWKCtiBm1drmpl/5a9NTW4PhRCxtarAuT9tC8gKL8
	bXAy3rPnSyO8fhw23WujlyZvwyKGGVhfY3n9Mzc/QItPiwQoO/XOLLxE1EC/2q2Q
	SG4UjqLXH2J4f5U61bq0mTmasFRTpMZ1/lllXR8waSKvF+U5WXjPu/2/7ZDrGNHW
	g/bu8YpZk0NoVIjSBDBVG4Ihe8xGxvi9nMq5F8Vzr8maVOwJBeI5ru/NoabCxxWs
	Jjhm4FMDgn+QVvcjU8NbZOL7qvvQwnFuw6P2OfoPQRolOyTj4UH0W+2qDXOBYSDW
	iz7JEDT869evH37uGmdthuuApbUcsFBK9dLlSmPp7N5FcT3uTqj9ZyEGiwDHrKmy
	nG7X9w3mtV4Xi5qfUm762SODUdHEfexdsjLXM6zecJ8oj15XpkQXqZI7kbqn8uXf
	AqrcQDZYajdxyV2DZVVwJA91mgNFO2jd9XL7xxboaLBkvop+eKcCnQmKXXAYrHiq
	cevNlXnc6FHO5ZdRZPVT8CWBzpyNJ8bDsPlkxvm+etP164KD9JADfMYAUntj/Irc
	Tsp0ca5LITowXkJHfL5Fn9JpEfhwbXlSCaETa6P9Zg=
X-Virus-Scanned: amavisd-new at mykolab.com
In-Reply-To: <CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com> <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org> <87v9flhhj5.fsf@canidae.wired.pri> <20201012194139.GA30753@openwall.com> <20201012203108.GA25626@wopr> <CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>
Message-ID: <871ri3p2l4.fsf@canidae.wired.pri>
MIME-Version: 1.0
Content-Type: text/plain
Date: Tue, 13 Oct 2020 08:16:23 +1100
From: Brian May <brian@linuxpenguins.xyz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022
To: oss-security@lists.openwall.com

Jeffrey Walton <noloader@gmail.com> writes:

> [...] like making /home/loser/www available to other users.

Does anybody even do this anymore?

Once upon a time, a shared Unix system account come with an implied web
account which you could use to publish files and create your own
website. But I cannot personally think of any examples where this still
happens. websystems and shell accounts are generally stored on distinct
and independent systems.

Plus even if I was going to implement such a system today, I might
seriously consider using - say "/web/loser" instead. Although this might
have implications if quotas are important. Or maybe something that bind
mounts /home/loser/www to /web/loser, that way the web software doesn't
need access to /home/loser.

Even shared systems - while still around and still very important (HPC
comes to mind) - are a lot less common then they use to be. Most Linux
installs are private non-shared systems. Which I suspect explains why
there isn't a more pressure to fix the default umask issue.
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
