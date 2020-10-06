X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1293" "Wednesday" "7" "October" "2020" "08:00:05" "+1100" "Brian May" "brian@linuxpenguins.xyz" "<871ribhxyi.fsf@canidae.wired.pri>" "28" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100621:00:05" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       brian@linuxp Oct  7   28/1293  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201006083708.GA14390@kroah.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005124358.GA806250@kroah.com>" "<CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>" "<20201006083708.GA14390@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23800 invoked by uid 550); 6 Oct 2020 21:00:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23782 invoked from network); 6 Oct 2020 21:00:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-type:content-type:mime-version:message-id:date:date
	:references:in-reply-to:subject:subject:from:from:received
	:received:received:received; s=dkim20160331; t=1602018011; x=
	1603832412; bh=KPPop4PEu23Fu4X9ruLDlEQ3UQVg0uu0KahCYNk3BMk=; b=e
	Yu3PnIx9b+fr8Ho6ZLU4nhUvDNlIoccgyQ/8UeLRE8Dp6wHP9fehf4HVpnyEaKeq
	FGoUICMUOl9OvhLwWH6jORpNr/ZhcOy0kKNYTnyadKTR51BlGWetNScgJtYhduhS
	VgV9q1FR6aE7ohTrP2gT/eaCQ5QF3mgrJonkt41LY3/eCxeRnSoT8yqiMEIRVXqW
	IqT/n0m2AXcGr0anXKCbzU618dC8NIS4Ohf/oEcTuK3Fz3P/mWnt+aBiMcLXvn/R
	Nm4WVer/t8SEvZP8sfN0kGdL6j4rR2MeVebga/3A/q/dDw95BdNgOFmqFosLiLgc
	wlsgTR2zWzY7E0acgU56rsi7Sci6fA5fKM834QC/HaYsv4brt3xzsqz5Hrbp4bnU
	OObt+TK81d9dw80Wx+OTHrKkPz1wiYFMHKv3jbTb2ilH8KxkWSmWSTr2eymWKIit
	QOb0H9iaBdh+/DFWG63ticKuuDmG0CvEPd+9GhOt0BD0opqJCyhTw/hnZdBb/sl2
	k715dL4Re6fhFaHnGCNkle5Pkm/qSsevchooPXaUKxiuQIDzVa+DHMbce1Vkaanm
	TgxLUf/JTZwQB5iO4eEcBfkgXE0skEWi6rzD0hNPc4cO9QKo8vGAEjcG3GKdFe8n
	fDTYgjC9BozK8tzGjJM72TLxwS+fRpey8LBQ+r8HMs=
X-Virus-Scanned: amavisd-new at mykolab.com
From: Brian May <brian@linuxpenguins.xyz>
To: oss-security@lists.openwall.com
In-Reply-To: <20201006083708.GA14390@kroah.com>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com> <20201005124358.GA806250@kroah.com> <CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com> <20201006083708.GA14390@kroah.com>
Date: Wed, 07 Oct 2020 08:00:05 +1100
Message-ID: <871ribhxyi.fsf@canidae.wired.pri>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?

Greg KH <greg@kroah.com> writes:

>> https://www.theregister.com/2015/06/17/debian_chromium_hubbub/
>> Chrome, Debian Linux, and the secret binary blob download riddle
>> Browser snuck proprietary voice-snoop code into distro
>
> I don't understand the question here, that was something over 5 years
> ago.  How is that relevant for "mobile devices" that run Linux today?

That link looks like a once of issue that Debian had with the
distribution of Chromium. Which was probably fixed years ago.

More generally, in a typical Android install, there is closed source
software - drivers, firmware, Google APIs, Google Play. Before you even
get to installing closed source apps from Google Play.

These are a concern from a security point of view because you have to
trust the device manufacturer / Google with the security aspects of such
code, and there is no possibility of somebody else auditing the code
because the source code is not available.

Android devices typically require a forked version of the Linux kernel.
I believe they are slowly moving to reduce the changes required by
merging them mainline, but not sure how that is progressing right now.
Otherwise, I imagine this might have security concerns too.
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
