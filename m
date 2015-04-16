X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5082" "Thursday" "16" "April" "2015" "11:29:08" "+0200" "Pierre Schweitzer" "pierre@reactos.org" "<552F80E4.80003@reactos.org>" "120" "[oss-security] Re: Kernel oops on 32 bits arch" nil nil nil "4" "2015041609:29:08" "[oss-security] Re: Kernel oops on 32 bits arch" (number mark "        pierre@react Apr 16  120/5082  " thread-indent "\"[oss-security] Re: Kernel oops on 32 bits arch\"\n") "<20150414062141.CE1CE6C4009@smtpvmsrv1.mitre.org>" ("<20150414062141.CE1CE6C4009@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16167 invoked by uid 550); 16 Apr 2015 09:29:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16104 invoked from network); 16 Apr 2015 09:29:22 -0000
Message-ID: <552F80E4.80003@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
References: <20150414062141.CE1CE6C4009@smtpvmsrv1.mitre.org>
In-Reply-To: <20150414062141.CE1CE6C4009@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
CC: oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 11:29:08 +0200
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Kernel oops on 32 bits arch
To: cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

First of all, thanks for the detailed answer.

My question was to be understood as: for the 64 bits, was it
considered as a security issue? Was it possible to trigger it remotely
to crash a server?
Reading your whole statement, it seems that on 64 bits, the issue was
relatively difficult to catch.

On 32 bits, on the other hand, it seems that there is a possible
attack scenario: huge IOs on an ext4 file system.
Even though, it requires precise knowledge of the architecture due to
the specific prerequisites.

But we cannot exclude that it could be triggered with other FS, and
attempting to trigger it on any server we face shouldn't be that hard.
In the end, this results in DoS and potentially in data corruption: a
kernel panic is never good for data, especially under high IOs...

Should it be then considered as a security issue for 32 bits? While
not for 64 bits?

On 04/14/2015 08:21 AM, cve-assign@mitre.org wrote:
>> This bug report has been brought to my attention [1] where under
>> high load a server can be oopsed, be it grsec or vanilla kernel.
> 
>> Apparently, it's due to a partial fix that would have only be
>> deployed to 64 bits Linux [2].
> 
>> Has anyone more info on this? Like why there was only a 64 bits
>> fix? Was a CVE assigned for this?
> 
>> [1]: https://bugs.gentoo.org/show_bug.cgi?id=536040 [2]:
>> https://lkml.org/lkml/2014/4/29/497
> 
> As far as we can tell, https://lkml.org/lkml/2014/4/29/497
> ultimately resulted in the 
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=d5c9fde3dae750889168807038243ff36431d276
>
> 
commit.
> 
> https://bugs.gentoo.org/show_bug.cgi?id=536040#c20 says
> 
> so we think it's an upstream bug
> https://lkml.org/lkml/2014/4/29/497 that was fixed only on 64 bit
> archs. on 32 bit archs the function in question uses a 32 bit type
> (unsigned long) instead of u64 and therefore the trunction issue
> mentioned in the thread can very well happen.
> 
> This suggests that the same source code is used on all platforms,
> but the code with the d5c9fde3dae750889168807038243ff36431d276
> patch is correct if the size of "unsigned long" is 8, but incorrect
> if the size of "unsigned long" is 4. (There isn't a patch offered
> for the latter case, although the implication seems to be that the
> code is inherently incorrect, and isn't affected by any compiler
> bug.) If so, then conceivably there could be at least two CVE IDs,
> i.e.,
> 
> First issue: reachable "divide by zero" in versions before 3.14.6
> on 64-bit platforms 
> (https://www.kernel.org/pub/linux/kernel/v3.x/ChangeLog-3.14.6)
> 
> Second issue: reachable "divide by zero" in these versions and
> newer versions on 32-bit platforms
> 
> [ there hasn't been a report of a security impact for the 
> "incorrect value when (setpoint - limit) exceeds 2^32" issue ]
> 
> The available information about the attack vector for the second
> issue is "unspecified traffic to an Apache HTTP Server 2.x that
> leads to a substantial amount of disk I/O to an ext4 filesystem."
> There is no available information about an attack vector for the
> first issue.
> 
> We don't know whether there are other attack vectors involving
> FUSE. The comments in page-writeback.c refer to the effects of
> "mistrusted filesystems" on the number of dirty pages, and possibly
> such a filesystem could make it easier to reach a case with a 
> pos_ratio_polynom bug.
> 
> In general, the two issues listed above are ones that often would
> not have CVE IDs because the attack methodology is underspecified,
> or because too little is known about the relationship between an
> attack and the bug. However, it seems very likely that the
> untrusted HTTP traffic is, indirectly, causing the bug to be
> triggered much more often than it otherwise would have been. So, it
> does seem valid for the issues to have CVE IDs, if the CVE IDs are
> useful to someone.
> 
> Was "Was a CVE assigned for this?" intended to mean that a CVE ID
> is useful, i.e., you would actually use a CVE ID to track an OOPS
> issue in the management of dirty pages?
> 
> 

- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVL4DkAAoJEHVFVWw9WFsLO88P/2CGihh8Zj3lGc/BfCweqxRh
hZw8UxLLwIiHwdZmC2znFdalzwisgXfgORlhf8yqdzL1hjxXIbPc3WKcx95ZI1qZ
rJr04TIWqNIoOyuthHpNbgX02SnaBYpXrwnpyU0nKzNuopv45yiZ9AwnBr5nPjOg
oqBZ1mnKX/S8VcLW9J0gAFQKP8hi4+ObABZfAxCo4SNZku01YYjnSJ9MvYYJkuXX
+H0JvNJalXJ8v2w5VKcEyN9Y5njdXy4aCtRwt/IMU4hKonNblL5i9W0cy/+z6jQ7
4udpyImv2jsvT367uIIKbTctb5waGeoKb5m/fFq//9ndvJw6rSR4EiKt/iigE5su
tj91YCqjKprb9ANwP1ufXu/RLnss6SBA617Pp2Y/k/rIXWfLP0KiYdnQ3se/+dvK
b1T/OuwXXPGQ+6a3slPDoZBsTGGxCek1jTi48j54cWx+4yfths5UlXYKe5VM06Ud
+NAymJaktpN9RpiwtK4m9LoYClAze9YrvTN5Y3UVvnVSf5hXR5v0qJsOwZrscHuo
5qbehWcK3llacpElUMi6XQY/56OuWvIZH5x5FM3p+IHy3r+HKs8IvdUMXj16DEl9
LIk002Wo2kvhKnniLWze9AgFUnXoD2CxPvCWflHKsF78nM1oL42lhzrjJTOlmlbq
VQdaEnZaMu3Ab8Yilt4K
=qpnh
-----END PGP SIGNATURE-----
