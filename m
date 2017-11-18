X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["766" "Saturday" "18" "November" "2017" "08:23:48" "+0100" "Daniel Beck" "ml@beckweb.net" "<C5482347-011C-4B52-A495-0CB4CA059168@beckweb.net>" "24" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "11" "2017111807:23:48" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Nov 18   24/766   " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<15F70552-0CCA-437A-947E-E6442FA282DB@beckweb.net>" ("<15F70552-0CCA-437A-947E-E6442FA282DB@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20115 invoked by uid 550); 18 Nov 2017 07:24:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20064 invoked from network); 18 Nov 2017 07:24:00 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 18 Nov 2017 08:23:48 +0100
References: <15F70552-0CCA-437A-947E-E6442FA282DB@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <15F70552-0CCA-437A-947E-E6442FA282DB@beckweb.net>
Message-Id: <C5482347-011C-4B52-A495-0CB4CA059168@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1510989840;d0c5d040;
X-HE-SMSGID: 1eFxTg-0007rM-PM
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins


> On 11. Oct 2017, at 18:25, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-557
> Maven Plugin bundled a version of the commons-httpclient library with the 
> vulnerability CVE-2012-6153 that incorrectly verified SSL certificates, 
> making it susceptible to man-in-the-middle attacks.

CVE-2017-1000397

> SECURITY-597
> Swarm Plugin Client bundled a version of the commons-httpclient library 
> with the vulnerability CVE-2012-6153 that incorrectly verified SSL 
> certificates, making it susceptible to man-in-the-middle attacks.

CVE-2017-1000402

> SECURITY-623
> Speaks! Plugin allows users with Job/Configure permission to run arbitrary 
> Groovy code inside the Jenkins JVM, effectively elevating privileges to 
> Overall/Run Scripts.

CVE-2017-1000403

