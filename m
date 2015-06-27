X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["592" "Sunday" "28" "June" "2015" "00:23:10" "+0100" "Matthew Wilkes" "matthew@matthewwilkes.co.uk" "<mmnb8q$9lh$1@ger.gmane.org>" "23" "[oss-security] CVE Request: Django CMS" nil nil nil "6" "2015062723:23:10" "[oss-security] CVE Request: Django CMS" (number mark "        matthew@matt Jun 28   23/592   " thread-indent "\"[oss-security] CVE Request: Django CMS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8071 invoked by uid 550); 27 Jun 2015 23:23:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8050 invoked from network); 27 Jun 2015 23:23:28 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <mmnb8q$9lh$1@ger.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: host86-145-32-146.range86-145.btcentralplus.com
X-Mozilla-News-Host: news://news.gmane.org:119
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:40.0)
 Gecko/20100101 Thunderbird/40.0a2
Date: Sun, 28 Jun 2015 00:23:10 +0100
From: Matthew Wilkes <matthew@matthewwilkes.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Django CMS
To: oss-security@lists.openwall.com

Hi,

Can a CVE be assigned to this issue, please?

     http://www.django-cms.org/en/blog/2015/06/27/311-3014-release/

It's a CSRF issue around publishing of draft changes in Django CMS. 
Versions affected are Django CMS <3.0.14 and <3.1.1. I haven't verified 
its presence in Django CMS <3.0, I'm afraid.

The relevant commit is:

 
https://github.com/divio/django-cms/commit/f77cbc607d6e2a62e63287d37ad320109a2cc78a

The vendor credits with the discovery:
  * Sylvain Fankhauser of L//P
  * Matthew Wilkes of The Code Distillery

Thanks, let me know if you'd like more information.

Matt

