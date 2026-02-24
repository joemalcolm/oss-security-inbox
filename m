Received: (qmail 7598 invoked by uid 550); 24 Feb 2026 01:31:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7764 invoked from network); 24 Feb 2026 01:16:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:reply-to:sender:bcc
	:content-type; bh=CTRpRBjFkukeCm/O5netVlQ65Q/0NW1fkMRW433+ZpA=; b=PeTikm4SgJ+
	edTjE9dOHJfW0oxOWrjhCv7yk0gF1aIQASVwHmJzbzpInd81NOq5TJ1n20QADrHnEcR71ucM+sYqt
	/b3UJzPUG9A30dDRdGSLVWrwShWdAwIx/TphrGOnkqC6bjQIQ14PwU0Oifr25a80fbOvRMbV8GLD7
	xzTN4A9u7Je0wuccYxXEejubB+sXGXqVe1reofBEEH7IF31yBmMBfBmL5HEH0rk7vT4LDzMn6hDCf
	ATeP1EUcGmWC20VOnLtQDeFJk/0VyP8p/CWHmso9y3+r5YWItnba9SA3DFGaew7LdS97eMHDqoc2n
	Q45jW7B1CszSreUYa7cZ77A==;
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: bug-inetutils@gnu.org
Cc: oss-security@lists.openwall.com,
	ron.benyizhak@safebreach.com,
	simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de,
	justin.swartz@risingedge.co.za
Date: Tue, 24 Feb 2026 03:17:02 +0200
Message-Id: <20260224011702.27987-1-justin.swartz@risingedge.co.za>
In-Reply-To: 877bso8mhf.fsf@josefsson.org
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.01)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuXUzmxfzh7Z4Dx+dbyAkBe/9D/8i6Lc2zzg
 9OCfZpgPtiu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTjKObI56Hip2ydjMgBUNyExBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9Zamk/MP3PZ/WkSX8ijpi24hSnw9YyoGHx/ukuag1WKBLWDaO
 GAC1PCRtpOZuVuRfKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBro7NG5FMnAx+YiDY2J/czJYIiHqfCgG4wrA3w4/kQTaLfhXaMgiD0j3v6Ie9X8yyj1/xcFmN
 2gmDp/QCUjN+OUTPsBNlYsg2RE2JIyJsI13u3V00QFF+2PiacFzwKDT+/9/BXfUFWox8d0G2C5Et
 g6RV4fphJGzuk+bvllsyzdKZApMTuWIkofgVn7cRWu10YRQgQ8NF3s6imfEk9oyT/lpXuJVMz/5K
 MAC6MvnNtnmD/jYvZ97q/fBiz4kjAVM6FFAZtQNDnlhGnUaeyJI6TDxIPj1UU4msT2Odp9D6f/Pr
 FHB1u8YRit7Sa8u0d7lbGsEDUKXo9VMTbBDpizLbbt9s1MCxQY2Kx+MqFAM23V701WoMiPn83HLf
 fPgzouOJg5R2JBa6t4vTyHfeWeXO7xG6rkll6AAP0CBAC6x4SmfonV+E7OMXRvgtdyMlnmWi/p10
 e4lQEH3m7WpeU15/60wJcbOJBOs6pNBcmyhvh12o2aF+genPHVjxCQbDyA6igjX9pD83Ie7FLaa3
 HeG10IP0/CLBxnLAIK4H5dAG4DZr6AuToorcPNCXkuC83pzQWm6qnSi1EC2MkdqyNBri79jcuVG5
 ACLYKmHY8r5F+R8wLHqQ84mpNpGNmESqXk8f6RtR0cDUPzqvLm87F045+u5n7C/S2pobtMX+U/CK
 srvLt60TnT/+90gT7+vv09onljI47W0teAcBBvsmsGPBu2AljMHWoeZpvlvjvAEkZdPlnmxH7Pd4
 xT6MyYGIdovMpHyszFpSLrvi4zvqc5MqffUm5nYcIp46tr56ygvxeg9QcAPSPkxpz918jq2994/H
 L9X9TAIdEJMzujBlq4KimpTzbye+G2lEC7PJG5Tr940=
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: Telnetd Vulnerability Report 

Greetings,

I have been reviewing the recent vulnerability report by Ron Ben Yizhak regarding CREDENTIALS_DIRECTORY, as well as commit 4db2f19f which introduces unsetenv("CREDENTIALS_DIRECTORY") to address the problem.

