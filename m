X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3495" "Sunday" "20" "November" "2016" "11:59:15" "-0800" "Apache OpenOffice Security" "orcmid@apache.org" "<000201d24368$92624820$b726d860$@apache.org>" "103" "[oss-security] CVE-2016-6803: Apache OpenOffice unquoted search path vulnerability" nil nil nil "11" "2016112019:59:15" "[oss-security] CVE-2016-6803: Apache OpenOffice unquoted search path vulnerability" (number mark "U       orcmid@apach Nov 20  103/3495  " thread-indent "\"[oss-security] CVE-2016-6803: Apache OpenOffice unquoted search path vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7385 invoked by uid 550); 20 Nov 2016 20:00:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6089 invoked from network); 20 Nov 2016 19:59:28 -0000
From: "Apache OpenOffice Security" <orcmid@apache.org>
To: <oss-security@lists.openwall.com>
Date: Sun, 20 Nov 2016 11:59:15 -0800
Organization: Apache OpenOffice
Message-ID: <000201d24368$92624820$b726d860$@apache.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdJDaH4wlSOU2nk8R8ueWRLOm5rr7w==
Content-Language: en-us
Subject: [oss-security] CVE-2016-6803: Apache OpenOffice unquoted search path vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256


CVE-2016-6803
<http://cve.mitre.org/cgi-bin/cvename.cgi?name=2016-6803>
Apache OpenOffice Advisory
<https://www.openoffice.org/security/cves/CVE-2016-6803.html>

Title: Windows Installer Can Enable Privileged Trojan Execution

Version 1.0
Announced October 11, 2016

Description

The Apache OpenOffice installer for Windows contained a defective
operation that could trigger execution of unwanted software
installed by a Trojan Horse application.  The installer defect 
is known as an "unquoted Windows search path vulnerability."

In the case of Apache OpenOffice installers for Windows, the PC must
have previously been infected by a Trojan Horse application (or user) 
running with administrator privilege.  Any installer with the unquoted 
search path vulnerability becomes a delayed trigger for the exploit.  
The exploit may already have operated on the user's PC.

Severity: Medium

    There are no known exploits of this vulnerability.
    A proof-of-concept demonstration exists.

Vendor: The Apache Software Foundation

Versions Affected:

    All Apache OpenOffice versions 4.1.2 and older 
    are affected.  Old OpenOffice.org versions are also
    affected.

    
Mitigation:

Install Apache OpenOffice 4.1.3 for the latest maintenance and 
cumulative security fixes.  Use <https://www.openoffice.org/download/>.

If instead of a typical installation you use a custom-installation
option to change the location where Apache OpenOffice is installed,
use a location that has no spaces in its full-path name.


Defenses and Work-Arounds:

If you are unable to update to 4.1.3, there are other 
precautions that can be taken.  These precautions are also 
recommended as protection against other software that may 
have the unquoted search path vulnerability.

Ensure that there are no programs installed at the
top-level folder (usually C:\) where Windows is installed.  
All are dangerous, especially ones named "Program", whether
"Program.exe" or some other variation.    

If such programs are found, install or update to current 
anti-virus/-malware software.  Perform a complete system scan.  
The scan may provide for removal of programs where there should 
not be any.  If that does not happen, it is necessary to remove
any Program.exe and others manually using administrator privilege.


Further Information:

For additional information and assistance, consult the Apache
OpenOffice Community Forums, <https://forum.openoffice.org/> or 
make requests to the <mailto:users@openoffice.apache.org> public
mailing list.  Defects not involving suspected security
vulnerabilities can be reported via
<http://www.openoffice.org/qa/issue_handling/pre_submission.html>.

      
The latest information on Apache OpenOffice security bulletins 
can be found at the Bulletin Archive page 
<http://www.openoffice.org/security/bulletin.html>.

Credits: 

The Apache OpenOffice project acknowledges the reporting and
analysis for CVE-2016-6803 by Cyril Vallicari.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX/C+GAAoJEPluif/UVmKK0VkH/0+K2SNXK1e9ccRjo71/Ns3/
KRK8w/7MqpnSoFIRXD7tn8eB/GY/RwuqlMCkf0zAvif6uzhe/OPgf9JYt22k4eIS
trR61K4SBicyZFpe9HmUrIH9Ucvdgy9Vu6VgOBFger7C39fcyUfnI/1S9wAXjb6y
Yab0/woIVuJxVX7u33kYOS+G52NVzxV4+qm2dhjwISYwxkNCEGh10zpTIIk1VnB3
p3JCGQ4k/tG2Fu30/qap1OmfvgHVP6qBl7b47ZCekc6JErSlGoJ8ZE6PJnNXq92A
0/YjlAUCGguaAg5ec18Qnkm2Ef6anmViBxoPgtxt38cCHV63tuWn7uZnCVKn1qk=
=aKVN
-----END PGP SIGNATURE-----



