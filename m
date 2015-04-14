X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1919" "Tuesday" "14" "April" "2015" "18:24:40" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<552D93A8.4050007@canonical.com>" "62" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041422:24:40" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        marc.deslaur Apr 14   62/1919  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17640 invoked by uid 550); 14 Apr 2015 22:24:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17619 invoked from network); 14 Apr 2015 22:24:54 -0000
Message-ID: <552D93A8.4050007@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org> <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com> <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com> <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
In-Reply-To: <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: Assign a CVE Identifier <cve-assign@mitre.org>, 
 security <security@ubuntu.com>
Date: Tue, 14 Apr 2015 18:24:40 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

Hi,

On 2015-04-14 05:10 PM, Tavis Ormandy wrote:
> On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> wrote:
>> On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com> wrote:
>>> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
>>> <marc.deslauriers@canonical.com> wrote:
>>>> Hi,
>>>>
>>>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
>>>>> This is mostly a question for the persons who assigned CVE-2015-1318
>>>>> and CVE-2015-1862. Should these CVE assignments be interpreted to
>>>>> mean:
>>>>>
>>>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>>>>>                   namespace-based attack because there is an execve by
>>>>>                   root after a chroot into a user-specified directory
>>>>
>>>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
>>>>
>>>> Marc.
>>>
>>> It looks like this is the patch for Apport:
>>>
>>> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/2943#data/apport
>>>
>>> It's far more complicated than I expected, and not obviously correct.
>>> It could probably use some review, I'll think about it today.
>>>
>>> Tavis.
>>
>> Wait, my first thought is that it's not obvious to me that
>> /proc/net/unix is guaranteed to be newline delimited, newline is a
>> perfectly valid name in a filename, no?
>>
>>>>> import socket
>>>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntest')
>>>>> sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
>>>>> sock.bind('/tmp/foo\nbar')
>>>>> sock.listen(1)
>>
>> $ grep -A1 foo /proc/net/unix
>> 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
>> bar
> 
> And with complete control over this line, it seems like it's game over.
> 
>                 container = lxc.Container(path[-2], real_path)
> 
> I'm calling this re-broken.
> 
> Tavis.
> 

Nice!

Can we get a CVE assigned for this, please?

Thanks,

Marc.

