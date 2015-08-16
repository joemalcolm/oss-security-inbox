X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4930" "Sunday" "16" "August" "2015" "09:07:42" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNXi_y5McviXZWBgni0BySKD-HZtie=KtqUNo2+_+9n1aA@mail.gmail.com>" "132" "[oss-security] CVE request: UnrealIRCd crash issue if SASL is enabled" nil nil nil "8" "2015081616:07:42" "[oss-security] CVE request: UnrealIRCd crash issue if SASL is enabled" (number mark "        reed@reedlod Aug 16  132/4930  " thread-indent "\"[oss-security] CVE request: UnrealIRCd crash issue if SASL is enabled\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21911 invoked by uid 550); 16 Aug 2015 16:07:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21796 invoked from network); 16 Aug 2015 16:07:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=B5meeezT9+IrU9iDIIKXi0NAVR/3Vap7F9/YGobKOXI=;
        b=DnRCTNXkg1QKoGPlh4ZYZH51bD5jDgYdou6NwaMMwldZPHLA1SmbBo1c9J3U2xs627
         GCcn0YnkrSvoKXUKCS/wHPC2E5fv9vZsxF5BkE+drUzIs3xEgli29it4RAw6uFEsYJz/
         UXp7BnPPT5NeQvsEx1NaS2m9YmxzsMx2sWIt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=B5meeezT9+IrU9iDIIKXi0NAVR/3Vap7F9/YGobKOXI=;
        b=G57a7KWFzUEW5w58U3zVSuorfYHG7v0wuVXe7UX1Kd5rCMi90CkuIqJ0flHszcPwxR
         Uaupim8prvBW/VcGDRv3CTaVGa+uK/g3ZmOQ7+excauGfjlkr8xUXjOE14rGpV1SeCuL
         rpXEj5SV18DBN9j0Ur38x4zmjbErwGlM1bfKxOsbaU9CIYvVEC/KeCqJWa9HiFRE+tH7
         /ClkzV9PnigU9DhjdKnGPWUcQVlEewK/Le9WbTFuj/CPaimuTgKBghRkdU7TVhiXcrLZ
         g7tsiJIsZGM0ihqdvRqIkY7zb4rc4LU8j2oEv0oxTQO4tQfwN9QNBVKayjDCb5LINsSt
         rDZQ==
X-Gm-Message-State: ALoCoQmN3AHJoo6FodpMhAK+ddPs88XOh44jOZBBO0eSJejRCtjmytE9y6MC5zYLoBVki92NXdzZ
MIME-Version: 1.0
X-Received: by 10.107.167.199 with SMTP id q190mr2090781ioe.119.1439741262544;
 Sun, 16 Aug 2015 09:07:42 -0700 (PDT)
Message-ID: <CALPTtNXi_y5McviXZWBgni0BySKD-HZtie=KtqUNo2+_+9n1aA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1141f3be85dffb051d6fe2c5
Date: Sun, 16 Aug 2015 09:07:42 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: UnrealIRCd crash issue if SASL is enabled
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a1141f3be85dffb051d6fe2c5
Content-Type: text/plain; charset=UTF-8

Doesn't look like a CVE was assigned for this. Requesting one.

~reed

---------- Forwarded message ----------
From: *Bram Matthys* <syzop@vulnscan.org>
Date: Sunday, August 16, 2015
Subject: Security: UnrealIRCd crash issue if SASL is enabled
To: UnrealIRCd Release Announcements <unreal-notify@lists.sourceforge.net>,
Unreal-Users <unreal-users@lists.sourceforge.net>


UNREALIRCD SECURITY ADVISORY
=============================

Summary: If SASL support is enabled in UnrealIRCd (this is not the default)
and is also enabled in your services package then a malicious user with
a services account can cause UnrealIRCd to crash.

Most people have not enabled SASL, and those who do can easily fix
this potential crash issue without a server restart. See below.

Index:
* Who is affected
* Solutions
* Workaround
* Patch / hotfix
* New versions
* Bug details
* Timeline
* References

==[ WHO IS AFFECTED ]==
For a user to be able to crash UnrealIRCd *ALL* of the following conditions
must be true:
1) Must be running UnrealIRCd version 3.2.10 or higher (including 3.2.10.4).
    The 3.4.x series are also affected (including 3.4-beta2).
