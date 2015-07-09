X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["844" "Thursday" "9" "July" "2015" "17:37:55" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<559E8743.2040203@openwall.com>" "21" "Re: [oss-security] How serious is undefined behavior?" nil nil nil "7" "2015070914:37:55" "[oss-security] How serious is undefined behavior?" (number mark "        ch3root@open Jul  9   21/844   " thread-indent "\"Re: [oss-security] How serious is undefined behavior?\"\n") "<20150706181734.2b0288ca@pc1>" ("<20150706181734.2b0288ca@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23643 invoked by uid 550); 9 Jul 2015 14:38:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23612 invoked from network); 9 Jul 2015 14:38:07 -0000
Message-ID: <559E8743.2040203@openwall.com>
MIME-Version: 1.0
References: <20150706181734.2b0288ca@pc1>
In-Reply-To: <20150706181734.2b0288ca@pc1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Thu, 09 Jul 2015 17:37:55 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How serious is undefined behavior?
To: oss-security@lists.openwall.com

On 2015-07-06 19:17, Hanno Böck wrote:
> Would people think it's a wise idea to put a lot of effort into testing
> applications with ubsan enabled and reporting all the bugs that pop up?

I think the situation is the same as with other bugs -- it depends on 
the project. I would report them if the application in question is in a 
good shape. Otherwise I would start with crashes.

My experience in fuzzing binutils[1] and elfutils[2] with ubsan was 
quite positive. It was easy to integrate it into my workflow and all 
reported issues were promptly fixed by the maintainers.

[1] reports with ubsan start at
https://sourceware.org/bugzilla/show_bug.cgi?id=17512#c196
https://sourceware.org/bugzilla/show_bug.cgi?id=17531#c82

[2] reports with ubsan start at
https://bugzilla.redhat.com/show_bug.cgi?id=1170810#c29

-- 
Alexander Cherepanov
