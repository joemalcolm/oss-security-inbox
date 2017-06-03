X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1536" "Saturday" "3" "June" "2017" "10:08:23" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496498903.22395.3.camel@gmail.com>" "30" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "6" "2017060314:08:23" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ Jun  3   30/1536  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<20170603131919.GA18438@openwall.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "<20170530165015.GA4884@openwall.com>" "<06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>" "<1496493018.21640.5.camel@gmail.com>" "<20170603131919.GA18438@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32394 invoked by uid 550); 3 Jun 2017 14:08:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32321 invoked from network); 3 Jun 2017 14:08:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=sIcXdlkOjdPOlY6cAIUevMSH80C75SP2uukRWTWUl1Y=;
        b=afqy5PjORtzlheJxkPJM9SiqrrLrrrYk3U1QuYtz6URAI/G9+a0rfuWQJrJm22NcUU
         Be0IE9S2hs1mErnM3Muu4BUe9dUcOVeq+F/Yzgj9CII2x59kJ6ctZmQYt3ERHKWeQYfq
         y5hCWWgidJ+8i5aturuv/thlr0Ac1do/o1pGOmCXRC2OimlwReKg5RMWshYshT6JGo5y
         oIZU5HGS/mv81R9rhYprYHQoGhD8f7EtAhGaPK7eFo2KH24VWP9E9sJPKZ1SO2aXRqoz
         PGsHxcBeamcPJpqfzjTArExHS4vQ6XhKL99xcEg2eEoc36b3dfyI3aI7MgLMolegdlXE
         jZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sIcXdlkOjdPOlY6cAIUevMSH80C75SP2uukRWTWUl1Y=;
        b=j3AGI8Pe55TgD/zQKS6Sb1a3B34+glsB8P3Y4regg89TTy8G1ItmoT4VZUViXf5rfp
         gG0OgmK1HA7UR8OHMzboNFhDKMjdT73TigDVUFuWq9vCGN/Qb08JVOg4BUxMxBBg7Q0j
         IdfKvt1V4xLNv939Jsba3X21el/GoBrdOVC8+2sX8dyE+g0I5gYcP1C65TV2uhYito8U
         522zW7oXZ7+pvMOQBPYHNhMn2B6RxC03TgIEVKYgEOVAJ5um8Z9XFko3lgjJT3xChljG
         /GGyRNV0OGtKxnW2f38e9kZCpLSmzu4qppX3lV1Z2HA8SPsEYaeooBG/KsboRsTCs/IY
         y6LQ==
X-Gm-Message-State: AODbwcCDah12e9mUXJoC8f0cH3yydnDiXJgnGgzZ8yO9dJsNlyBfzAio
	/NEF56fWD89poI0C3foeKQ==
X-Received: by 10.107.134.160 with SMTP id q32mr5647018ioi.59.1496498909778;
        Sat, 03 Jun 2017 07:08:29 -0700 (PDT)
Message-ID: <1496498903.22395.3.camel@gmail.com>
In-Reply-To: <20170603131919.GA18438@openwall.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
	 <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
	 <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
	 <20170530165015.GA4884@openwall.com>
	 <06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>
	 <1496493018.21640.5.camel@gmail.com> <20170603131919.GA18438@openwall.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Sat, 03 Jun 2017 10:08:23 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

> Daniel, I think that's too much.

I can't magically guess when someone is or isn't acting on behalf of
their employer if they're not stating so and they're using a work email
address for work-related stuff by pushing the view of their employer.

I'm hardly the first person to note that and I don't buy into feigning
misunderstanding when that's how it's interpreted particularly when it's
common. I'm not going to post from daniel.micay@copperhead.co unless
it's on behalf of Copperhead because that's the impression that it gives
to many people, and I'm one of those people. Even if someone states they
aren't speaking for their employer, they're still speaking as an
employee if they do it from a work email address...

When people post from @google.com I similarly consider that to be a
statement from a Google employee. Not *on behalf of Google* but speaking
as an employee of Google? Definitely. If that's not the intention there
is an easy way to avoid that.

> I just ask that we please refrain from lengthy threads on each and
> ever
> such (non-)issue.  I will be pushing them from the (linux-)distros
> list
> to the public right away, if any more are brought to the private list.

Sure, can simply link back to this annoying discussion for any future
ones. I don't think it was completely unproductive though. And no I'm
not going to be civil if someone feels like telling me I don't
understand what verified / secure boot is but rather than definition
built around the limitations of their product's current limitations.
