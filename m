X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["915" "Tuesday" "5" "January" "2016" "12:12:46" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160105111246.GA4592@eldamar.local>" "27" "Re: [oss-security] Re: CVE Request: cacti: SQL injection vulnerability in graphs_new.php" nil nil nil "1" "2016010511:12:46" "[oss-security] Re: CVE Request: cacti: SQL injection vulnerability in graphs_new.php" (number mark "U       carnil@debia Jan  5   27/915   " thread-indent "\"Re: [oss-security] Re: CVE Request: cacti: SQL injection vulnerability in graphs_new.php\"\n") "<568B8AD7.3000905@suse.com>" ("<20160104235855.D96FB52E01B@smtpvbsrv1.mitre.org>" "<568B8AD7.3000905@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13872 invoked by uid 550); 5 Jan 2016 11:13:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13854 invoked from network); 5 Jan 2016 11:13:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=XIWh1If76GQ45ZGF4cOu35FOdxZeTTc9lis0WKnajWg=;
        b=axWYf0bk0E9kJBLJmt/g/wNOaZMwWg3vxY7AwULfTeLMrO1J19ncYOsmVdbnv3qYdk
         ZLrgiCYI6GjMROhsOe9y4PNagI3J5Yku/PqiRmjK2JrUWx/WoAVvC9brS48u/MxFC7dy
         XrrWAJso8hEeZ1A5+YrfqQ4J4husl3Egqgrh1jCWVvU22JmCd/VolyFfznVFsqHdpP0p
         Uynvp73ZtwhyrbMi11/jc8q48w8JX7pGegSn9tgIHpNRfVF/KH52zUs/qXZVmFzLOOF2
         /85Z0MQfm3ANxjTSuzg+E32hzGuOEto7dLkJlQZsgu5TIB0aEzConiqo+oedk2SNTB3e
         GMMA==
X-Received: by 10.194.80.200 with SMTP id t8mr92923160wjx.74.1451992368835;
        Tue, 05 Jan 2016 03:12:48 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 5 Jan 2016 12:12:46 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: Andreas Stieger <astieger@suse.com>
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org,
	elbrus@debian.org
Message-ID: <20160105111246.GA4592@eldamar.local>
References: <20160104235855.D96FB52E01B@smtpvbsrv1.mitre.org>
 <568B8AD7.3000905@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <568B8AD7.3000905@suse.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Re: CVE Request: cacti: SQL injection
 vulnerability in graphs_new.php

Hi Andreas,

On Tue, Jan 05, 2016 at 10:20:23AM +0100, Andreas Stieger wrote:
> Hello,
> 
> On 01/05/2016 12:58 AM, cve-assign@mitre.org wrote:
> > > Another SQL injection vulnerability via graphs_new.php in cacti was
> > > found, reported to the bug http://bugs.cacti.net/view.php?id=2652
> >
> > http://bugs.cacti.net/view.php?id=2652 is CVE-2015-8604.
> 
> Check against a possible duplicate assignment with CVE-2015-8377?
> 
> http://seclists.org/fulldisclosure/2015/Dec/att-57/cacti_sqli%281%29.txt
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1291222
> http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-8377
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-8377

Theree are two different vulnerabilities here, see second comment in
http://bugs.cacti.net/view.php?id=2652 which describe both, the
CVE-2015-8377 and the new assigned one (CVE-2015-8604).

Does this helps?

Regards,
Salvatore
