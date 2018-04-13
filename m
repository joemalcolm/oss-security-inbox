X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Friday" "13" "April" "2018" "09:43:10" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180413074310.rccsuzyslbkm3xag@jwilk.net>" "32" "Re: [oss-security] Terminal Control Chars" nil nil nil "4" "2018041307:43:10" "[oss-security] Terminal Control Chars" (number mark "U       jwilk@jwilk. Apr 13   32/1244  " thread-indent "\"Re: [oss-security] Terminal Control Chars\"\n") "<20180412171327.vc5epogdi7ryc3te@jwilk.net>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" "<1523346797.16686.6@smtp.gmail.com>" "<20180412171327.vc5epogdi7ryc3te@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29920 invoked by uid 550); 13 Apr 2018 07:43:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29899 invoked from network); 13 Apr 2018 07:43:26 -0000
Date: Fri, 13 Apr 2018 09:43:10 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180413074310.rccsuzyslbkm3xag@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
 <1523346797.16686.6@smtp.gmail.com>
 <20180412171327.vc5epogdi7ryc3te@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20180412171327.vc5epogdi7ryc3te@jwilk.net>
User-Agent: NeoMutt/20180323
X-Ovh-Tracer-Id: 6886566783405119398
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtgedriedugdduvdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: Re: [oss-security] Terminal Control Chars

* Jakub Wilk <jwilk@jwilk.net>, 2018-04-12, 19:13:
>>Perhaps the correct solution would be to prevent the browser from 
>>copying invisible characters.
>
>Do you mean control characters, or something else?

One reason I asked because for some people knee-jerk reaction upon 
learning about this issue is to insist that the browser should only copy 
what the user sees. Cleverly, they never elaborate what that means 
exactly.

Is a "font-size: 3pt" text visible? Should the browser consult the 
user's eye exam results before deciding what to copy?

Does it mean Ctrl+A Ctrl+C would copy only text within the viewport? I 
guess so, but that's not what browser users expect.

And in the PDF world: the user is often shown a scan, and there's a 
hidden copyable text layer. Should the PDF browser somehow refuse to 
copy text with recognition errors?

>>If you're going to break some basic mechanic of human computer 
>>interaction,
>Huh? Most users don't interact with their terminal-based software by 
>pasting control characters.

As it was noted elsewhere in this thread, tabs and newlines are control 
characters, too. People paste them all the time. But I don't think 
anyone is seriously proposing to filter out these two.

-- 
Jakub Wilk
