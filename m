X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1021" "Thursday" "25" "January" "2018" "09:59:31" "+0100" "Daniel Beck" "ml@beckweb.net" "<64204672-5D14-48CD-95F4-984EB0197C02@beckweb.net>" "24" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "1" "2018012508:59:31" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Jan 25   24/1021  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<61F736A2-A375-45DD-9137-12B53BF9A228@beckweb.net>" ("<61F736A2-A375-45DD-9137-12B53BF9A228@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7625 invoked by uid 550); 25 Jan 2018 09:00:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7198 invoked from network); 25 Jan 2018 08:59:42 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 25 Jan 2018 09:59:31 +0100
References: <61F736A2-A375-45DD-9137-12B53BF9A228@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <61F736A2-A375-45DD-9137-12B53BF9A228@beckweb.net>
Message-Id: <64204672-5D14-48CD-95F4-984EB0197C02@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1516870782;5979273e;
X-HE-SMSGID: 1eedNa-0001cU-Uq
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins


> On 14. Dec 2017, at 04:10, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-667
> A race condition during Jenkins startup could result in the wrong order of
> execution of commands during initialization.
> 
> On Jenkins 2.81 and newer, including LTS 2.89.1, this could in rare cases
> (we estimate less than 20% of new instances) result in failure to
> initialize the setup wizard on the first startup. This resulted in multiple
> security-related settings not being set to their usual strict default.
> Affected instances need to be configured to restrict access.

CVE-2017-1000503

> Additionally, there's a very short window of time after startup during
> which Jenkins may no longer show the "Please wait while Jenkins is getting
> ready to work" message, but Cross-Site Request Forgery (CSRF) protection
> may not yet be effective. As of publication of this advisory, we've been
> unable to confirm this can actually be exploited, but generally recommend
> that users upgrade their instances.

CVE-2017-1000504

