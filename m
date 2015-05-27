X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["645" "Wednesday" "27" "May" "2015" "15:53:31" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150527155331.6eb76d5e@redhat.com>" "24" "Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "5" "2015052713:53:31" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        thoger@redha May 27   24/645   " thread-indent "\"Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") "<20150409104547.265bcb6b@redhat.com>" ("<550C769F.5010801@truel.it>" "<20150409104547.265bcb6b@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3092 invoked by uid 550); 27 May 2015 13:53:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2039 invoked from network); 27 May 2015 13:53:52 -0000
Message-ID: <20150527155331.6eb76d5e@redhat.com>
In-Reply-To: <20150409104547.265bcb6b@redhat.com>
References: <550C769F.5010801@truel.it>
	<20150409104547.265bcb6b@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: Andrea Palazzo <andrea.palazzo@truel.it>, oss-security@lists.openwall.com,
        security@php.net
Date: Wed, 27 May 2015 15:53:31 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: PHP SoapClient's __call() type
 confusion through unserialize()
To: cve-assign@mitre.org

On Thu, 9 Apr 2015 10:45:47 +0200 Tomas Hoger wrote:

> On Fri, 20 Mar 2015 20:35:59 +0100 Andrea Palazzo wrote:
> 
> > Hi everyone,
> > I'd like to request a CVE for the PHP Sec Bug #69085.
> > 
> > Description:
> > SoapClient's __call() method is prone to a type confusion
> > vulnerability which can be used to gain remote code execution
> > through unsafe unserialize() calls.
> > 
> > Info:
> > https://bugs.php.net/bug.php?id=69085
> 
> Re-sending with cve-assign@ CC.

Yet another re-send.  Is there a reason is isn't getting CVE, or
explicit response that no CVE will be assigned?

Thank you!

-- 
Tomas Hoger / Red Hat Product Security
