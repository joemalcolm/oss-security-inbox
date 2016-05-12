X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2921" "Friday" "13" "May" "2016" "00:20:44" "+0100" "VoidSec" "voidsec@voidsec.com" "<305647a8-4b7a-7dac-a2ad-b976691ae05b@voidsec.com>" "78" "[oss-security] CVE Request for VirIT Explorer v.8.1.68 Local Privilege Escalation" "^Cc:" nil nil "5" "2016051223:20:44" "[oss-security] CVE Request for VirIT Explorer v.8.1.68 Local Privilege Escalation" (number mark "U       voidsec@void May 13   78/2921  " thread-indent "\"[oss-security] CVE Request for VirIT Explorer v.8.1.68 Local Privilege Escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1746 invoked by uid 550); 12 May 2016 23:36:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26057 invoked from network); 12 May 2016 23:21:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=voidsec.com; s=default;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=Lyxn+2QosfgXkzNeBcNjk62wJXgkGEPkdqLBrvdhpjQ=;
	b=LcLwI4QLV3EMKmrhzv44R+5mCxruBTSV+RAIzFeXuxK4Uah3xrJVCkrJYHeeEAXuXTqVnzS06QFv1mC5MKq5qoDm0LZkLrtPGQce5bwRcyWuOreCmqgvCjFL2qFdqYZGL6maep76Sbkhf2ZM3cQCNPq6XMx2mZVp4RR6Gt/GAkc=;
Organization: VoidSec
Message-ID: <305647a8-4b7a-7dac-a2ad-b976691ae05b@voidsec.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------8B82AC7CB1315F916D6CF77E"
X-Sender-Ident-agJab5osgicCis: voidsec@voidsec.com
Cc: cve-assign@mitre.org
Date: Fri, 13 May 2016 00:20:44 +0100
From: VoidSec <voidsec@voidsec.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for VirIT Explorer v.8.1.68 Local Privilege Escalation
To: oss-security@lists.openwall.com

--------------8B82AC7CB1315F916D6CF77E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Request a CVE ID for VirIT Explorer Lite & Pro v.8.1.68 - Local Privilege E=
scalation (SYSTEM Privilege)/Arbitrary Code Execution

Exploit Author: Paolo Stagno - voidsec@voidsec.com
Vendor Homepage: http://www.tgsoft.it
Version: VirIT Explorer Lite & Pro v.8.1.68
CVSS v2: 6.8 (AV:L/AC:L/Au:S/C:C/I:C/A:C/E:H/RL:U/RC:C)

Overview
----=20
Vir.IT eXplorer [1] is an AntiVirus, AntiSpyware and AntiMalware software m=
ade in Italy and developed by TG Soft S.a.s.

A major flaws exists in the last version of Vir.IT eXplorer, this vulnerabi=
lity allow a local attacker,
to execute arbitrary code in the context of the application with SYSTEM pri=
vilege.

Details
----=20
The flaw resides in the viritsvclite Service due to bad privileges for the =
main Vir.IT folder, by default, any user (even guest) will be able to=20
replace, modify or alter the file. This would allow an attacker to inject c=
ode or replace the executable and have it run in the context of the system.

This would allow a complete compromise of the system on which the antivirus=
 was installed; an attacker can replace the executable,=20
reboot the system and it would then compromise the machine. As NT AUTHORITY=
\SYSTEM is the highest privilege level on a Windows machine,=20
this allows a total control and access to the system.

Services: viritsvclite
Folder: %SYSTEMDRIVE%\VEXPLite
Executable: %SYSTEMDRIVE%\VEXPLite\viritsvc.exe

[2] icacls.exe VEXPLite
C:\VEXPLite Everyone:(OI)(CI)(F)    <=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D Vulnerable
            BUILTIN\Administrators:(I)(F)
            BUILTIN\Administrators:(I)(OI)(CI)(IO)(F)
            NT AUTHORITY\SYSTEM:(I)(F)
            NT AUTHORITY\SYSTEM:(I)(OI)(CI)(IO)(F)
            BUILTIN\Users:(I)(OI)(CI)(RX)
            NT AUTHORITY\Authenticated Users:(I)(M)
            NT AUTHORITY\Authenticated Users:(I)(OI)(CI)(IO)(M)

Exploit
----=20
https://gist.github.com/VoidSec/9971092829dd1fec146e1595843aae65
https://www.youtube.com/watch?v=3D5a09efEvjTk (video proof)

Remediation
----=20
Remove the permissions on the VEXPLite folder, all of its files and on the =
viritsvc.exe Service executables to allow only
privileged users to alter the files, apply vendor patch once distributed.

Footnotes
----=20
[1] http://www.tgsoft.it/english/prodotti_eng.asp
[2] https://technet.microsoft.com/en-us/library/cc753525%28WS.10%29.aspx

----

*VoidSec *| voidsec@voidsec.com <mailto:voidsec@voidsec.com> |
http://voidsec.com <http://voidsec.com/>

/The information contained in this document is confidential and/or
exclusive and is intended only for the use of the addressee.
Unauthorized use, disclosure or copying of this information, or any part
thereof is strictly prohibited and may be unlawful./


--------------8B82AC7CB1315F916D6CF77E--
