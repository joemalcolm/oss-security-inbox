X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["526" "Wednesday" "17" "May" "2017" "00:16:28" "+0200" "Dominique Martinet" "asmadeus@codewreck.org" "<20170516221628.GA29020@nautica>" "18" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017051622:16:28" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        asmadeus@cod May 17   18/526   " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170516220345.GA10874@openwall.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11787 invoked by uid 550); 17 May 2017 10:03:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28273 invoked from network); 16 May 2017 22:16:54 -0000
Message-ID: <20170516221628.GA29020@nautica>
References: <20170501164428.GA12322@openwall.com>
 <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20170516220345.GA10874@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 17 May 2017 00:16:28 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com

Solar Designer wrote on Wed, May 17, 2017:
> On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> > A harmless example from rxvt - pushing back the new-line character:
> > 
> > $ echo -ne "\eGQ;"
> > ;$ 0
> > bash: 0: command not found
> 
> Does this also affect rxvt-unicode?

Yes (at least on rxvt-unicode 9.21 and 9.22)

Actually, on rxvt 2.7.10 this will try to execute the command '1'
instead so I'd wager they meant urxvt from the start... But both are
similarily affected anyhow.

-- 
Dominique Martinet
