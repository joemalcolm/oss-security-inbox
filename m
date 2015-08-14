X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1283" "Friday" "14" "August" "2015" "15:04:03" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150814130403.GA15575@eldamar.local>" "42" "Re: [oss-security] CVE request: GNUTLS-SA-2015-3 double free in certificate DN decoding" nil nil nil "8" "2015081413:04:03" "[oss-security] CVE request: GNUTLS-SA-2015-3 double free in certificate DN decoding" (number mark "        carnil@debia Aug 14   42/1283  " thread-indent "\"Re: [oss-security] CVE request: GNUTLS-SA-2015-3 double free in certificate DN decoding\"\n") "<87d1yv1oqx.fsf@redhat.com>" ("<87d1yv1oqx.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14190 invoked by uid 550); 14 Aug 2015 13:04:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14172 invoked from network); 14 Aug 2015 13:04:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yf8BwUUcAEFtapRlQSvoTAkD2BEAPBHA4hi/iN0E7IU=;
        b=VRwXPmxQlfb+RGk7ZVxlfQE9y90FhccC7k3hFVDWCw6jOGGw5x3HqczYjPU+G3UFj4
         EQS5dIWeNZELF/9RZPdvgJew7oBWE3DK7hf1j3HTdgmLWOe8/3NFNAsKnOx6Sa1oyinc
         86MQiNgkPKFp5c/+F8lq55w/T+Y8IiyIT3+vRbi9Fnq6piOQhiDg0a4zUUJOFjA8uZOC
         U2sxnSBSprXI/+4LYP0ILz5gJd1eqezNyyWLHSulpMAMDoGJLs1KYpAACIlUBVaSf0eL
         +5k/HPRksbdpM2clK7ROZ1HJVxSzy5GeKRRWk1Hid+OWcVAImP0OiddvhrTFn4loF/aQ
         5ujA==
X-Received: by 10.180.39.172 with SMTP id q12mr6626921wik.17.1439557444565;
        Fri, 14 Aug 2015 06:04:04 -0700 (PDT)
Message-ID: <20150814130403.GA15575@eldamar.local>
References: <87d1yv1oqx.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87d1yv1oqx.fsf@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Fri, 14 Aug 2015 15:04:03 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: GNUTLS-SA-2015-3 double free in
 certificate DN decoding
To: oss-security@lists.openwall.com

Hi,

On Mon, Aug 10, 2015 at 11:23:02AM +0200, Martin Prpic wrote:
> Hi,
> 
> GnuTLS released versions 3.4.4 and 3.3.17 that fix one security issue:
> 
> http://www.gnutls.org/security.html#GNUTLS-SA-2015-3
> 
> "Kurt Roeckx reported that decoding a specific certificate with very
> long DistinguishedName (DN) entries leads to double free, which may
> result to a denial of service. Since the DN decoding occurs in almost
> all applications using certificates it is recommended to upgrade the
> latest GnuTLS version fixing the issue. Recommendation: Upgrade to
> GnuTLS 3.4.4, or 3.3.17."
> 
> The upstream patch that fixes this issue is available at:
> 
> https://gitlab.com/gnutls/gnutls/commit/272854367efc130fbd4f1a51840d80c630214e12
> 
> Can a CVE please be assigned to this issue?
> 
> Also, there is still no CVE for the issue before this one. The CVE
> request was sent on May 5:
> 
> http://seclists.org/oss-sec/2015/q2/367
> 
> Can a CVE be assigned to this as well?
> 
> Thank you!
> 
> Refs:
> rhbz GNUTLS-SA-2015-2: https://bugzilla.redhat.com/1218426
> rhbz GNUTLS-SA-2015-3: https://bugzilla.redhat.com/1251902

Adding explicitly MITRE CVE assignment team to the loop.

Can CVEs be assigned for both GNUTLS-SA-2015-2 and GNUTLS-SA-2015-3
issues?

Regards,
Salvatore
