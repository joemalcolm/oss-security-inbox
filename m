X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5194" "Thursday" "28" "July" "2016" "08:34:35" "-0400" "Daniel J Walsh" "dwalsh@redhat.com" "<4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>" "122" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "7" "2016072812:34:35" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        dwalsh@redha Jul 28  122/5194  " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" "<20160727200021.GB3330@motoko>" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10072 invoked by uid 550); 28 Jul 2016 12:34:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10049 invoked from network); 28 Jul 2016 12:34:48 -0000
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
 <20160727170537.GA3330@motoko>
 <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>
 <20160727200021.GB3330@motoko>
 <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>
 <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>
Message-ID: <4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 28 Jul 2016 12:34:36 +0000 (UTC)
Date: Thu, 28 Jul 2016 08:34:35 -0400
From: Daniel J Walsh <dwalsh@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com

Actually this package oci-register-machine is called as a hook and could
be used by runc, or

as Jesse points out placed in
/usr/libexec/oci/hooks.d/oci-register-machine, Red Hats patched

version of docker will execute the hook and register with machinectl. 
This same  behaviour happens

with any container tool that registers with machinectl including
systemd-nspawn, libvirt-lxc and maybe

lxc tools.  The question is whether or not this is information that
should not be available to non privileged

users on a system or not.  The information is not available to processes
inside of a container unless they can

talk to systemd. 


Lennart is wrong when he states that this only effects "user"
containers, any container that registers with

machinectl, will have this information revealed to non privileged user
processes.


On 07/27/2016 04:49 PM, Jessica Frazelle wrote:
> To be clear this is ONLY in Red Hat's fork of docker which is unsupported
> by Docker. There is no oci-register-machine in docker itself.
>
> On Wednesday, July 27, 2016, Jesse Hertz <jesse.hertz@nccgroup.trust> wrote:
>
>> Just to chime in here, since a docker container would be inside its own
>> PID namespace, running ‘ps’ inside a container would not show you other
>> processes/containers running on the same host.
>> A similar “vulnerability" I “found” was patched in Docker earlier (tl;dr
>> '/proc/sched_debug’ is not pid namespace aware).
>>
>> -jh
>>> On Jul 27, 2016, at 4:00 PM, Christian Rebischke <
>> Chris.Rebischke@archlinux.org <javascript:;>> wrote:
>>> On Wed, Jul 27, 2016 at 01:27:08PM -0400, Daniel J Walsh wrote:
>>>>
>>>> On 07/27/2016 01:05 PM, Christian Rebischke wrote:
>>>>> On Tue, Jul 26, 2016 at 03:24:13PM -0400, cve-assign@mitre.org
>> <javascript:;> wrote:
>>>>>> -----BEGIN PGP SIGNED MESSAGE-----
>>>>>> Hash: SHA256
>>>>>>
>>>>>>> Once docker containers register themselves to systemd-machined
>>>>>>> by oci-register-machine. Any unprivileged user could run
>>>>>>> machinectl to list every single containers running in the host
>>>>>>> even if the containers do not belong to this user (including
>> containers
>>>>>>> belong to the root user), and access sensitive information associated
>>>>>>> with any individual container including its internal IP address, OS
>>>>>>> version, running processes, and file path for its rootfs.
>>>>>>>
>>>>>>> $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
>>>>>>> cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
>>>>>>>           Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
>>>>>>>          Leader: 43494 (sleep)
>>>>>>>         Service: docker; class container
>>>>>>>            Root:
>> /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7b20f759613
>>>>>>>         Address: 172.17.0.2
>>>>>>>                  fe80::42:acff:fe11:2
>>>>>>>              OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
>>>>>>>            Unit:
>> docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527c254ebfd2d
>>>>>>>                  43494 sleep 3000
>>>>>> Use CVE-2016-6349.
>>>>> Hello,
>>>>> I don't think that the bug for this problem lies in systemd.
>>>>> It's more a design mistake in docker or oci-register-machine.
>>>>> I have forwarded this issue to the systemd developer team and I don't
>>>>> think they will fix this in the future. In their opinion it's a
>>>>> bug in docker or oci-register-machine:
>>>>>
>>>>> https://github.com/systemd/systemd/issues/3815
>>>>>
>>>>> by the way.. I would feel glad if the security researchers would first
>>>>> message the developers and then assign a CVE a bug. This is the normal
>>>>> way for a full disclosure.
>>>>>
>>>>> best regards,
>>>>>
>>>>> Christian Rebischke
>>>> Why is this a bug in oci-register-machine?  All it is doing is calling
>>>> the systemd-machine call to register with it using the three flags
>>>> available.
>>>> Is systemd saying we should not use that call?
>>> Let me quote Lennart Poettering:
>>>
>>> ---
>>> machined is a system service and is for registering containers running
>>> on the system. There's no concept of "user containers" with that, and
>>> unprivileged users do not have the privileges to even register any
>>> containers with machined.
>>>
>>> If you ask me the CVE is complete and utter rubbish. At least against
>>> systemd. If Docker knows a concept of user containers, then good for
>>> them, but in that case they shouldn't register them with machined
>>> really, if they are not supposed to be visible on the host.
>>>
>>> Generally though I think the CVE is without merit entirely, after all
>>> "ps" is generally unrestricted, and hence you can always see container
>>> processes running on the host anyway.
>>> ---
>>>
>>> In my opinion I would say you shouldn't use this call if you don't want
>>> an information leak. Even if systemd would fix the output of
>>> `machinectl status ..`. The information leak would still be there
>>> because you could still see informations about the container with `ps`
>>> or other tools. systemd is not designed for 'user containers'.
>>>
>>> If yo have further questions. I would say that you ask the
>>> systemd-developers on their mailing list directly.
>>

