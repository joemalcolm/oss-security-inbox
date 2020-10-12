X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["512" "Monday" "12" "October" "2020" "13:31:08" "-0700" "Kurt H Maier" "khm@sciops.net" "<20201012203108.GA25626@wopr>" "11" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020101220:31:08" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        khm@sciops.n Oct 12   11/512   " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<20201012194139.GA30753@openwall.com>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" "<87v9flhhj5.fsf@canidae.wired.pri>" "<20201012194139.GA30753@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3976 invoked by uid 550); 12 Oct 2020 20:31:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3929 invoked from network); 12 Oct 2020 20:31:22 -0000
Message-ID: <20201012203108.GA25626@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
 <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
 <87v9flhhj5.fsf@canidae.wired.pri>
 <20201012194139.GA30753@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201012194139.GA30753@openwall.com>
Date: Mon, 12 Oct 2020 13:31:08 -0700
From: Kurt H Maier <khm@sciops.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022
To: oss-security@lists.openwall.com

On Mon, Oct 12, 2020 at 09:41:39PM +0200, Solar Designer wrote:
> I also think the defaults should be changed, and not only on Debian.

This is just kicking the can down the road.  X years ago people
complained about oppressive defaults.  X years from now these defaults
will also be insufficient.   We could save a lot of treadmill labor
dollars by just admitting that global filesystem namespaces are a
mistake, but the sunk cost fallacy is preventing this.  It's the same
story as SETUID all over again.

khm
