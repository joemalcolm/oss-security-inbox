X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1633" "Monday" "12" "October" "2020" "21:36:28" "-0700" "Russ Allbery" "eagle@eyrie.org" "<87wnzu91yr.fsf@hope.eyrie.org>" "36" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020101304:36:28" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        eagle@eyrie. Oct 12   36/1633  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<871ri3p2l4.fsf@canidae.wired.pri>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" "<87v9flhhj5.fsf@canidae.wired.pri>" "<20201012194139.GA30753@openwall.com>" "<20201012203108.GA25626@wopr>" "<CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>" "<871ri3p2l4.fsf@canidae.wired.pri>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3952 invoked by uid 550); 13 Oct 2020 04:36:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3928 invoked from network); 13 Oct 2020 04:36:41 -0000
In-Reply-To: <871ri3p2l4.fsf@canidae.wired.pri> (Brian May's message of "Tue,
	13 Oct 2020 08:16:23 +1100")
Organization: The Eyrie
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
	<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
	<87v9flhhj5.fsf@canidae.wired.pri>
	<20201012194139.GA30753@openwall.com> <20201012203108.GA25626@wopr>
	<CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>
	<871ri3p2l4.fsf@canidae.wired.pri>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
Message-ID: <87wnzu91yr.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Date: Mon, 12 Oct 2020 21:36:28 -0700
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022
To: oss-security@lists.openwall.com

Brian May <brian@linuxpenguins.xyz> writes:
> Jeffrey Walton <noloader@gmail.com> writes:

>> [...] like making /home/loser/www available to other users.

> Does anybody even do this anymore?

Yes, I'm still seeing this pattern in the academic world.  In general,
shared file systems and an expectation of a generous umask are still very
common in the academic and scientific world, where people routinely work
collaboratively on large data sets and share snippets of code and data
frequently.

> Once upon a time, a shared Unix system account come with an implied web
> account which you could use to publish files and create your own
> website. But I cannot personally think of any examples where this still
> happens. websystems and shell accounts are generally stored on distinct
> and independent systems.

I personally still maintain my web pages this way, although I'm not a good
example, of course, and it's on my list to change.  :)  But I have also
still seen this pattern in scientific work.  There's built-in support in
Apache still.

> Plus even if I was going to implement such a system today, I might
> seriously consider using - say "/web/loser" instead. Although this might
> have implications if quotas are important. Or maybe something that bind
> mounts /home/loser/www to /web/loser, that way the web software doesn't
> need access to /home/loser.

Yes, indeed.  It's certainly not an argument against changing the
defaults; a small amount of additional user work to actively choose to
share something is a better default approach.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
