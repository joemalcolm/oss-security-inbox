Received: (qmail 18399 invoked by uid 550); 21 May 2026 16:11:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22108 invoked from network); 21 May 2026 13:34:37 -0000
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.gnome.org 48DDC109681ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gnome.org;
	s=default; t=1779370467;
	bh=BGqp1kSsQ7x+W8S+zSxtkwLPNRZ3OkCt+bnQJsAW+c8=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=zaQ4bkc2dyUpmRp0rtk1lnAmzW0r+2l+KEa0w08fO1ECQn3sFSmnPcSllf5BfvU/f
	 og20f2jCOj4pSsk3zQMq4qQ/r+sTSLaCTSR20e3yDTJLF5zrmxLZkZP2SuMD/Llzfv
	 kmmzmu4t2BdEh/NV8/JBq65SFT+t78RUlbWF+NXc=
X-ME-Sender: <xms:4gkPaqAaAIyiERK95ApJv3LjPQTVqyA_Lp0XAe5LchoHMYSx9_cyTA>
    <xme:4gkPavXpBdtnranfceyy4APJ6NQOCRJgCeXewoHp999Tv0ibx7Ypz5uZoKAJaodKE
    xneBx4t_ydI_CPIll10ppLpNUgIEygZeXrePwjVGK2P2FWDqyGhv2I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugeejieegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucgfrhhlucfvnfffucdlvdefmdenucfjughrpefoggffhf
    fvkfgjfhfutgesrgdtreerredttdenucfhrhhomhepfdfoihgthhgrvghlucevrghtrghn
    iigrrhhofdcuoehmtggrthgrnhiirghrohesghhnohhmvgdrohhrgheqnecuggftrfgrth
    htvghrnhepteehleehkeeuiefgkefhueejfeeukefgtdevgfeghffgvdelleegvdeitedv
    ffeknecuffhomhgrihhnpehgihhthhhusgdrtghomhdpghhnohhmvgdrohhrghenucevlh
    hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmtggrthgrnhii
    rghrohdomhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthidqudekudehvdefiedtje
    dqvdejuddufeejvddtqdhmtggrthgrnhiirghroheppehgnhhomhgvrdhorhhgsehinhhn
    vghrfhhotghushdrgiihiidpnhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouh
    htpdhrtghpthhtoheplhgvihhghhduvdeflhhinhhugiesghhmrghilhdrtghomhdprhgt
    phhtthhopehrrghvvghitheihedrshhunhesghhmrghilhdrtghomhdprhgtphhtthhope
    hgphhoohesghhnohhmvgdrohhrghdprhgtphhtthhopegtlhgvmhgvnhhtrdhlvghfvggs
    vhhrvgeslhhinhhugihmihhnthdrtghomhdprhgtphhtthhopehrvgguhhgrtheslhhinh
    hugihnvghtiidruggvpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhs
    rdhophgvnhifrghllhdrtghomhdprhgtphhtthhopehvkhgrrhgvhhesrhgvughhrghtrd
    gtohhm
X-ME-Proxy: <xmx:4gkPai6EIbofjrQZTJSpKDcaqVjmnReMj2pqiu5BIPczmzZ8LVki0Q>
    <xmx:4gkPaskJHqorfu4RR3FUfC-Z52cWevBZ7eVuixlM22vxorohR0KMQg>
    <xmx:4gkPavqUlQYpRLb3cHtB3d_FETStxV2yDu1uz831YD7S0yQD0oFMTg>
    <xmx:4gkPajtqTqahOrUGUvuHnWc01kz4zgr8fPKI076iuuyWTgL269KGOg>
    <xmx:4gkPasGYEs_Qlp9i0Bwl7c1Y7dk9ccElUEM6ZGsMrj2i0rj9UC7yEDbq>
Feedback-ID: ie14e4b7f:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AqotbcDSF7e7
Date: Thu, 21 May 2026 08:34:05 -0500
From: "Michael Catanzaro" <mcatanzaro@gnome.org>
To: oss-security@lists.openwall.com
Message-Id: <ce81312b-99e1-4305-a816-e74b2bd1ffd5@app.fastmail.com>
In-Reply-To: <864598ef-e8a0-49ac-a750-1456d8c9be2b@app.fastmail.com>
References: <864598ef-e8a0-49ac-a750-1456d8c9be2b@app.fastmail.com>
Content-Type: multipart/alternative;
 boundary=4f6bd41928ab569fce28cb9be2fc0a35001a7d60
Subject: [oss-security] Re: Evince/Atril/Xreader command injection CVE-2026-46529

--4f6bd41928ab569fce28cb9be2fc0a35001a7d60
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

Hello,

The full reports for this vulnerability are available now:

Atril: https://github.com/mate-desktop/atril/security/advisories/GHSA-vgv2-m826-8f6f
Evince: https://gitlab.gnome.org/GNOME/evince/-/work_items/2153

They contain a script for building malicious polyglot PDFs that are simultaneously both valid PDF files and also valid ELF binaries. When the user opens the PDF in the PDF viewer and clicks on a malicious link embedded in the PDF, the PDF abuses the command injection vulnerability to load itself as a GTK module using the `--gtk-module` command line flag. It can then execute arbitrary code via its library constructor. That flag was removed in GTK 4, which is why the vulnerability is much less serious for Papers than it is for Evince, Atril, and Xreader.

The provided script requires that the attacker predict the absolute path that the malicious PDF file will be saved to, generally /home/username/Downloads/attacker_chosen_name.pdf. However, in a follow-up comment on the Atril advisory, the reporter says that it's possible to modify the script to avoid the requirement to predict the file path.

My takeaway from this incident: AI tools are going to find a lot of vulnerabilities in the short term. A human inspecting this code should have been able to find the command injection vulnerability, but that requires time and effort, so nobody did. Running an AI and telling it to inspect the code is much easier. We're probably in for a rough time in the short term. But in the long term, we are going to be much more secure than we were before, so this is good.

Also, the AI is able to take an investigation much farther than a human would be willing to, crafting a creative working exploit when a human would have almost certainly just stopped after finding the vulnerability. This is unusual and dangerous, but the silver lining is it helps us appreciate the severity of the issue. It's often hard to assess how bad a vulnerability is. If not for the weaponized exploit, I would have thought this bug was not very scary and treated it as not a big deal. But the AI was clever and found a way to make it extremely scary! I don't know how much prompting the human reporter had to do to get this result.

Michael

--4f6bd41928ab569fce28cb9be2fc0a35001a7d60--
