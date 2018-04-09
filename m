X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1308" "Monday" "9" "April" "2018" "10:11:05" "-0700" "Ian Zimmerman" "itz@very.loosely.org" "<20180409171105.wexxnmf6fwgzeur7@matica.foolinux.mooo.com>" "32" "[oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018040917:11:05" "[oss-security] Re: Terminal Control Chars" (number mark "U       itz@very.loo Apr  9   32/1308  " thread-indent "\"[oss-security] Re: Terminal Control Chars\"\n") "<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32206 invoked by uid 550); 9 Apr 2018 17:11:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32165 invoked from network); 9 Apr 2018 17:11:26 -0000
Date: Mon, 9 Apr 2018 10:11:05 -0700
From: Ian Zimmerman <itz@very.loosely.org>
To: oss-security@lists.openwall.com
Message-ID: <20180409171105.wexxnmf6fwgzeur7@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
X-Loosely-Listed: yes
User-Agent: NeoMutt/20170707-dirty (1.8.3)
Subject: [oss-security] Re: Terminal Control Chars

On 2018-03-05 17:50, up201407890@alunos.dcc.fc.up.pt wrote:

> When pasting characters into several terminal emulators, control
> characters are allowed.  This turns to be a security problem, due to
> the fact that when pasting these characters into terminal text
> editors, such as vi/vim, emacs, nano, etc., remote code execution is
> possible.
> 
> This is supposed to be fixed in recent versions of VTE [3], which
> means VTE-based terminal emulators should be safe, but the problem is
> that most distros are shipping older versions and remain vulnerable.
> 
> Here's a list of terminal emulators I tested this where it
> worked. Some came by default in my distro (debian), others were
> installed via apt-get. This should also work on other distros:

[...]
> urxvt
[...]

> Please, update VTE and check if the below still works. For the others
> that aren't based on VTE, CVEs should be assigned to each of them. Can
> someone help me figure out which ones are based on VTE and those that
> aren't?

As far as I can see, urxvt (aka rxvt-unicode) does not use vte.

-- 
Please don't Cc: me privately on mailing lists and Usenet,
if you also post the followup to the list or newsgroup.
To reply privately _only_ on Usenet and on broken lists
which rewrite From, fetch the TXT record for no-use.mooo.com.
