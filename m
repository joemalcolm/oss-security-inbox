X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["840" "Tuesday" "28" "August" "2018" "15:08:18" "+0200" "Florian Weimer" "fweimer@redhat.com" "<63a8aed5-d44a-a975-a2a3-932374b57a6c@redhat.com>" "23" "Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." "^Date:" nil nil "8" "2018082813:08:18" "[oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." (number mark "        fweimer@redh Aug 28   23/840   " thread-indent "\"Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem.\"\n") "<20180828125140.GA14413@kroah.com>" ("<CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>" "<20180828125140.GA14413@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30065 invoked by uid 550); 28 Aug 2018 13:08:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30027 invoked from network); 28 Aug 2018 13:08:32 -0000
References: <CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>
 <20180828125140.GA14413@kroah.com>
Message-ID: <63a8aed5-d44a-a975-a2a3-932374b57a6c@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180828125140.GA14413@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.1]); Tue, 28 Aug 2018 13:08:20 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.1]); Tue, 28 Aug 2018 13:08:20 +0000 (UTC) for IP:'10.11.54.3' DOMAIN:'int-mx03.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'fweimer@redhat.com' RCPT:''
Date: Tue, 28 Aug 2018 15:08:18 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash
 (possible privesc) in kernel crypto subsystem.
To: oss-security@lists.openwall.com, Greg KH <greg@kroah.com>

On 08/28/2018 02:51 PM, Greg KH wrote:
> On Tue, Aug 28, 2018 at 04:49:14PM +1000, Wade Mealing wrote:
>> Gday,
>>
>> Syzkaller/syzbot found a use-after-free bug in the cryptographic
>> subsystem of the Linux kernel [1], that can be used to panic the
>> system and possibly escalate privileges.
> 
> Are we seriously now going to be assigning cves to everything that
> syzbot finds?  If so, great, this is going to be fun!
> 
> If not, why this specific patch?  What makes it specia from the hundreds
> of other syzbot finds that have been fixed (and not fixed yet)?

> If RHEL is not exposed, why does Red Hat care about this?

We have shipped supported kernels with this vulnerability.

But the real reason why I want this fixed is that the Python 3 test 
suite triggers this bug and panics some of our RPM builders. 8-/

Thanks,
Florian
