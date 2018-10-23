X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["327" "Tuesday" "23" "October" "2018" "11:41:13" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<79e2949f37a6495a19888772953b410e035e2f9c.camel@opteya.com>" "18" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Date:" nil nil "10" "2018102309:41:13" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        ydroneaud@op Oct 23   18/327   " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26340 invoked by uid 550); 23 Oct 2018 10:22:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26252 invoked from network); 23 Oct 2018 09:41:29 -0000
Message-ID: <79e2949f37a6495a19888772953b410e035e2f9c.camel@opteya.com>
In-Reply-To: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
References: 
	<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-1.fc28) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a01:e35:8783:23e0:c71d:3ed7:da64:5203
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Date: Tue, 23 Oct 2018 11:41:13 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects
 programs compiled with GCC 7 and 8 containing nested functions
To: oss-security@lists.openwall.com

Hi,

Use -Werror=trampoline to prevent GCC from generating code that require
executable stack:


https://gcc.gnu.org/onlinedocs/gcc-8.2.0/gcc/Warning-Options.html#index-Wtrampolines

It's a recommanded warning from OWASP:


https://www.owasp.org/index.php/C-Based_Toolchain_Hardening#GCC.2FBinutils

-- 
Yann Droneaud
OPTEYA


