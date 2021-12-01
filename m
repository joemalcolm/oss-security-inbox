X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["963" "Wednesday" "1" "December" "2021" "12:52:18" "+0100" "Jens Timmerman" "jens@caret.be" "<73c78b13-5086-02eb-a496-4367a5712949@caret.be>" "25" "Re: [oss-security] IMA gadgets" "^Date:" nil nil "12" "2021120111:52:18" "[oss-security] IMA gadgets" (number mark "        jens@caret.b Dec  1   25/963   " thread-indent "\"Re: [oss-security] IMA gadgets\"\n") "<d2b2c4b7-cba4-349e-1856-23f84fc6a198@spamtrap.tnetconsulting.net>" ("<87wnkp8kmj.fsf@oldenburg.str.redhat.com>" "<d2b2c4b7-cba4-349e-1856-23f84fc6a198@spamtrap.tnetconsulting.net>") nil nil nil nil nil nil nil "Re: [oss-security] IMA gadgets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5189 invoked by uid 550); 1 Dec 2021 11:58:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1276 invoked from network); 1 Dec 2021 11:52:32 -0000
X-ASG-Debug-ID: 1638359540-15c4336c7c21550001-Ebmqpw
X-Barracuda-Envelope-From: jens@caret.be
X-Barracuda-Effective-Source-IP: 94.105.126.128.dyn.edpnet.net[94.105.126.128]
X-Barracuda-Apparent-Source-IP: 94.105.126.128
Content-Type: multipart/alternative;
 boundary="------------0LelCG82kr30OG9xxLIozYHM"
Message-ID: <73c78b13-5086-02eb-a496-4367a5712949@caret.be>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
X-ASG-Orig-Subj: Re: [oss-security] IMA gadgets
References: <87wnkp8kmj.fsf@oldenburg.str.redhat.com>
 <d2b2c4b7-cba4-349e-1856-23f84fc6a198@spamtrap.tnetconsulting.net>
In-Reply-To: <d2b2c4b7-cba4-349e-1856-23f84fc6a198@spamtrap.tnetconsulting.net>
X-Barracuda-Connect: 94.105.126.128.dyn.edpnet.net[94.105.126.128]
X-Barracuda-Start-Time: 1638359540
X-Barracuda-URL: https://212.71.1.222:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at edpnet.be
X-Barracuda-Scan-Msg-Size: 2179
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=7.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.94327
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Date: Wed, 1 Dec 2021 12:52:18 +0100
From: Jens Timmerman <jens@caret.be>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] IMA gadgets
To: oss-security@lists.openwall.com

--------------0LelCG82kr30OG9xxLIozYHM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 11/30/21 22:27, Grant Taylor wrote:
>
>> This means an attacker can turn any binary into a SUID binary. The 
>> signatures do not cover these file attributes, so they will still 
>> verify.
>
> It may be possible to add SUID and / or capabilities to a signed file. 
> But I have to question how such a questionable non-SUID binary would 
> be given a signature in the first place?  Or asked another why, why 
> would a questionable file be given a IMA signature in the first place? 


An attacker doesn't need to SUID a questionable binary, just any binary 
that would then allow to execute commands. e.g. /usr/bin/bash  or less 
obvious but still obvious perl, python, vim, sudoedit,  and 100's of 
other default tools that could be used to an attackers advantage once 
they are SUID.

--------------0LelCG82kr30OG9xxLIozYHM--

