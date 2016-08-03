X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["518" "Wednesday" "3" "August" "2016" "09:27:00" "+0200" "Daniel J Walsh" "dwalsh@redhat.com" "<f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>" "15" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "8" "2016080307:27:00" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        dwalsh@redha Aug  3   15/518   " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" "<20160727200021.GB3330@motoko>" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>" "<4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>" "<20160728144249.GB23522@perpetual.pseudorandom.co.uk>" "<291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11949 invoked by uid 550); 3 Aug 2016 07:27:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11931 invoked from network); 3 Aug 2016 07:27:13 -0000
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
 <20160727170537.GA3330@motoko>
 <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>
 <20160727200021.GB3330@motoko>
 <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>
 <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>
 <4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>
 <20160728144249.GB23522@perpetual.pseudorandom.co.uk>
 <291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>
Message-ID: <f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Wed, 03 Aug 2016 07:27:02 +0000 (UTC)
Date: Wed, 3 Aug 2016 09:27:00 +0200
From: Daniel J Walsh <dwalsh@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com



On 08/01/2016 12:24 PM, Shiz wrote:
>> On 28 Jul 2016, at 16:42, Simon McVittie <smcv@debian.org> wrote:
>>
>> *Which* unprivileged user processes?
>>
>> If the unprivileged user processes are not in a container, they can get a
>> significant amount of the same information by reading the host's /proc.
> Except if a host is running with hidepid={1,2}, which is not entirely uncommon
> especially in hardened systems. In that regard it /does/ qualify as infoleak.
>
> - Shiz
Then simply rpm -e oci-register-machine

