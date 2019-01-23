X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Wednesday" "23" "January" "2019" "11:18:20" "+0100" "Daniel Beck" "ml@beckweb.net" "<76DD3118-C738-425E-B96F-85EFF8BB1D62@beckweb.net>" "21" "Re: [oss-security] Sandbox bypass in multiple Jenkins plugins" nil nil nil "1" "2019012310:18:20" "[oss-security] Sandbox bypass in multiple Jenkins plugins" (number mark "U       ml@beckweb.n Jan 23   21/722   " thread-indent "\"Re: [oss-security] Sandbox bypass in multiple Jenkins plugins\"\n") "<A4A584CA-BA63-450D-81CB-E9AAA4BB45C1@beckweb.net>" ("<A4A584CA-BA63-450D-81CB-E9AAA4BB45C1@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14132 invoked by uid 550); 23 Jan 2019 10:18:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14053 invoked from network); 23 Jan 2019 10:18:33 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Wed, 23 Jan 2019 11:18:20 +0100
References: <A4A584CA-BA63-450D-81CB-E9AAA4BB45C1@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <A4A584CA-BA63-450D-81CB-E9AAA4BB45C1@beckweb.net>
Message-Id: <76DD3118-C738-425E-B96F-85EFF8BB1D62@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1548238713;3ce20fdf;
X-HE-SMSGID: 1gmFbx-0006dO-O5
Subject: Re: [oss-security] Sandbox bypass in multiple Jenkins plugins



> On 8. Jan 2019, at 13:46, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-1266
> Script Security sandbox protection could be circumvented during the 
> compilation phase by applying AST transforming annotations such as @Grab
> to source code elements.
> 
> Both the pipeline validation REST APIs and actual script/pipeline 
> execution are affected.
> 
> This allowed users with Overall/Read permission, or able to control 
> Jenkinsfile or sandboxed Pipeline shared library contents in SCM, to 
> bypass the sandbox protection and execute arbitrary code on the Jenkins 
> master.

CVE-2019-1003000 (Script Security Plugin)
CVE-2019-1003001 (Pipeline: Groovy Plugin)
CVE-2019-1003002 (Pipeline: Declarative Plugin)

