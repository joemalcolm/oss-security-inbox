X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["301" "Saturday" "18" "November" "2017" "08:27:16" "+0100" "Daniel Beck" "ml@beckweb.net" "<D90346EA-FF70-4F29-8BAD-41D77849F216@beckweb.net>" "11" "Re: [oss-security] Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery Pipeline Plugin" nil nil nil "11" "2017111807:27:16" "[oss-security] Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery Pipeline Plugin" (number mark "U       ml@beckweb.n Nov 18   11/301   " thread-indent "\"Re: [oss-security] Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery Pipeline Plugin\"\n") "<5561A290-C77D-4593-B8C7-ECC323C9E3BB@beckweb.net>" ("<5561A290-C77D-4593-B8C7-ECC323C9E3BB@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15441 invoked by uid 550); 18 Nov 2017 07:27:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15362 invoked from network); 18 Nov 2017 07:27:28 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 18 Nov 2017 08:27:16 +0100
References: <5561A290-C77D-4593-B8C7-ECC323C9E3BB@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <5561A290-C77D-4593-B8C7-ECC323C9E3BB@beckweb.net>
Message-Id: <D90346EA-FF70-4F29-8BAD-41D77849F216@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1510990047;71a6aa0d;
X-HE-SMSGID: 1eFxX2-0001YG-Mg
Subject: Re: [oss-security] Reflected Cross-Site Scripting Vulnerability in
 Jenkins Delivery Pipeline Plugin


> On 16. Nov 2017, at 16:23, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-640
> Delivery Pipeline Plugin used the unescaped content of the query parameter 
> `fullscreen` in its JavaScript, resulting in a cross-site scripting 
> vulnerability through specially crafted URLs.


CVE-2017-1000404

