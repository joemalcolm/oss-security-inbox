X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1340" "Monday" "19" "October" "2020" "10:50:22" "-0700" "Ian Zimmerman" "itz@very.loosely.org" "<20201019175022.phn5sbd2ms7ocq5l@moyka>" "28" "[oss-security] Re: major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020101917:50:22" "[oss-security] Re: major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       itz@very.loo Oct 19   28/1340  " thread-indent "\"[oss-security] Re: major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201019112249.GA14339@openwall.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005204820.GA8410@openwall.com>" "<51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net>" "<20201019112249.GA14339@openwall.com>") nil nil nil nil nil nil nil "[oss-security] Re: major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5955 invoked by uid 550); 19 Oct 2020 17:50:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5917 invoked from network); 19 Oct 2020 17:50:36 -0000
Date: Mon, 19 Oct 2020 10:50:22 -0700
From: Ian Zimmerman <itz@very.loosely.org>
To: oss-security@lists.openwall.com
Message-ID: <20201019175022.phn5sbd2ms7ocq5l@moyka>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005204820.GA8410@openwall.com>
 <51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net>
 <20201019112249.GA14339@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019112249.GA14339@openwall.com>
Subject: [oss-security] Re: major changes if gnu/linux dominates the desktop and/or mobile
 market?

On 2020-10-19 13:22, Solar Designer wrote:

> Yes, the most difficult part with securing a desktop system is to keep
> it conveniently usable.  I think it is possible to isolate the desktop
> environment from user programs without inconveniencing the user.  As
> to isolation between the user's programs, yes, that becomes visible to
> the user and would require some training on how to explicitly transfer
> data between the programs when needed.  Perhaps there are ways to make
> this intuitive, e.g. drag-and-drop.

I sure hope that doesn't become the _only_ way, or I'll have some dark
thoughts about the person who proposed it ;-) In any case I'll probably
be dead by the time any of this is implemented, so maybe he has no
worries.

I transfer between XA_PRIMARY and XA_SECONDARY using the Emacs
*scratch* buffer as a way station. The only way I'm even physically able
to drag is using pointer keys, ie. keypad Insert followed by keypad arrow
keys followed by keypad Delete. And no I don't fit any of the predefined
"disabled" pigeonholes so various accessibility kits do nothing for me.

XWindow and desktops based on it have many flaws including security
ones, but it is flexible enough to be usable by "different" folks like
me. Which of the modern replacements can say that, or even has
actionable plans to address that?

-- 
Ian
