X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["755" "Tuesday" "10" "April" "2018" "12:24:03" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180410102403.6gb45xp4kt75ybpj@jwilk.net>" "21" "Re: [oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018041010:24:03" "[oss-security] Re: Terminal Control Chars" (number mark "U       jwilk@jwilk. Apr 10   21/755   " thread-indent "\"Re: [oss-security] Re: Terminal Control Chars\"\n") "<CAJys2kWQ4K4dEK0uC_OCVaHEOZfh+EqWmEprSUFVWH_ai-+Mrg@mail.gmail.com>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" "<20180409171105.wexxnmf6fwgzeur7@matica.foolinux.mooo.com>" "<CAJys2kWQ4K4dEK0uC_OCVaHEOZfh+EqWmEprSUFVWH_ai-+Mrg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30411 invoked by uid 550); 10 Apr 2018 10:24:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30392 invoked from network); 10 Apr 2018 10:24:17 -0000
Date: Tue, 10 Apr 2018 12:24:03 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180410102403.6gb45xp4kt75ybpj@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
 <20180409171105.wexxnmf6fwgzeur7@matica.foolinux.mooo.com>
 <CAJys2kWQ4K4dEK0uC_OCVaHEOZfh+EqWmEprSUFVWH_ai-+Mrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAJys2kWQ4K4dEK0uC_OCVaHEOZfh+EqWmEprSUFVWH_ai-+Mrg@mail.gmail.com>
User-Agent: NeoMutt/20180323
X-Ovh-Tracer-Id: 10431744112765425574
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtgedrheeigddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: [oss-security] Re: Terminal Control Chars

* Not Real <theborland1@gmail.com>, 2018-04-09, 13:35:
>This is posted here every few months.

The thread subject is not as informative as it could be. The original 
post was about pasting control characters. While the problem is not 
new[0], I don't recall it being ever discussed on oss-security before.

>https://turbochaos.blogspot.com/2014/08/journalctl-terminal-escape-injection.html

OTOH, this is about terminal escape injection, an entirely different 
problem, and a frequent topic on oss-security.


[0] The original post links to 
https://thejh.net/misc/website-terminal-copy-paste (from 2013?), 
which links to 
http://www.ush.it/team/ascii/hack-tricks_253C_CCC2008/wysinwyc/what_you_see_is_not_what_you_copy.txt 
(from 2008).

-- 
Jakub Wilk