After becoming aware of CVE-2026-24061 (telnetd in GNU Inetutils through 2.7 allows remote authentication bypass via a "-f root" value for the USER environment variable), I was curious to find out whether there'd also been a potential regression of CVE-1999-0073, described as: telnet allows a remote client to specify environment variables including LD_LIBRARY_PATH, allowing an attacker to bypass the normal system libraries and gain root access. I can confirm that this is still an issue 27 years later, despite attempts at blacklisting environment variables by prefix or full name.

The problem stems from telnetd executing /bin/login in a root-to-root context, which means that AT_SECURE is set to 0 by the kernel in the process's auxiliary vector. When AT_SECURE holds a positive value, it informs the dynamic linker (ld-linux.so) and libc to enter a "secure-execution mode" where a bunch of interesting environment variables are discarded or, at least, defanged if present. In other words, the responsibility is on telnetd itself to ensure that none of those potentially interesting, and attacker controlled, variables make their way to /bin/login.

While using unsetenv() negates a user's ability to exploit the login.noauth vector, the possibility still exists for the inclusion of variables of interest to GNU gettext (such as OUTPUT_CHARSET or LANGUAGE) and glibc (such as GCONV_PATH) via the telnet protocol itself.

For example, by injecting OUTPUT_CHARSET and LANGUAGE, an attacker can persuade gettext that a character set conversion is necessary. This forces gettext to call libc's iconv_open(), and because AT_SECURE is 0, iconv_open() will use an injected GCONV_PATH in its quest for a gconv-modules file. Assuming the attacker already has a local unprivileged account, or at least a means of uploading files to the host (and knowing the location of the uploaded files), a custom gconv-modules file will allow arbitrary shared objects to be loaded soon after /bin/login attempts to print a localized prompt.

For proof of concept, I've declared a broad selection of LANGUAGE codes for the best chance of matching an installed locale. An attacker with local access could simply determine what's actually installed and select only one that doesn't match the system's default locale instead. Similarly, OUTPUT_CHARSET has been chosen as a deliberate mismatch against the very common choice of UTF-8:

  abuser@prospecton.hyperama:~$ ls -al .gconv
  total 184
  drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
  drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
  -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
  -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so


  abuser@prospecton.hyperama:~$ telnet -l abuser
  telnet> environ define GCONV_PATH /home/abuser/.gconv
  telnet> environ export GCONV_PATH
  telnet> environ define LANGUAGE fr:de:es:it:pt:nl:sv:pl:uk:ru:zh_CN:ko:ja
  telnet> environ export LANGUAGE
  telnet> environ define OUTPUT_CHARSET ISO-8859-1
  telnet> environ export OUTPUT_CHARSET
  telnet> open 127.0.0.1
  Trying 127.0.0.1...
  Connected to 127.0.0.1.
  Escape character is '^]'.
  
  Linux (localhost) (pts/6)
  
  Connection closed by foreign host.


  abuser@prospecton.hyperama:~$ ls -al .gconv
  total 184
  drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
  drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
  -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
  -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so
  -rwsr-sr-x 1 root   root   125640 Jan  1  1970 trash


  abuser@prospecton.hyperama:~$ .gconv/trash -p
  # id
  uid=1001(abuser) gid=1002(abuser) euid=0(root) egid=0(root) groups=0(root),1002(abuser)


Once the telnet connection opens, /bin/login tries to print the localized prompt but gettext recognizes the encoding mismatch and calls iconv_open() to parse the gconv-modules file in the directory referenced by the injected path before loading the shared object that turns cash ($) to trash (#). The connection drops because I included a call to exit() once the payload has executed. As illustrated above, the payload effectively asserts root privilege and makes a copy of /bin/sh with SUID/SGID permissions. Note that no authentication via telnetd was required, nor performed, for this privilege escalation trick to occur. Also note that this is just one of many possible methods that may be used to exploit this condition.

In my opinion, to fix this issue and finally put the ghost of CVE-1999-0073 to rest: telnetd must drop the blacklist approach and adopt the OpenSSH AcceptEnv-style approach suggested by Simon Josefsson [1], which amounts to preparing a brand new environment for /bin/login based on a strict whitelist of variables names considered to be "safe", and perhaps a healthy dose of input sanitization for their respective values.

In terms of the CVE that Ron Ben Yizhak had asked about earlier in the thread: I think it might make the most sense to co-ordinate a single CVE for "Improper environment sanitization in telnetd" that comprehensively covers both the CREDENTIALS_DIRECTORY vector and this dynamic linker escape.

I'm happy to share the intentionally redacted payload privately with the maintainers should any help be required to reproduce the proof of concept.

Regards,
Justin

---

[1] https://lists.gnu.org/archive/html/bug-inetutils/2026-02/msg00002.html
