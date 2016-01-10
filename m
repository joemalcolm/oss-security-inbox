X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["455" "Sunday" "10" "January" "2016" "15:37:12" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160110143712.GA13963@eldamar.local>" "21" "[oss-security] CVE Request: FireBird RDBMS: authenticated clients crash FireBird when running gbak with invalid parameter" nil nil nil "1" "2016011014:37:12" "[oss-security] CVE Request: FireBird RDBMS: authenticated clients crash FireBird when running gbak with invalid parameter" (number mark "U       carnil@debia Jan 10   21/455   " thread-indent "\"[oss-security] CVE Request: FireBird RDBMS: authenticated clients crash FireBird when running gbak with invalid parameter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26209 invoked by uid 550); 10 Jan 2016 14:37:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26185 invoked from network); 10 Jan 2016 14:37:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6jjQ4t7j9k+qFhB1lPgmxo+3OAaKmt53HCG+k7dm0Gk=;
        b=aU/+KoXtcqdv7B7dyzzjMpD7NFuFEdP5k4kIoC6NRgQ+yfFbqqHSgLUllXB5juINRD
         62ssT+fjk8ntTkVEHRRjLmmoe1NelyGjMPo9Qdq6CwI06pQs3E00oHd8zG1ifSynv0kW
         mtb4cEHWTLvjLkKFiWM3R2JG3dyjUntRSCOJAvhzPmWFKclUqCobZ7qNxK5ysC4lNnTn
         0A1AA9aOCPvpqm6PLokazGjjP82d3Tm/mLd3R1UexikaCfKEjJeyuvpIAE9a6kP7ZRoA
         XHXH/VCHNBXE6nCmYtGjllitQTFHjHxk7Y//97Z5qSHPUBeXqzSmnB7PvxG4zAOjIB00
         Bfeg==
X-Received: by 10.194.91.210 with SMTP id cg18mr75121644wjb.117.1452436634121;
        Sun, 10 Jan 2016 06:37:14 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 10 Jan 2016 15:37:12 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Damyan Ivanov <dmn@debian.org>
Message-ID: <20160110143712.GA13963@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: FireBird RDBMS: authenticated clients crash FireBird
 when running gbak with invalid parameter

Hi,

The FireBird RDBMS can be crashed remotely by an authenticated client
by invoking gbak via the service manager using invalid command line
switch and lead to denial of service.

The issue was introduced in version 2.5.5.

Upstream report:
http://tracker.firebirdsql.org/browse/CORE-5068

Upstream fix: 
http://sourceforge.net/p/firebird/code/62783/

Debian bug:
https://bugs.debian.org/810599

Can a CVE be assigned for his issue?

Regards,
Salvatore
