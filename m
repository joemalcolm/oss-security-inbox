X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["965" "Thursday" "16" "February" "2017" "12:08:43" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20170216110843.xvy6khoffph6yy45@jwilk.net>" "26" "[oss-security] Re: git-hub: missing sanitization of data received from GitHub" nil nil nil "2" "2017021611:08:43" "[oss-security] Re: git-hub: missing sanitization of data received from GitHub" (number mark "U       jwilk@jwilk. Feb 16   26/965   " thread-indent "\"[oss-security] Re: git-hub: missing sanitization of data received from GitHub\"\n") "<20160929154004.kphifrcks2b7boh6@jwilk.net>" ("<20160929154004.kphifrcks2b7boh6@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5514 invoked by uid 550); 16 Feb 2017 11:10:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5485 invoked from network); 16 Feb 2017 11:10:44 -0000
Date: Thu, 16 Feb 2017 12:08:43 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20170216110843.xvy6khoffph6yy45@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20160929154004.kphifrcks2b7boh6@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20160929154004.kphifrcks2b7boh6@jwilk.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Ovh-Tracer-Id: 9817284238803851174
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelhedrtdeggddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: [oss-security] Re: git-hub: missing sanitization of data received from GitHub

* Jakub Wilk <jwilk@jwilk.net>, 2016-09-29, 17:40:
>git-hub <https://github.com/sociomantic-tsunami/git-hub> is a Git 
>command-line interface to GitHub. When you ask it to clone a 
>repository, it will call:
>
>  git clone <repourl> <reponame>
>
>where both <repourl> and <reponame> come from GitHub API, without any 
>sanitization. Operators of the GitHub server (or a MitM attacker[*]) 
>could exploit it for directory traversal or, more excitingly, for 
>arbitrary code execution, either via option injection, e.g.:
>
>  git clone 'git://-esystem("cowsay pwned > \x2fdev\x2ftty")/' --config=core.gitProxy=perl
>
>or more directly with git-remote-ext, e.g.:
>
>  git clone 'ext::sh -c cowsay% pwned% >% /dev/tty' moo

git-spindle is another GitHub CLI, which can be exploited in the same way:
https://github.com/seveas/git-spindle/issues/154

(git-spindle used to be called "git-hub", but this is different codebase that 
sociomantic's git-hub.)

-- 
Jakub Wilk
