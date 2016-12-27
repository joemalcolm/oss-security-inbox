X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2124" "Tuesday" "27" "December" "2016" "20:00:01" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20161227190001.efhubtt3lsk33qyq@jwilk.net>" "51" "[oss-security] Re: tqdm: insecure use of git" nil nil nil "12" "2016122719:00:01" "[oss-security] Re: tqdm: insecure use of git" (number mark "U       jwilk@jwilk. Dec 27   51/2124  " thread-indent "\"[oss-security] Re: tqdm: insecure use of git\"\n") "<c057cd5bc2774a72a39e851772c10aed@imshyb02.MITRE.ORG>" ("<20161225204743.vflt7rkcu55bqqgt@jwilk.net>" "<c057cd5bc2774a72a39e851772c10aed@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1424 invoked by uid 550); 27 Dec 2016 19:00:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1389 invoked from network); 27 Dec 2016 19:00:19 -0000
Date: Tue, 27 Dec 2016 20:00:01 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20161227190001.efhubtt3lsk33qyq@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20161225204743.vflt7rkcu55bqqgt@jwilk.net>
 <c057cd5bc2774a72a39e851772c10aed@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <c057cd5bc2774a72a39e851772c10aed@imshyb02.MITRE.ORG>
User-Agent: NeoMutt/20161126 (1.7.1)
X-Ovh-Tracer-Id: 13418475092906989478
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelgedrtddtgddutddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: [oss-security] Re: tqdm: insecure use of git

>Can you clarify the threat model for this? Our understanding is that 
>.git/config is not really a part of a repository that is controlled by a 
>remote party, e.g., see the second paragraph of the 
>https://git-blame.blogspot.com/2014/12/git-1856-195-205-214-and-221-and.html 
>post.

Right; the malicious git repository would have to be created by other means 
than "git clone" alone.

The attack scenario I had in mind is:

Alice and Mallory are local users on the same machine.
Mallory creates world-readable /tmp/.git such that running "git log" against 
this repository compromises the user's account.
Alice chdirs to /tmp (or maybe even to a subdirectory of /tmp accessible only 
to her), and runs a command that uses the tqdm module under the hood. tqdm 
executes "git log", which executes Mallory's code.

>Is either (or both) of these a valid interpretation of your report?
>
>1. You are suggesting that there is a security problem in git because the 
>risks of an attacker-controlled config file are not documented carefully 
>enough. In other words, you want documentation such as 
>https://www.kernel.org/pub/software/scm/git/docs/git-config.html to tell the 
>user that they must not use a "repository specific configuration file" that is 
>writable by an untrusted local user.

No, I don't see this as a problem in git.

>2. You are suggesting that there is a security problem in tqdm because the 
>victim is not explicitly being told that they are executing a git command, and 
>thus they do not realize that there is a need to verify that they have a safe 
>cwd before proceeding.

Yes.

>A. Anyone planning to explicitly enter "git log" from a shell prompt is 
>responsible for first verifying that the cwd is safe. It is a known property 
>of git that the cwd is critical to security.

Yes.

>B. No third-party product should ever be executing "git log" in an unexpected 
>context. Either the user must somehow be aware that a "git log" may be 
>executed, or else the product must somehow force the use of a safe local 
>directory. Otherwise, a CVE is needed for each such product.

Yes.

-- 
Jakub Wilk
