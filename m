X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2248" "Monday" "12" "October" "2020" "21:41:39" "+0200" "Solar Designer" "solar@openwall.com" "<20201012194139.GA30753@openwall.com>" "51" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020101219:41:39" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        solar@openwa Oct 12   51/2248  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<87v9flhhj5.fsf@canidae.wired.pri>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" "<87v9flhhj5.fsf@canidae.wired.pri>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24301 invoked by uid 550); 12 Oct 2020 19:42:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24024 invoked from network); 12 Oct 2020 19:41:44 -0000
Message-ID: <20201012194139.GA30753@openwall.com>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com> <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org> <87v9flhhj5.fsf@canidae.wired.pri>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v9flhhj5.fsf@canidae.wired.pri>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 12 Oct 2020 21:41:39 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022
To: oss-security@lists.openwall.com

Hi,

A problem with Georgi's message that started this thread, besides its
overall tone, is that it singled out Debian.  In my experience, most
Unix-like distributions use insecure defaults like this.

On Thu, Oct 08, 2020 at 08:07:10AM +1100, Brian May wrote:
> Jeremy Stanley <fungi@yuggoth.org> writes:
> 
> > As a long-time Debian user myself, I agree that this default is
> > showing its age, and can represent a risk for operators who overlook
> > it.
> 
> Yes, I agree the default should be changed.

I also think the defaults should be changed, and not only on Debian.

Special cases like serving web pages do not justify insecure default
home directory permissions - rather, they're reasons to provide extra
setup instructions in web server packages, etc.

> Just note that there is a reasonable amount of software install
> instructions that assume umask is 022 and will install software with
> unusable permissions if it is not.

This is indeed a problem.  When building software manually (not
packaged) and wanting to install it on a system globally (e.g., in
/usr/local), a workaround is to use "(umask 022; make install)" - that
is, temporarily relax the umask to 022 just for that one command by
running it in a subshell.

RPM typically invokes "umask 022" for all(?) package build scripts,
including the %install section, which lets it build proper packages even
when run on a system with umask 077 even when the packaged software's
install scripts assume umask 022.

I think package install scripts should learn not to assume umask, or at
least not when installing software globally.  When installing to a
subdirectory of the user's home directory, it makes sense to honor the
user's umask, but those cases probably can't be recognized reliably.

It's a pity that software will just assume it's to be installed globally
(or with equivalent permissions), but the current reality is no better
where things break arbitrarily (e.g., some files mode 644, some 600)
when installing unprepared software with umask 077.

I think distros have to take the first step and change the default umask
to 077.  Until enough distros do, software maintainers won't have the
incentive to support that or won't even know about the problem.

Alexander
