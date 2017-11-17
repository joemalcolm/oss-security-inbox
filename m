X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["348" "Friday" "17" "November" "2017" "22:19:22" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171117211922.ljzilxin2rkvpqnf@jwilk.net>" "18" "Re: [oss-security] phusion passenger CVE-2017-1000384" nil nil nil "11" "2017111721:19:22" "[oss-security] phusion passenger CVE-2017-1000384" (number mark "U       jwilk@jwilk. Nov 17   18/348   " thread-indent "\"Re: [oss-security] phusion passenger CVE-2017-1000384\"\n") "<ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>" ("<CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>" "<ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24500 invoked by uid 550); 17 Nov 2017 21:19:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24476 invoked from network); 17 Nov 2017 21:19:39 -0000
Date: Fri, 17 Nov 2017 22:19:22 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20171117211922.ljzilxin2rkvpqnf@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>
 <ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 5935462836241815462
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrjeejgdduheduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: Re: [oss-security] phusion passenger CVE-2017-1000384

* John Lightsey <jd@cpanel.net>, 2017-11-17, 14:58:
>https://github.com/phusion/passenger/commit/4043718264095cde6623c2cbe8c644541036d7bf

This adds:

   #ifdef false
   ...
   #endif

But false _is_ a defined macro in this file, so this doesn't disable the 
code inside. I guess they meant to write:

   #if false
   ...
   #endif

-- 
Jakub Wilk
