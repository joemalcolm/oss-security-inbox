X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["427" "Monday" "8" "January" "2018" "15:04:28" "+0100" "Bertrand Delacretaz" "bdelacretaz@apache.org" "<CAEWfVJmF52fMY8wYZ-35ic7=T1dnmSArDZuC3oydUJBqSugsGA@mail.gmail.com>" "14" "[oss-security] CVE-2012-3353: Apache Sling Content Loading Vulnerability" nil nil nil "1" "2018010814:04:28" "[oss-security] CVE-2012-3353: Apache Sling Content Loading Vulnerability" (number mark "U       bdelacretaz@ Jan  8   14/427   " thread-indent "\"[oss-security] CVE-2012-3353: Apache Sling Content Loading Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32644 invoked by uid 550); 8 Jan 2018 14:36:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3536 invoked from network); 8 Jan 2018 14:04:50 -0000
X-Gm-Message-State: AKGB3mLuoDk1tUgWMqaeKItKnuPO+XJmyMDlkMlaMQK7xBQzzDzTCnsy
	A6yj2MGeivkq1caN2JLWlJNECR9N/LsBxJn5uNM=
X-Google-Smtp-Source: ACJfBovUFmXNaMO09wqkywQpNWiBm3elEbgdXyBEm43AY2M+x4GV01yDirfps5Ics4Pl8rwnVKngOpzYUxiN4Fh63Tk=
X-Received: by 10.223.160.217 with SMTP id n25mr10860605wrn.25.1515420269374;
 Mon, 08 Jan 2018 06:04:29 -0800 (PST)
MIME-Version: 1.0
From: Bertrand Delacretaz <bdelacretaz@apache.org>
Date: Mon, 8 Jan 2018 15:04:28 +0100
X-Gmail-Original-Message-ID: <CAEWfVJmF52fMY8wYZ-35ic7=T1dnmSArDZuC3oydUJBqSugsGA@mail.gmail.com>
Message-ID: <CAEWfVJmF52fMY8wYZ-35ic7=T1dnmSArDZuC3oydUJBqSugsGA@mail.gmail.com>
To: dev <dev@sling.apache.org>
Cc: users <users@sling.apache.org>, 
	"security@sling.apache.org" <security@sling.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2012-3353: Apache Sling Content Loading Vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Sling  JCR ContentLoader 2.1.4

Description:
The Apache Sling JCR ContentLoader 2.1.4 XmlReader
used in the Sling JCR content loader module makes it
possible to import arbitrary files in the content repository,
including local files, causing potential information leaks.

Mitigation:
Users should upgrade to version 2.1.6 of the JCR ContentLoader
