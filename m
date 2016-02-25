X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2117" "Thursday" "25" "February" "2016" "10:53:29" "+0000" "John Haxby" "john.haxby@oracle.com" "<56CEDD29.5050809@oracle.com>" "59" "Re: [oss-security] CVE Request: bash-completion: dequote command injection" "^Date:" nil nil "2" "2016022510:53:29" "[oss-security] CVE Request: bash-completion: dequote command injection" (number mark "        john.haxby@o Feb 25   59/2117  " thread-indent "\"Re: [oss-security] CVE Request: bash-completion: dequote command injection\"\n") "<CANO=Ty27nHy0Mz0E=d648Z+BBA7nqMdF-EgL__GUqMqPBn1NYQ@mail.gmail.com>" ("<CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>" "<56CE1991.2030906@redhat.com>" "<CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>" "<CANO=Ty27nHy0Mz0E=d648Z+BBA7nqMdF-EgL__GUqMqPBn1NYQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23705 invoked by uid 550); 25 Feb 2016 10:53:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23683 invoked from network); 25 Feb 2016 10:53:43 -0000
References: <CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>
 <56CE1991.2030906@redhat.com>
 <CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>
 <CANO=Ty27nHy0Mz0E=d648Z+BBA7nqMdF-EgL__GUqMqPBn1NYQ@mail.gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56CEDD29.5050809@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CANO=Ty27nHy0Mz0E=d648Z+BBA7nqMdF-EgL__GUqMqPBn1NYQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Date: Thu, 25 Feb 2016 10:53:29 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: bash-completion: dequote command
 injection
To: oss-security@lists.openwall.com

On 24/02/16 21:58, Kurt Seifried wrote:
> I think in this case it's pretty simply "dequoting should not result in
> code execution" much like the various deserialization flaws (they should
> deserialize the data, not execute random stuff).

My immediate assumption was that an unprivileged user could leave
something lying around that root could complete on.

Within bash-completion, most of the uses of dequote are to find a config
file so there'd be a degree of social engineering to persuade root to
use a config file of your choice.   The other main use seems to be in
_parse_help() and _parse_usage() which parse gnu-style help and
bsd-style usage respectively and that might not need as much social
engineering to exploit.  I didn't investigate further.

Whether or not this turns out to be exploitable at all in
bash-completion, I do agree with Kurt though.

jch

> 
> On Wed, Feb 24, 2016 at 2:56 PM, Fernando Muñoz <fernando@null-life.com>
> wrote:
> 
>> Hello Eric,
>>
>> I never mentioned privilege escalation.
>>
>> This issue how ever could appear when a different application uses
>> user input and calls "dequote" function that not only dequotes, but
>> also executes it as a command. If mitre doesn't consider it CVE worth,
>> that's OK!
>>
>> Regards.
>>
>>
>>
>> On Wed, Feb 24, 2016 at 3:58 PM, Eric Blake <eblake@redhat.com> wrote:
>>> On 02/24/2016 12:08 PM, Fernando Muñoz wrote:
>>>> Marcelo Echeverria and Fernando Muñoz discovered that the dequote
>>>> function included in bash-completion allows to execute arbitrary
>>>> commands since it uses the eval function to call printf and perform
>>>> the actual dequoting. bash-completion is included on Debian, Ubuntu
>>>> OpenSuse [1] and probably other distros.
>>>
>>> But what is the privilege escalation?  This is no different than
>>> incorrectly using 'eval' in a shell script - you may have buggy code,
>>> and have an easy-to-trigger bug, but if you can't escalate privileges,
>>> how it is a CVE?
>>>
>>> --
>>> Eric Blake   eblake redhat com    +1-919-301-3266
>>> Libvirt virtualization library http://libvirt.org
>>>
>>
> 
> 
> 

