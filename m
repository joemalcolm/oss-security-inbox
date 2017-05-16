X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["261" "Wednesday" "17" "May" "2017" "00:03:45" "+0200" "Solar Designer" "solar@openwall.com" "<20170516220345.GA10874@openwall.com>" "12" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017051622:03:45" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        solar@openwa May 17   12/261   " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7838 invoked by uid 550); 16 May 2017 22:04:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7545 invoked from network); 16 May 2017 22:04:03 -0000
Message-ID: <20170516220345.GA10874@openwall.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com> <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 17 May 2017 00:03:45 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com

Jason, Robert -

On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> A harmless example from rxvt - pushing back the new-line character:
> 
> $ echo -ne "\eGQ;"
> ;$ 0
> bash: 0: command not found

Does this also affect rxvt-unicode?

Alexander
