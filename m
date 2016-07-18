X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2322" "Monday" "18" "July" "2016" "18:40:45" "+0200" "Stefan Kanthak" "stefan.kanthak@nexgo.de" "<349F8012416243FAAB5472AF1AD20C37@W340>" "69" "[oss-security] [CVE-2016-1281] NOT FIXED: VeraCrypt*Setup*.exe still vulnerable to DLL hijacking" nil nil nil "7" "2016071816:40:45" "[oss-security] [CVE-2016-1281] NOT FIXED: VeraCrypt*Setup*.exe still vulnerable to DLL hijacking" (number mark "U       stefan.kanth Jul 18   69/2322  " thread-indent "\"[oss-security] [CVE-2016-1281] NOT FIXED: VeraCrypt*Setup*.exe still vulnerable to DLL hijacking\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30285 invoked by uid 550); 18 Jul 2016 16:49:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27683 invoked from network); 18 Jul 2016 16:43:23 -0000
X-Greylist: Passed host: 84.153.152.187
X-DKIM: Sendmail DKIM Filter v2.8.2 mail-in-06.arcor-online.net 3rtTWM3RsHz8RgB
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nexgo.de; s=mail-in;
	t=1468860191; bh=NfMiaj7Zfrrq+8lAoXJGunvlN1XZW1CmOcGWJN9rJiw=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=K8uXKW25waNNNhAXN8D4azoDsxC73gsGFb1UBYBLCekBqWQj+9A+nk0O0I0iDLwuA
	 Mrnmp7RcHNIHYME4lCvjIqyRk5Fc7rT5rgg6OBeBe6rgYueSQKBwjXU97/iXxG5XuJ
	 09ZlNKyHm9L2960W5uhGfaPtZjIrhKZeW0R9kGmU=
X-Greylist: Passed host: 84.153.152.187
X-Greylist: Passed host: 84.153.152.187
Message-ID: <349F8012416243FAAB5472AF1AD20C37@W340>
From: "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To: <oss-security@lists.openwall.com>
Cc: <fulldisclosure@seclists.org>,
	<bugtraq@securityfocus.com>
Date: Mon, 18 Jul 2016 18:40:45 +0200
Organization: Me, myself & IT
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5931
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
Subject: [oss-security] [CVE-2016-1281] NOT FIXED: VeraCrypt*Setup*.exe still vulnerable to DLL hijacking

Hi @ll,

this is basically a followup to <http://seclists.org/oss-sec/2016/q1/58>

CVE-2016-1281 is NOT FIXED!

I've retested the current "VeraCrypt Setup 1.17.exe" on a fully
patched Windows 7, and it is STILL (or AGAIN) vulnerable there.

The following DLLs are loaded from the "application directory"
and their DllMain() executed: VSSAPI.dll, ATL.dll, VSSTrace.dll.

See <https://cwe.mitre.org/data/definitions/426.html>,
<https://cwe.mitre.org/data/definitions/427.html> and
<https://capec.mitre.org/data/definitions/471.html> for details
about this well-known and well-documented beginner's error!

Due to the application manifest embedded in the executable installer
which specifies "requireAdministrator" the installer is run with
administrative privileges ("protected" administrators are prompted
for consent, unprivileged standard users are prompted for an
administrator password); execution of the DLLs therefore results
in an escalation of privilege!

For software downloaded with a web browser the "application
directory" is typically the user's "Downloads" directory: see
<https://insights.sei.cmu.edu/cert/2008/09/carpet-bombing-and-directory-poisoning.html>,
<http://blog.acrossecurity.com/2012/02/downloads-folder-binary-planting.html>
and <http://seclists.org/fulldisclosure/2012/Aug/134> for prior
art!


Mitigation:
~~~~~~~~~~~

DUMP executable installers, build packages for the target OS' native
installer instead!

See <http://home.arcor.de/skanthak/!execute.html>
as well as <http://home.arcor.de/skanthak/sentinel.html> for the long
sad story of these vulnerabilities.


stay tuned
Stefan Kanthak


Timeline:
~~~~~~~~~

2015-12-23    vulnerability report sent to author

2016-01-03    author confirmed vulnerability, got CVE-2016-1281

              worked with author until he finally was able to build
              an installer which didn't show this vulnerability.

              Also notified author:
              "as soon as Microsoft introduces new/other dependencies
               between Windows' system DLLs or refactors them (again)
               this vulnerability will VERY likely resurface again."

2016-01-11    report published by author (see above)

2016-07-01    vulnerability report sent to author ("I told you so!")

              NO RESPONSE

2016-07-17    report published
