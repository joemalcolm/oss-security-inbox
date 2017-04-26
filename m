X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1441" "Wednesday" "26" "April" "2017" "09:42:27" "+0300" "Dimitrios Glynos" "dimitris@census-labs.com" "<2c23bf0d-0e48-e1b2-9db7-25ecba46d6e9@census-labs.com>" "34" "Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" "^Date:" nil nil "4" "2017042606:42:27" "[oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" (number mark "        dimitris@cen Apr 26   34/1441  " thread-indent "\"Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)\"\n") "<d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>" ("<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>" "<d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24280 invoked by uid 550); 26 Apr 2017 06:49:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20412 invoked from network); 26 Apr 2017 06:42:42 -0000
References: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
 <d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>
Organization: CENSUS S.A.
Message-ID: <2c23bf0d-0e48-e1b2-9db7-25ecba46d6e9@census-labs.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Date: Wed, 26 Apr 2017 09:42:27 +0300
From: Dimitrios Glynos <dimitris@census-labs.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution
 (CVE-2017-7692)
To: oss-security@lists.openwall.com



On 25/04/2017 11:56 μμ, Stuart Gathman wrote:
> On 04/24/2017 05:14 PM, Dawid Golunski wrote:
>> SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)
>>
>> Desc.:
>> SquirrelMail is affected by a critical Remote Code Execution vulnerability
>> which stems from insufficient escaping of user-supplied data when
>> SquirrelMail has been configured with Sendmail as the main transport.
>> An authenticated attacker may be able to exploit the vulnerability
>> to execute arbitrary commands on the target and compromise the remote
>> system.
> We deploy squirrelmail NOT using sendmail for sending mail ($useSendmail
> = false).  There is no reason not to use SMTP instead of running
> sendmail directly.  It doesn't seem to be vulnerable that way - and I
> suggest that as a mitigation.  Just to be sure, after reading this
> advisory I added  $sendmail_path  = '/usr/sbin/false'; (We always avoid
> direct command execution with PHP because PHP is prone to quoting bugs.) 
> 
> OT: is there already a utility that *safely* logs arguments and stdin
> (as was apparently used to explain the exploit)?  I could write a C
> prog, or a carefully quoted bash script - but would rather use an
> already proven utility.
> 

For execve logging (just arguments) see 'snoopy'. It catches exec
calls using LDPRELOAD, so it misses them only if the calls are
made from a static binary (which I don't believe php or sendmail
are).

HTH,

Dimitris
