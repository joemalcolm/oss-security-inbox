X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1283" "Thursday" "7" "May" "2015" "15:15:07" "+0300" "Solar Designer" "solar@openwall.com" "<20150507121507.GA10575@openwall.com>" "33" "Re: [oss-security] CVE request: vulnerability in wpa_supplicant and hostapd" nil nil nil "5" "2015050712:15:07" "[oss-security] CVE request: vulnerability in wpa_supplicant and hostapd" (number mark "        solar@openwa May  7   33/1283  " thread-indent "\"Re: [oss-security] CVE request: vulnerability in wpa_supplicant and hostapd\"\n") "<87k2wkfvks.fsf@redhat.com>" ("<87k2wkfvks.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11689 invoked by uid 550); 7 May 2015 12:15:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11670 invoked from network); 7 May 2015 12:15:13 -0000
Message-ID: <20150507121507.GA10575@openwall.com>
References: <87k2wkfvks.fsf@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87k2wkfvks.fsf@redhat.com>
User-Agent: Mutt/1.4.2.3i
Cc: Jouni Malinen <j@w1.fi>
Date: Thu, 7 May 2015 15:15:07 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: vulnerability in wpa_supplicant and hostapd
To: oss-security@lists.openwall.com

On Thu, May 07, 2015 at 01:58:27PM +0200, Martin Prpic wrote:
> Hi, I don't see a CVE assigned for this anywhere:
> 
> http://w1.fi/security/2015-4/eap-pwd-missing-payload-length-validation.txt
> 
> "EAP-pwd missing payload length validation
> 
> A vulnerability was found in EAP-pwd server and peer implementation used
> in hostapd and wpa_supplicant, respectively. The EAP-pwd/Commit and
> EAP-pwd/Confirm message payload is processed without verifying that the
> received frame is long enough to include all the fields. This results in
> buffer read overflow of up to couple of hundred bytes."
> 
> Patches are included in: http://w1.fi/security/2015-4/

There are currently 5 sets of advisories+patches at:

http://w1.fi/security/

These are numbered 2014-1, 2015-[1234].  Out of them, it appears that
only 2014-1 (CVE-2014-3686) and 2015-1 (CVE-2015-1863) have been on
oss-security so far:

http://www.openwall.com/lists/oss-security/2014/10/09/28
http://www.openwall.com/lists/oss-security/2015/04/22/8

I haven't looked into this closely, but maybe Martin's request should
be for 2015-[234] rather than only for 2015-4.

And I'd like to see the full advisories posted in here so that they are
preserved in the list archives, unless there's a reason not to.  Jouni?

Alexander
