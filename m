X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2009" "Monday" "5" "February" "2018" "14:09:15" "+0100" "Daniel Beck" "ml@beckweb.net" "<AB29FCB4-3D11-43B6-AC4D-5AC1E3B3D426@beckweb.net>" "57" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "2" "2018020513:09:15" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Feb  5   57/2009  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<8B6190B4-46B5-45D1-B079-BD6AABEDDC64@beckweb.net>" ("<8B6190B4-46B5-45D1-B079-BD6AABEDDC64@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5776 invoked by uid 550); 5 Feb 2018 13:09:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5756 invoked from network); 5 Feb 2018 13:09:27 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Mon, 5 Feb 2018 14:09:15 +0100
References: <8B6190B4-46B5-45D1-B079-BD6AABEDDC64@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <8B6190B4-46B5-45D1-B079-BD6AABEDDC64@beckweb.net>
Message-Id: <AB29FCB4-3D11-43B6-AC4D-5AC1E3B3D426@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1517836167;2848207f;
X-HE-SMSGID: 1eigWJ-0006zE-TE
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins


> On 5. Feb 2018, at 13:17, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-521
> JUnit plugin is affected by an XML External Entity (XXE) processing 
> vulnerability. This allows an attacker to configure build processes such 
> that JUnit plugin parses a maliciously crafted file that uses external 
> entities for extraction of secrets from the Jenkins master, server-side 
> request forgery, or denial-of-service attacks.

CVE-2018-1000056


> SECURITY-659 (CCM)

CVE-2018-1000054


> SECURITY-660 (Android Lint)

CVE-2018-1000055


> SECURITY-698
> Credentials Binding plugin allows specifying passwords and other secrets as
> environment variables, and will hide them from console output in builds.
> 
> However, since Jenkins will try to resolve references to other environment 
> variables in environment variables passed to a build, this can result in 
> other values than the one specified being provided to a build. For 
> example, the value p4$$w0rd would result in Jenkins passing on p4$w0rd, as 
> $$ is the escape sequence for a single $.
> 
> Credentials Binding plugin does not prevent such a transformed value (e.g. 
> p4$w0rd) from being shown on the build log, allowing users to reconstruct 
> the actual password value from the transformed one.
> 
> Credentials Binding plugin will now escape any $ characters in password 
> values so they are correctly passed to the build.

CVE-2018-1000057


> SECURITY-699
> Arbitrary code execution due to incomplete sandbox protection in Pipeline: 
> Supporting APIs Plugin: Methods related to Java deserialization like 
> readResolve implemented in Pipeline scripts were not subject to sandbox 
> protection, and could therefore execute arbitrary code. This could be 
> exploited e.g. by regular Jenkins users with the permission to configure 
> Pipelines in Jenkins, or by trusted committers to repositories containing 
> Jenkinsfiles.
> 
> Deserialization of objects in Pipeline is now also subject to sandbox 
> protection.

CVE-2018-1000058

