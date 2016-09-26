X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["477" "Monday" "26" "September" "2016" "18:54:09" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20160926165409.ekk6dztdpttnnf67@jwilk.net>" "12" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" "^Date:" nil nil "9" "2016092616:54:09" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "        jwilk@jwilk. Sep 26   12/477   " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>" ("<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14038 invoked by uid 550); 26 Sep 2016 16:54:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14020 invoked from network); 26 Sep 2016 16:54:24 -0000
Message-ID: <20160926165409.ekk6dztdpttnnf67@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
User-Agent: NeoMutt/20160916 (1.7.0)
X-Ovh-Tracer-Id: 5959669685181405094
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrudefgddutdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Mon, 26 Sep 2016 18:54:09 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape
To: oss-security@lists.openwall.com

* up201407890@alunos.dcc.fc.up.pt, 2016-09-25, 13:49:
>When executing a program via the SELinux sandbox, the nonpriv session can 
>escape to the parent session by using the TIOCSTI ioctl to push characters 
>into the terminal's input buffer, allowing an attacker to escape the sandbox.

Apparently every single program that tries to run stuff with reduced privileges 
falls through this trap.

Are there any use cases for TIOCSTI other than producing exploits?

-- 
Jakub Wilk
