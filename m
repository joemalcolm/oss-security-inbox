X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1251" "Monday" "5" "December" "2016" "16:27:38" "-0600" "Steven M. Schweda" "sms@antinode.info" "<16120516273894_2020046C@antinode.info>" "36" "[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow" nil nil nil "12" "2016120522:27:38" "[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow" (number mark "U       sms@antinode Dec  5   36/1251  " thread-indent "\"[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25629 invoked by uid 550); 5 Dec 2016 22:36:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23954 invoked from network); 5 Dec 2016 22:34:34 -0000
Date: Mon, 5 Dec 2016 16:27:38 -0600 (CST)
Message-Id: <16120516273894_2020046C@antinode.info>
From: "Steven M. Schweda" <sms@antinode.info>
To: tyhicks@canonical.com, oss-security@lists.openwall.com
Cc: security@ubuntu.com, Info-ZIP-Dev@goatley.com
X-VMS-To: SMTP%"tyhicks@canonical.com" SMTP%"oss-security@lists.openwall.com"
X-VMS-Cc: SMTP%"security@ubuntu.com", IZ,SMS
Subject: [oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow

From: Tyler Hicks <tyhicks@canonical.com>

> >    Thanks for the (thorough, helpful) report.
> 
> I appreciate it but Alexis deserves most of the credit.

   The item in the next History.610 file should resemble:

 - In ZipInfo ("-Z", /ZIPINFO) short-format ("-s", /SHORT, default)
   reports, an unexpectedly large compression method value (>999) caused
   a (mostly harmless) buffer overflow, and spoiled the report format.
   Now, values less than 1000 are displayed as before, using a
   three-digit decimal format, "uDDD", but larger values are displayed
   using a four-digit (unlabled) hexadecimal format, "XXXX".
   https://launchpad.net/bugs/1643750
   (zipinfo.c) [Alexis Vanden Eijnde, Tyler Hicks, SMS]

(Credit is cheap.)

> Thanks for the quick fix. Is there a public code repository available so
> that we can reference a specific commit that fixes this issue?

   No.  We've been thinking about it, though.

> Nope. As you probably noticed, MITRE just assigned a CVE. It likely
> helped that you confirmed the issue.

   Swell.  (One fewer thing I need to know.)

>  Thanks again!

   Same to you (plural).

------------------------------------------------------------------------

   Steven M. Schweda               sms@antinode-info
