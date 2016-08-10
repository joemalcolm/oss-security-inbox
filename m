X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1019" "Wednesday" "10" "August" "2016" "15:04:50" "-0400" "Daniel J Walsh" "dwalsh@redhat.com" "<095c337c-63af-ecdd-866a-9d1918e4bfac@redhat.com>" "30" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "8" "2016081019:04:50" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        dwalsh@redha Aug 10   30/1019  " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<739916702.1278914.1470855609597.JavaMail.zimbra@redhat.com>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160727200021.GB3330@motoko>" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>" "<4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>" "<20160728144249.GB23522@perpetual.pseudorandom.co.uk>" "<291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>" "<f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>" "<739916702.1278914.1470855609597.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3097 invoked by uid 550); 10 Aug 2016 19:05:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3078 invoked from network); 10 Aug 2016 19:05:03 -0000
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160727200021.GB3330@motoko>
 <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>
 <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>
 <4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>
 <20160728144249.GB23522@perpetual.pseudorandom.co.uk>
 <291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>
 <f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>
 <739916702.1278914.1470855609597.JavaMail.zimbra@redhat.com>
Message-ID: <095c337c-63af-ecdd-866a-9d1918e4bfac@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <739916702.1278914.1470855609597.JavaMail.zimbra@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 10 Aug 2016 19:04:50 +0000 (UTC)
Date: Wed, 10 Aug 2016 15:04:50 -0400
From: Daniel J Walsh <dwalsh@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com



On 08/10/2016 03:00 PM, CAI Qian wrote:
>
> ----- Original Message -----
>> From: "Daniel J Walsh" <dwalsh@redhat.com>
>> To: oss-security@lists.openwall.com
>> Sent: Wednesday, August 3, 2016 3:27:00 AM
>> Subject: Re: [oss-security] cve request: systemd-machined: information exposure for docker containers
>>
>>
>>
>> On 08/01/2016 12:24 PM, Shiz wrote:
>>>> On 28 Jul 2016, at 16:42, Simon McVittie <smcv@debian.org> wrote:
>>>>
>>>> *Which* unprivileged user processes?
>>>>
>>>> If the unprivileged user processes are not in a container, they can get a
>>>> significant amount of the same information by reading the host's /proc.
>>> Except if a host is running with hidepid={1,2}, which is not entirely
>>> uncommon
>>> especially in hardened systems. In that regard it /does/ qualify as
>>> infoleak.
>>>
>>> - Shiz
>> Then simply rpm -e oci-register-machine
>>
> Except people can't do that in OSes like atomic host.
>    CAI Qian
But people do not tend to have non privileged users logged into atomic host.
