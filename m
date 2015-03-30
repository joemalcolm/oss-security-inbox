X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["908" "Monday" "30" "March" "2015" "23:42:01" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150330234201.410bcbb8@redhat.com>" "30" "Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "3" "2015033021:42:01" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        thoger@redha Mar 30   30/908   " thread-indent "\"Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") "<550C769F.5010801@truel.it>" ("<550C769F.5010801@truel.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3933 invoked by uid 550); 30 Mar 2015 21:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3906 invoked from network); 30 Mar 2015 21:42:21 -0000
Message-ID: <20150330234201.410bcbb8@redhat.com>
In-Reply-To: <550C769F.5010801@truel.it>
References: <550C769F.5010801@truel.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Cc: security@php.net
Date: Mon, 30 Mar 2015 23:42:01 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: PHP SoapClient's __call() type
 confusion through unserialize()
To: oss-security@lists.openwall.com

On Fri, 20 Mar 2015 20:35:59 +0100 Andrea Palazzo wrote:

> I'd like to request a CVE for the PHP Sec Bug #69085.
> 
> Description:
> SoapClient's __call() method is prone to a type confusion
> vulnerability which can be used to gain remote code execution through
> unsafe unserialize() calls.
> 
> Info:
> https://bugs.php.net/bug.php?id=69085

There is another unserialize issue fixed in 5.6.7, 5.5.23 and 5.4.39
and currently listed on PHP 5 Changelog page:

http://php.net/ChangeLog-5.php

Fixed bug #68976 (Use After Free Vulnerability in unserialize()). (CVE-2015-0231)
https://bugs.php.net/68976

While this lists CVE, it's CVE that was assigned to an issue fixed in
5.6.5, 5.5.21 and 5.4.37:

Fixed bug #68710 (Use After Free Vulnerability in PHP's unserialize()). (CVE-2015-0231)
https://bugs.php.net/68710

New id seems to be required for the new issue.

-- 
Tomas Hoger / Red Hat Product Security
