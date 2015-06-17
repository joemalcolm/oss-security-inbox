X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1440" "Wednesday" "17" "June" "2015" "06:33:36" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150617043336.GA23069@lorien.valinor.li>" "48" "Re: [oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1850)" nil nil nil "6" "2015061704:33:36" "[oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1850)" (number mark "        carnil@debia Jun 17   48/1440  " thread-indent "\"Re: [oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1850)\"\n") "<55805FE7.5070007@redhat.com>" ("<55805FE7.5070007@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3769 invoked by uid 550); 17 Jun 2015 04:33:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3751 invoked from network); 17 Jun 2015 04:33:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sbzUar4ZbpwFLLSKu/ghiEpvZv5PBZtZ8K2K4TFQvKE=;
        b=iObRqu44vhY06ekspYNH+zD0KzZe970v9SucWb4LR2S0LEADoq3jQKL2XjxLlslP1a
         ogsxfRs7CI8aO3x5ohfsJs95lI7E9z9Kf7Q10acz/vkhdErgiPkSODk2fsOTBd24/0Ty
         bfaYsFusbMdouslcKNvoxYSK+5pJJeiRg6g6e1Pnslewua8sDphwlGquxOwtKJQhmDDf
         +NHwmzbrLxHM4XJjYklr+EdY7qfq9TA1VyAjYMBcsz10BbofwcJudXCywnFKgvMKjCh7
         0NTA0utJnXrmEBrZfzDi1M0ApcXK525J4EuXp65Ni7rLIS8HhHaLYpbLh1TvaDtEzyG3
         R9Lg==
X-Received: by 10.194.62.132 with SMTP id y4mr1964872wjr.91.1434515618024;
        Tue, 16 Jun 2015 21:33:38 -0700 (PDT)
Message-ID: <20150617043336.GA23069@lorien.valinor.li>
References: <55805FE7.5070007@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55805FE7.5070007@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Tristan Cacqueray <tdecacqu@redhat.com>
Date: Wed, 17 Jun 2015 06:33:36 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] [OSSA 2015-011] Cinder host file disclosure
 through qcow2 backing file (CVE-2015-1850)
To: oss-security@lists.openwall.com

Hi,

On Tue, Jun 16, 2015 at 10:41:59AM -0700, Tristan Cacqueray wrote:
> =====================================================================
> OSSA-2015-011: Cinder host file disclosure through qcow2 backing file
> =====================================================================
> 
> :Date: June 16, 2015
> :CVE: CVE-2015-1850
> 
> 
> Affects
> ~~~~~~~
> - Cinder: versions through 2014.1.4,
>           and 2014.2 versions through 2014.2.3,
>           and version 2015.1.0
> 
> 
> Description
> ~~~~~~~~~~~
> Bastian Blank from credativ reported a vulnerability in Cinder. By
> overwriting an image with a malicious qcow2 header, an authenticated
> user may mislead Cinder upload-to-image action, resulting in
> disclosure of any file from the Cinder server. All Cinder setups are
> affected.
> 
> 
> Patches
> ~~~~~~~
> - https://review.openstack.org/191871 (Icehouse)
> - https://review.openstack.org/191865 (Juno)
> - https://review.openstack.org/191786 (Kilo)
> - https://review.openstack.org/191785 (Liberty)
> 
> 
> Credits
> ~~~~~~~
> - Bastian Blank from Credativ (CVE-2015-1850)

Could you clearify if this CVE assignment is correct? I noticed that
Red Hat Bugzilla has
https://bugzilla.redhat.com/show_bug.cgi?id=1231816 (CVE-2015-1850)
for the nova issue and similarly
https://bugzilla.redhat.com/show_bug.cgi?id=1231817 (CVE-2015-1851)
for the cinder issue. Is this correct?

Regards and thanks in advance,
Salvatore
