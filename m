X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["437" "Thursday" "9" "April" "2015" "10:45:47" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150409104547.265bcb6b@redhat.com>" "17" "Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "4" "2015040908:45:47" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        thoger@redha Apr  9   17/437   " thread-indent "\"Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") "<550C769F.5010801@truel.it>" ("<550C769F.5010801@truel.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28076 invoked by uid 550); 9 Apr 2015 08:46:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28047 invoked from network); 9 Apr 2015 08:46:08 -0000
Message-ID: <20150409104547.265bcb6b@redhat.com>
In-Reply-To: <550C769F.5010801@truel.it>
References: <550C769F.5010801@truel.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: Andrea Palazzo <andrea.palazzo@truel.it>, oss-security@lists.openwall.com,
        security@php.net
Date: Thu, 9 Apr 2015 10:45:47 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: PHP SoapClient's __call() type
 confusion through unserialize()
To: cve-assign@mitre.org

On Fri, 20 Mar 2015 20:35:59 +0100 Andrea Palazzo wrote:

> Hi everyone,
> I'd like to request a CVE for the PHP Sec Bug #69085.
> 
> Description:
> SoapClient's __call() method is prone to a type confusion
> vulnerability which can be used to gain remote code execution through
> unsafe unserialize() calls.
> 
> Info:
> https://bugs.php.net/bug.php?id=69085

Re-sending with cve-assign@ CC.

-- 
Tomas Hoger / Red Hat Product Security
