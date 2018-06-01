X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3962" "Friday" "1" "June" "2018" "15:18:44" "+0200" "Stefan Kanthak" "stefan.kanthak@nexgo.de" "<39F1760BE5F140BDB54F91F084E43FD6@W340>" "127" "[oss-security] Re: CVE request: rufus" nil nil nil "6" "2018060113:18:44" "[oss-security] Re: CVE request: rufus" (number mark "U       stefan.kanth Jun  1  127/3962  " thread-indent "\"[oss-security] Re: CVE request: rufus\"\n") "<4fbe30e1-0bcd-f0f3-f0b1-0801ca9b7ab9@akeo.ie>" ("<77B308CE34E747C3AE00239F60DBAEE4@W340>" "<6d79aec1-dd2e-a18e-6a4e-d9105f740d64@akeo.ie>" "<678AB44AD82642D6993A19E3C8ADCB9E@W340>" "<4fbe30e1-0bcd-f0f3-f0b1-0801ca9b7ab9@akeo.ie>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16042 invoked by uid 550); 1 Jun 2018 14:13:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3122 invoked from network); 1 Jun 2018 13:23:49 -0000
Message-ID: <39F1760BE5F140BDB54F91F084E43FD6@W340>
From: "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To: <oss-security@lists.openwall.com>
References: <77B308CE34E747C3AE00239F60DBAEE4@W340> <6d79aec1-dd2e-a18e-6a4e-d9105f740d64@akeo.ie> <678AB44AD82642D6993A19E3C8ADCB9E@W340> <4fbe30e1-0bcd-f0f3-f0b1-0801ca9b7ab9@akeo.ie>
Date: Fri, 1 Jun 2018 15:18:44 +0200
Organization: Me, myself & IT
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5931
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.7474
X-VADE-STATUS: LEGIT
Subject: [oss-security] Re: CVE request: rufus

> On 2018.05.31 19:04, Stefan Kanthak wrote:
>> As always, your poor reading skills perfectly match your poor programming
>> skills.
> 
> Ad hominem.

Wrong. The plain and simple truth.

>> "We" wait until the requested CVEs are assigned for both well-known
>> vulnerabilities.
> 
> Again, what happened to responsible disclosure?

What happened with YOUR responsibility to protect YOUR user's from YOUR
faults.

>> DLL spoofing was VERY well known long before 2016, and it is neither restricted
>> to the CWD nor to runtime linking:
> 
> You are deliberately misinterpreting what I said.

Wrong again:

| Also, FYI, we did apply mitigation for #1 (DLL sideloading attacks) very 
| shortly after the time it became publicized:

Read again what you wrote, and especially notice the plural inside the
parentheses.
In short: you LIED!

> In 2016 there was a new DLL side loading vulnerability that made the 
> rounds, and that we mitigated against.

Wrong again: ALL DLL spoofing vulnerabilities are known since more than
20 years.
To write programs that still show it is a "bloody beginner's error".

[...]

>> Until then, to protect your users, remove Rufus from the net!
> 
> I will only say this once: Unless you stop acting like an asshole,

Thanks.

Your incompetence and extraordinary manners deserve audience.

Let's start with the "blind command injection" of "rufus.com\r\n" your
bug-riddled software attempts, and how it fails, MISERABLY!

JFTR: see <https://cwe.mitre.org/data/definitions/377.html>
      and <https://cwe.mitre.org/data/definitions/379.html>
      plus <https://capec.mitre.org/data/definitions/29.html>

1. open a command prompt, then run the following command lines:

   SET NoDefaultCurrentDirectoryInExePath=*
   <path>\rufus-3.0.exe

   OUCH!

   JFTR: this DOCUMENTED setting was introduced with Windows Vista,
         more than 12 years ago: it's REALLY time for your homework,
         kid!
         <https://msdn.microsoft.com/en-us/library/ms684269.aspx>

2. open a command prompt, CD into a directory without "write file"
   permission, for example a CD-ROM drive, and run the following
   command line:

   <path>\rufus-3.0.exe

   OUCH!

3. open a command prompt, CD into a directory without "execute file"
   permission, i.e. where your security conscious administrator
   added the NTFS ACE "(D;OIIO;WP;;;WD)", and run the following
   command line:

   <path>\rufus-3.0.exe

   OUCH!

4. ask your security conscious administrator to set the well-known
   and well-documented policies (introduced with Windows Vista, more
   than 12 years ago: <https://support.microsoft.com/en-us/kb/979621>,
   <https://msdn.microsoft.com/en-us/library/bb530324.aspx>)

   [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices]
   "Deny_All"=dword:00000001

   [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices\{53F56307-B6BF-11D0-94F2-00A0C91EFB8B}]
   "Deny_Execute"=dword:00000001
   "Deny_Write"=dword:00000001

   [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices\{53F5630A-B6BF-11D0-94F2-00A0C91EFB8B}]
   "Deny_Execute"=dword:00000001
   "Deny_Write"=dword:00000001


   [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices\{53F5630D-B6BF-11D0-94F2-00A0C91EFB8B}]
   "Deny_Execute"=dword:00000001
   "Deny_Write"=dword:00000001

   [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices\{53F56311-B6BF-11D0-94F2-00A0C91EFB8B}]
   "Deny_Execute"=dword:00000001
   "Deny_Write"=dword:00000001

   then open a command prompt, CD into a directory on a removable
   volume, and run the following command line:

   <path>\rufus-3.0.exe

   OUCH!

5. open a command prompt, run the following command line, and
   immediately switch the focus to an editor window (for example):

   <path>\rufus-3.0.exe

   OUCH!

That's what I call "bloody beginner's error".
Or just EPIC FAIL!

stay tuned
Stefan
