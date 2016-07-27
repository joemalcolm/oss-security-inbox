X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2088" "Wednesday" "27" "July" "2016" "13:27:08" "-0400" "Daniel J Walsh" "dwalsh@redhat.com" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" "47" "Re: [oss-security] Re: cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "7" "2016072717:27:08" "[oss-security] Re: cve request: systemd-machined: information exposure for docker containers" (number mark "        dwalsh@redha Jul 27   47/2088  " thread-indent "\"Re: [oss-security] Re: cve request: systemd-machined: information exposure for docker containers\"\n") "<20160727170537.GA3330@motoko>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19503 invoked by uid 550); 27 Jul 2016 17:27:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19479 invoked from network); 27 Jul 2016 17:27:20 -0000
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
 <20160727170537.GA3330@motoko>
Message-ID: <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20160727170537.GA3330@motoko>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 27 Jul 2016 17:27:08 +0000 (UTC)
Date: Wed, 27 Jul 2016 13:27:08 -0400
From: Daniel J Walsh <dwalsh@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com



On 07/27/2016 01:05 PM, Christian Rebischke wrote:
> On Tue, Jul 26, 2016 at 03:24:13PM -0400, cve-assign@mitre.org wrote:
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA256
>>
>>> Once docker containers register themselves to systemd-machined
>>> by oci-register-machine. Any unprivileged user could run
>>> machinectl to list every single containers running in the host
>>> even if the containers do not belong to this user (including containers
>>> belong to the root user), and access sensitive information associated
>>> with any individual container including its internal IP address, OS
>>> version, running processes, and file path for its rootfs.
>>>
>>> $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
>>> cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
>>>            Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
>>>           Leader: 43494 (sleep)
>>>          Service: docker; class container
>>>             Root: /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7b20f759613
>>>          Address: 172.17.0.2
>>>                   fe80::42:acff:fe11:2
>>>               OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
>>>             Unit: docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527c254ebfd2d
>>>                   43494 sleep 3000
>> Use CVE-2016-6349.
> Hello,
> I don't think that the bug for this problem lies in systemd.
> It's more a design mistake in docker or oci-register-machine.
> I have forwarded this issue to the systemd developer team and I don't
> think they will fix this in the future. In their opinion it's a
> bug in docker or oci-register-machine:
>
> https://github.com/systemd/systemd/issues/3815
>
> by the way.. I would feel glad if the security researchers would first
> message the developers and then assign a CVE a bug. This is the normal
> way for a full disclosure.
>
> best regards,
>
> Christian Rebischke
Why is this a bug in oci-register-machine?  All it is doing is calling
the systemd-machine call to register with it using the three flags
available.
Is systemd saying we should not use that call?
