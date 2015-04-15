X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["748" "Tuesday" "14" "April" "2015" "22:33:38" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<552DCE02.8010609@canonical.com>" "27" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041502:33:38" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        marc.deslaur Apr 14   27/748   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CACYkhxipofcN=sdyjAVY1LmFcts3s9KzG4dABHX0DDBi1zCkEw@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CACYkhxipofcN=sdyjAVY1LmFcts3s9KzG4dABHX0DDBi1zCkEw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16222 invoked by uid 550); 15 Apr 2015 02:33:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16204 invoked from network); 15 Apr 2015 02:33:51 -0000
Message-ID: <552DCE02.8010609@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org> <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com> <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com> <CACYkhxipofcN=sdyjAVY1LmFcts3s9KzG4dABHX0DDBi1zCkEw@mail.gmail.com>
In-Reply-To: <CACYkhxipofcN=sdyjAVY1LmFcts3s9KzG4dABHX0DDBi1zCkEw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 14 Apr 2015 22:33:38 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 2015-04-14 08:29 PM, Michael Samuel wrote:
> On 15 April 2015 at 07:08, Tavis Ormandy <taviso@google.com> wrote:
> 
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
> This is a Linux kernel flaw/bug right?  It's a machine-readable
> newline-delimited
> /proc file, so it needs to escape newlines if they're valid data.
> 
> Regards,
>   Michael
> 

That appears to have been previously brought up here:

http://www.spinics.net/lists/netdev/msg320556.html

Marc.