2) In your configuration file (unrealircd.conf or included files) you have
    configured a SASL server via set::sasl-server
3) You are using a services package (such as anope) and the server is linked
4) SASL support is enabled in your services
5) The malicious user has (or can) register an account at services (usually
    via NickServ).

If one of the points above is not true for your installation then a remote
user cannot crash your server via this bug. In particular, if you are not
using SASL then no patch or upgrade is needed and you can stop reading here.

If you are unsure if you have enabled SASL then search for sasl-server
in your configuration files. If this word is not found then SASL is
disabled. This will actually be the case for the majority of installations.
When SASL is enabled in the configuration file it will look like this:
set {
         sasl-server "services.something.net";
};

==[ SOLUTIONS ]==
For UnrealIRCd 3.2.10.x we present 3 possible solutions in case you are
affected by this bug:
1) A workaround (NO restart needed)
2) A patch (NO restart needed) (*NIX only)
3) A new UnrealIRCd version (for new installations)

For the UnrealIRCd 3.4 beta series we suggest you to upgrade to 3.4-beta3.

==[ WORKAROUND ]==
If you remove the sasl-server directive from your configuration file
and rehash the IRCd then SASL support will be disabled.
This is an easy workaround but for most people who have SASL enabled this
won't be an acceptable solution.

==[ PATCH / HOTFIX ]==
If you are on *NIX then it's possible to fix the crash issue by patching
the source, recompiling UnrealIRCd, and then rehashing the server.
This will fix your IRC server without requiring a server restart.

Execute the following commands on the shell from your UnrealIRCd directory,
for example from /home/irc/Unreal3.2.10.4:

wget http://www.unrealircd.org/downloads/sasl.patch
patch -p0 <sasl.patch
make && make install

After doing the above you must rehash the IRCd. Either online as an IRCOp
by using the /REHASH command, or via ./unreal rehash on the command line.

==[ NEW VERSIONS ]==
New versions of UnrealIRCd are available which include a fix for this issue.
They are 3.2.10.5 (stable) and 3.4-beta3 (development version).
The new versions are meant for Windows users and new installations.
For *NIX users with existing installations we suggest to use the patch or
workaround instead because doing so incurs no downtime.

==[ BUG DETAILS ]==
Type of bug:          Crash due to NULL pointer dereference

CVSS v2:              AV:N/AC:L/Au:S/C:N/I:N/A:C/E:F/RL:OF/RC:C
CVSS Base Score:      6.8
CVSS Temporal Score:  5.6

==[ TIMELINE ]==
Times are in UTC+2
2015-08-13 00:20    Bug reported privately to UnrealIRCd team
2015-08-13 07:55    First response
2015-08-13 16:05    Bug confirmed by developer
2015-08-15 16:15    Patched
2015-08-16 09:00    Source and binary releases ready
2015-08-16 15:05    Security advisory sent out

==[ REFERENCES ]==
This advisory (and updates to it, if any) is available from:
https://www.unrealircd.org/txt/unrealsecadvisory.20150816.txt
Forum thread:
https://forums.unrealircd.org/viewtopic.php?t=8401

--
Bram Matthys
Software developer/IT consultant        syzop@vulnscan.org <javascript:;>
Website:                                  www.vulnscan.org
PGP key:                       www.vulnscan.org/pubkey.asc
PGP fp: EBCA 8977 FCA6 0AB0 6EDB  04A7 6E67 6D45 7FE1 99A6

------------------------------------------------------------------------------
_______________________________________________
Unreal-notify mailing list
Unreal-notify@lists.sourceforge.net <javascript:;>
https://lists.sourceforge.net/lists/listinfo/unreal-notify

--001a1141f3be85dffb051d6fe2c5--
