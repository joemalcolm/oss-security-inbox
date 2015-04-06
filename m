X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1902" "Monday" "6" "April" "2015" "12:52:43" "-0700" "Andy Lutomirski" "luto@kernel.org" "<5522E40B.4030506@kernel.org>" "43" "[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts" nil nil nil "4" "2015040619:52:43" "[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts" (number mark "        luto@kernel. Apr  6   43/1902  " thread-indent "\"[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts\"\n") "<20150404185434.6F84B6C0048@smtpvmsrv1.mitre.org>" ("<20150403105802.GA21110@pc.thejh.net>" "<20150404185434.6F84B6C0048@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32118 invoked by uid 550); 6 Apr 2015 20:12:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14165 invoked from network); 6 Apr 2015 19:52:58 -0000
Message-ID: <5522E40B.4030506@kernel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20150403105802.GA21110@pc.thejh.net> <20150404185434.6F84B6C0048@smtpvmsrv1.mitre.org>
In-Reply-To: <20150404185434.6F84B6C0048@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: ClamAV using ClamSMTP
CC: cve-assign@mitre.org
Date: Mon, 06 Apr 2015 12:52:43 -0700
From: Andy Lutomirski <luto@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux namespaces: It is possible to escape from bind mounts
To: oss-security@lists.openwall.com, jann@thejh.net

On 04/04/2015 11:54 AM, 
cve-assign-AZamIotjMK3YtjvyW6yDsg@public.gmane.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>> http://permalink.gmane.org/gmane.linux.kernel.containers/29173
>> http://permalink.gmane.org/gmane.linux.kernel.containers/29177
>
>> Containers on Linux normally use bind mounts to restrict how much
>> of the filesystem is visible for processes inside the container.
>> However, if an attacker can gain capabilities within such a
>> container or can create another user and mount namespace within
>> the existing container, he can do something similar to a
>> double-chroot attack to break out of the bind mount and gain
>> access to the full filesystem to which the bind mount refers:
>>
>> Create folders /A, /A/B, /C, /D inside the namespace.
>> Bind-mount the /A inside the namespace to /D.
>> Let a process chdir to /D/B.
>> Move /D/B over into /C.
>> The process which chdir'ed to /D/B is now in /C/B, but at the
>> same time it is in a bind mount with /D as root. It can then
>> traverse upwards, past what looks like / inside the namespace.
>
> Our understanding so far is that the underlying problem is that the
> original design didn't fully consider the ability of an attacker to
> rename. Because of this, the rename implementation has been changed so
> that it detects a violation of the intended security properties and
> puts a countermeasure in place. This has been done in the fs/dcache.c
> __d_move function. There is no commit available yet at
>
>    http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/fs/dcache.c
>
> Use CVE-2015-2925 for this issue.
>
> As far as we can tell, the patches don't address a separate scenario
> in which a ".." attack can occur but the underlying problem is
> something other than rename handling. So, we don't think a second CVE
> ID is needed.

Do you have a specific scenario in mind?

--Andy
