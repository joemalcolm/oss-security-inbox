X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2549" "Friday" "18" "December" "2015" "08:12:05" "+0000" "CSW Research Lab" "disclose@cybersecurityworks.com" "<CAMWaY3N8yZjXSkt4DbxC2DKg6qoVx0-ruwaMxai63EKM8VROPA@mail.gmail.com>" "91" "[oss-security] [FD] [CVE-2015-8606] SilverStripe CMS & Framework v3.2.0 - Cross-Site Scripting Vulnerability" nil nil nil "12" "2015121808:12:05" "[oss-security] [FD] [CVE-2015-8606] SilverStripe CMS & Framework v3.2.0 - Cross-Site Scripting Vulnerability" (number mark "U       disclose@cyb Dec 18   91/2549  " thread-indent "\"[oss-security] [FD] [CVE-2015-8606] SilverStripe CMS & Framework v3.2.0 - Cross-Site Scripting Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7317 invoked by uid 550); 18 Dec 2015 16:46:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24000 invoked from network); 18 Dec 2015 08:12:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=u+2/gCZZvziCjeWsl8bO7fGoCSHkqZUr4bhmnOfiGe4=;
        b=V0jKwomjbZESk5l8pi1L8iZ9VFmGGAxicv2VJxzjbFnxOky6wDuHZ70vPTgxd37XxH
         ZGULhsA8YyghgThoAh0zou+8vyExen95hZczfUWqZYain+IRiNPat6dtEuxkN98BewKA
         +p2cjdbNXCQGV/DL3/iUIUNhD4mhoxXzf8SSrboEisq0CkRNI4rqgYo4twqjnwNgvIMJ
         pb6WBSCVuI8fJtklJ5KxCZd1hiGTeTjmKDp3FaW8kWoo8ztEw8HR/ewsns8GUdEEtapo
         L9kVj9A8nKRlrCBaxhcOiMrrYtEk9XZSvFQSpY9Zsk4LVEBI23jJzufb09oqkVPrVIB/
         9sjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=u+2/gCZZvziCjeWsl8bO7fGoCSHkqZUr4bhmnOfiGe4=;
        b=m3fPPjNix3oQiUp+S+IUUfNDdDncBsud94sJVYCWGsWiD9lK54Flo5DaHxdtcmV4ba
         yk6vBkLwRdg6tOQ08IR03TeUdNGzp3OXfWXjlnD9Cdg0V2opPy2JmUBjnqanGRoKz5QB
         646XOnT6WnGSCwb02fMhXpnq/sY0/lW5E1uVQCSKzA39BM/ZauLJVS21+J4u+yGzIVd0
         YjdmKnETyMwyBV/ZFXq+9drIx8QbwfJJLgt9DZdKQ7jeTaFSLPwQLmvbgXU1VqoINeT/
         s9LEnf+Z8Wd6Jnzoy4WGgXZNDFg+sWqjcLmtq/BcabheSIr/uoztkxvvhWtYadOWO5Wb
         jvYQ==
X-Gm-Message-State: ALoCoQmPAIlltahhXi7Hn7w5SxDqoh1KdM2FiFUnMvw8mnoC1H9CK85TeLjZ3LWUFhLB/AEdQ1uAjwTpAzSAcXZZRNA9zKyF9Q==
X-Received: by 10.107.34.199 with SMTP id i190mr3349424ioi.150.1450426335432;
 Fri, 18 Dec 2015 00:12:15 -0800 (PST)
MIME-Version: 1.0
From: CSW Research Lab <disclose@cybersecurityworks.com>
Date: Fri, 18 Dec 2015 08:12:05 +0000
Message-ID: <CAMWaY3N8yZjXSkt4DbxC2DKg6qoVx0-ruwaMxai63EKM8VROPA@mail.gmail.com>
To: "fulldisclosure-request@seclists.org" <fulldisclosure-request@seclists.org>, 
	"vuln@secunia.com" <vuln@secunia.com>, 
	"submissions@packetstormsecurity.com" <submissions@packetstormsecurity.com>, 
	"bugs@securitytracker.com" <bugs@securitytracker.com>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a1140d9447f2b95052727b26d
Subject: [oss-security] [FD] [CVE-2015-8606] SilverStripe CMS & Framework v3.2.0 - Cross-Site
 Scripting Vulnerability

--001a1140d9447f2b95052727b26d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D[SilverStripe CMS & Framework v3.2.0 =E2=80=93 Cross-S=
ite Scripting
Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Information
**********************

Vulnerability Type : Cross Site Scripting Vulnerability
Vulnerable Version : 3.2.0
Severity: Medium
Author =E2=80=93 Arjun Basnet
CVE-ID: CVE-2015-8606
Homepage: https://www.silverstripe.org/download/

Description
***********************

SilverStripe CMS is prone to Cross-site scripting vulnerability because it
fails to sanitize user-supplied input. An attacker may leverage this issue
to execute arbitrary script code
in the browser of an unsuspecting user of the affected site.

Proof of Concept URL
***************************

[+]
http://192.168.56.101/SilverStripe/admin/security/EditForm/field/Members/it=
em/new/ItemEditForm

Severity Level:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
Medium

Description:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

Vulnerable Product:

[+] SilverStripe CMS & Framework v3.2.0


Vulnerable Parameter(s):

[+]  Locale
[+]  FailedLoginCount

Report Timeline
************************

05-Nov-2015- Reported
11-Nov-2015- Vendor Response
16-Nov-2015- Vendor Fixed
13-Dec-2015- Public disclosed

Fixed Version:
*****************

[+] SilverStripe CMS & Framework v3.2.1


References
*****************

[+] http://www.silverstripe.org/download/security-releases/ss-2015-026
[+] https://www.owasp.org/index.php/Cross-site_Scripting_(XSS)

Credits & Authors
--------------------
Arjun Basnet from Cyber Security Works Pvt. Ltd. (
http://cybersecurityworks.com)

About Cybersecurityworks
--------------------------------------------
Cybersecurity Works is basically an auditing company passionate working on
findings & reporting security flaws & vulnerabilities on web application
and network. As professionals, we handle each client differently based on
their unique requirements. Visit our website
http://www.cybersecurityworks.com/ for more information.

--001a1140d9447f2b95052727b26d--
