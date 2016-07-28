X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1798" "Thursday" "28" "July" "2016" "11:08:30" "-0400" "Daniel J Walsh" "dwalsh@redhat.com" "<bb3afc7b-f1ad-4102-1c47-af1080fe5cff@redhat.com>" "38" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "7" "2016072815:08:30" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        dwalsh@redha Jul 28   38/1798  " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<20160728144249.GB23522@perpetual.pseudorandom.co.uk>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" "<20160727200021.GB3330@motoko>" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>" "<4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>" "<20160728144249.GB23522@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9667 invoked by uid 550); 28 Jul 2016 15:08:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9646 invoked from network); 28 Jul 2016 15:08:42 -0000
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
 <20160727170537.GA3330@motoko>
 <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>
 <20160727200021.GB3330@motoko>
 <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>
 <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>
 <4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>
 <20160728144249.GB23522@perpetual.pseudorandom.co.uk>
Message-ID: <bb3afc7b-f1ad-4102-1c47-af1080fe5cff@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20160728144249.GB23522@perpetual.pseudorandom.co.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Thu, 28 Jul 2016 15:08:31 +0000 (UTC)
Date: Thu, 28 Jul 2016 11:08:30 -0400
From: Daniel J Walsh <dwalsh@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com



On 07/28/2016 10:42 AM, Simon McVittie wrote:
> On Thu, 28 Jul 2016 at 08:34:35 -0400, Daniel J Walsh wrote:
>> Lennart is wrong when he states that this only effects "user"
>> containers, any container that registers with
>> machinectl, will have this information revealed to non privileged user
>> processes.
> *Which* unprivileged user processes?
>
> If the unprivileged user processes are not in a container, they can get a
> significant amount of the same information by reading the host's /proc.
>
> If the unprivileged user processes are in a container or other confinement
> that prevents them from looking at the host's /proc, then one of the other
> things that confinement can/should prevent is unfiltered access to the host
> system's D-Bus system bus, which is how machinectl talks to systemd-machined.
>
> Lennart also points out on the systemd bug that the
> methods in question can be access-controlled (at your
> own risk, the policy language is horrible) by modifying
> /etc/dbus-1/system.d/org.freedesktop.machine1.conf. They don't appear to
> be mediated by /usr/share/polkit-1/actions/org.freedesktop.machine1.policy
> too, but they could be; that would be an enhancement request for systemd
> upstream.
>
> I think the bottom line here is that if the author of a container integration
> tool chooses to publish information in a central registry (systemd-machined),
> then they shouldn't be surprised to find the central registry's security model
> getting applied to that information.
>
>     S
So we can add documentation to oci-register-machine that if you use it,
this information
will not be available to the system.  If you don't want this information
revealed you can
uninstall the package, but tools like journalctl -M will no longer work
for docker/runc containers.
