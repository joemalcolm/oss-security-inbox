Received: (qmail 29726 invoked by uid 550); 19 May 2026 18:05:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15568 invoked from network); 19 May 2026 17:58:25 -0000
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.gnome.org E913C10993F00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gnome.org;
	s=default; t=1779213496;
	bh=SuFrBH05dkd4PDTE9Dt6SzKcOoG3QKuzvIYraw73xzs=;
	h=Date:From:To:Subject:From;
	b=DIurObWYE5SMQzdq7LP/4QhBovZ2QxhtIqQK/iRkyKyc8f1Nu0A6kjIYa2k6UjTBy
	 8RGI35+vRuDbSWi7P6Brf9HdUi5J45dRFhjensiTiGrYwST1GsmfYdsQ1ey4EvsmXQ
	 atfIq4nSGdvgL0FYdZCtRt6OkW295E+XC6FetKQk=
X-ME-Sender: <xms:tqQMauugLlv3-PEGpYO6Yxs7Zy0JSw_fmo7-qzIM6IXu_uVyNefX2g>
    <xme:tqQMauR5oLU9zSVZZMEFmAs4udQovfFQpdksIWlS2FfBSMlGmVDBspakn_7lK5WHa
    aFJVTwxkGNEQouGK3649KtpEIubjsl2zDcztuyC9edM8VwvIuiRmw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugedvgeduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucgfrhhlucfvnfffucdlvdefmdenucfjughrpefoggffhf
    fvkffutgesrgdtreerredttdenucfhrhhomhepfdfoihgthhgrvghlucevrghtrghniigr
    rhhofdcuoehmtggrthgrnhiirghrohesghhnohhmvgdrohhrgheqnecuggftrfgrthhtvg
    hrnhepvefgueelhedvfeefffduvedvtdevtdeitedvudejgeeutddufefgjedtjefhgedu
    necuffhomhgrihhnpehgnhhomhgvrdhorhhgpdhgihhthhhusgdrtghomhenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmtggrthgrnhiirghr
    ohdomhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthidqudekudehvdefiedtjedqvd
    ejuddufeejvddtqdhmtggrthgrnhiirghroheppehgnhhomhgvrdhorhhgsehinhhnvghr
    fhhotghushdrgiihiidpnhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouhhtpd
    hrtghpthhtoheplhgvihhghhduvdeflhhinhhugiesghhmrghilhdrtghomhdprhgtphht
    thhopehrrghvvghitheihedrshhunhesghhmrghilhdrtghomhdprhgtphhtthhopehgph
    hoohesghhnohhmvgdrohhrghdprhgtphhtthhopegtlhgvmhgvnhhtrdhlvghfvggsvhhr
    vgeslhhinhhugihmihhnthdrtghomhdprhgtphhtthhopehrvgguhhgrtheslhhinhhugi
    hnvghtiidruggvpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdho
    phgvnhifrghllhdrtghomhdprhgtphhtthhopehvkhgrrhgvhhesrhgvughhrghtrdgtoh
    hm
X-ME-Proxy: <xmx:tqQMagGh4WbvgTG_y3YGom_2TjO7vykDUJbJfgS7nAJ1zxe5zHA8pw>
    <xmx:tqQMaqDhU17csgN70VObRtEPZhw_sovORoXO2cuqhhESkZYR9ZA92g>
    <xmx:tqQMaoWloY1QjckZM2mAa9yWxSU1kNJyqJQPgyK2zoJqAN_8mmFeMA>
    <xmx:tqQMampXcsc2s4MZYbQOKj1iJhPWi4P1jDGnNLMpU3Kpu1dFFv3ouw>
    <xmx:tqQMasTPyptkkbjgE1zK3z-YlhaDi7pahiylWfrX5DzBSqPosdHSA6cc>
Feedback-ID: ie14e4b7f:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AqotbcDSF7e7
Date: Tue, 19 May 2026 12:56:37 -0500
From: "Michael Catanzaro" <mcatanzaro@gnome.org>
To: oss-security@lists.openwall.com
Message-Id: <864598ef-e8a0-49ac-a750-1456d8c9be2b@app.fastmail.com>
Content-Type: multipart/alternative;
 boundary=b9a4842fabd11129067b47fcd695e8c1a7bb43b6
Subject: [oss-security] Evince/Atril/Xreader command injection CVE-2026-46529

--b9a4842fabd11129067b47fcd695e8c1a7bb43b6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

CVE-2026-46529 is a command injection vulnerability in Evince, Atril, and X=
reader caused by missing quoting of shell-like input in ev_spawn() in ev-ap=
plication.c. It is fixed by:
 =E2=80=A2 Evince 48.2
 =E2=80=A2 Atril 1.28.4 and 1.26.3
 =E2=80=A2 Xreader 4.6.4 and 3.6.7
The fixes for the issue are public in all three projects' git repos [1] [2]=
 [3]. Distros, please start preparing updates immediately.

This bug also affects Papers [4], but it's probably not urgent to update Pa=
pers.

I'm doing a little experiment here: although the vulnerability itself is no=
w public because those commits are public and because this is a public mail=
ing list, I have nevertheless decided to keep the original issue reports an=
d CVE details private until Thursday, May 21, because they contain a workin=
g exploit developed by a LLM. Perhaps that's arguably stretching the rules =
of this mailing list slightly, but hopefully this is OK since the flaw and =
the fix are both public.

I know this is not a standard embargo strategy. And the date is also very s=
oon, leaving you not much time to react. I don't know if this was actually =
a good idea or not. Complaints welcome! My goal was to make it easy to prep=
are immediate distro updates without waiting for an embargo to end, while a=
lso not releasing the full exploit immediately. I expect people will surely=
 figure out how to abuse this vulnerability shortly after I send this mail,=
 but I'm hoping that attempts to do so will be initially less effective tha=
n what we'll release on Thursday.

[1] https://gitlab.gnome.org/GNOME/evince/-/commit/970c219e861a5fcc3e7b9e05=
bedf18cf0de39245
[2] https://github.com/mate-desktop/atril/commit/b989b7922a454ed81f8bb14786=
a958828513f576
[3] https://github.com/linuxmint/xreader/commit/50052eaa91c3c750c51c245799e=
3747495feeece
[4] https://gitlab.gnome.org/GNOME/papers/-/commit/1b82bf627b4d8b414a57b55a=
9095e6d361799d6c




--b9a4842fabd11129067b47fcd695e8c1a7bb43b6--
