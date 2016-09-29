X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["905" "Thursday" "29" "September" "2016" "17:40:04" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20160929154004.kphifrcks2b7boh6@jwilk.net>" "26" "[oss-security] git-hub: missing sanitization of data received from GitHub" "^Date:" nil nil "9" "2016092915:40:04" "[oss-security] git-hub: missing sanitization of data received from GitHub" (number mark "U       jwilk@jwilk. Sep 29   26/905   " thread-indent "\"[oss-security] git-hub: missing sanitization of data received from GitHub\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11689 invoked by uid 550); 29 Sep 2016 15:40:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11660 invoked from network); 29 Sep 2016 15:40:24 -0000
Message-ID: <20160929154004.kphifrcks2b7boh6@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: NeoMutt/20160916 (1.7.0)
X-Ovh-Tracer-Id: 3881258455420950438
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrudelgdelvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Thu, 29 Sep 2016 17:40:04 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] git-hub: missing sanitization of data received from GitHub
To: oss-security@lists.openwall.com

git-hub <https://github.com/sociomantic-tsunami/git-hub> is a Git command-line 
interface to GitHub. When you ask it to clone a repository, it will call:

   git clone <repourl> <reponame>

where both <repourl> and <reponame> come from GitHub API, without any 
sanitization. Operators of the GitHub server (or a MitM attacker[*]) could 
exploit it for directory traversal or, more excitingly, for arbitrary code 
execution, either via option injection, e.g.:

   git clone 'git://-esystem("cowsay pwned > \x2fdev\x2ftty")/' --config=core.gitProxy=perl

or more directly with git-remote-ext, e.g.:

   git clone 'ext::sh -c cowsay% pwned% >% /dev/tty' moo


Upstream bug report:
https://github.com/sociomantic-tsunami/git-hub/issues/197


[*] git-hub is implemented in Python, which didn't verify HTTPS certificates 
before 2.7.9; and git-hub doesn't enable verification on its own either.

-- 
Jakub Wilk
