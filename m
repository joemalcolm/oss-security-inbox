X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["815" "Sunday" "27" "March" "2016" "13:34:43" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160327113443.GA4418@eldamar.local>" "24" "Re: [oss-security] older fuseiso stuff" "^Cc:" nil nil "3" "2016032711:34:43" "[oss-security] older fuseiso stuff" (number mark "        carnil@debia Mar 27   24/815   " thread-indent "\"Re: [oss-security] older fuseiso stuff\"\n") "<54EAF1BE.7080404@redhat.com>" ("<54D54B8F.8070609@redhat.com>" "<54EAF1BE.7080404@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16282 invoked by uid 550); 27 Mar 2016 11:34:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16261 invoked from network); 27 Mar 2016 11:34:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/l1JTEiKlkNoMTkhfUlad/i3cduv26zHovf4gCyqY44=;
        b=nfBpO3DenyilPl0HM5I77f4UEOhR6XZs37zIrZOyr5N8qv5zfeikXasuVtZ51gBn3n
         7C9HDiNM8xqCjWJOuU5eFG4runirdoVbth8Dsv2NHquLxtd81ZWlAPuFQ2EjzA6y7sTJ
         mXxZcXrDC3HnDJz3BEyMsYwWp+kYSm1Aty4QzwpDi8OUADzYGwCEJuYCLdO/uzHkWU+1
         RImtCVBlvxqX7HSq584M55YscHyh2fskPAaFvtxaQyAUYMf0unsR/pCDAhgEPTywFOaM
         zD0aoutMzmiXJqPU1HtZ9heGqd91YTsWciaCirNSsKrtf2447Q5MKH92holVrUyLh+MU
         7Ghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=/l1JTEiKlkNoMTkhfUlad/i3cduv26zHovf4gCyqY44=;
        b=ImLRzzfAnQHJNeKkk5vL0tK95ZKj045YQbiFYhdMz2w0M+NlLannvI8aUU72acmN1l
         5p/xGVZR2Ma2/gX/Ri7d28iX/CVburtWC4D78y04TGM2l1askVEYkv9WMXxd4Fi06jV9
         63svuy4jM7R5xgaaA2eMESY2/M44DPaRmCMUYqY0Rgxn9JZ1M0C20Zspo5sOQMWmRTj1
         h94t/yAhsU5OLGy49oofVpsyG/B9HIexB4X/GvvmVya5ltXGF5sLBKw1ok/Eo77OYh6A
         7gFq8G0nbo93ypxCEwRRaNTsNbffJZ67FeQJxqQ3G6ALewPWSkN8ifhRNj5j5i8oQbRq
         IBxA==
X-Gm-Message-State: AD7BkJLPi+4S/WrS19NdYutj8MVbPEDkS21enPJt/e1XX8kBzrOseXS1WXzO/qgGi76LAg==
X-Received: by 10.194.9.34 with SMTP id w2mr23319360wja.170.1459078486712;
        Sun, 27 Mar 2016 04:34:46 -0700 (PDT)
Message-ID: <20160327113443.GA4418@eldamar.local>
References: <54D54B8F.8070609@redhat.com>
 <54EAF1BE.7080404@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54EAF1BE.7080404@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "cve-assign@mitre.org >> Assign a CVE Identifier" <cve-assign@mitre.org>
Date: Sun, 27 Mar 2016 13:34:43 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] older fuseiso stuff
To: oss-security@lists.openwall.com

Hi,

On Mon, Feb 23, 2015 at 10:24:14AM +0100, Florian Weimer wrote:
> On 02/07/2015 12:17 AM, Kurt Seifried wrote:
> > https://bugzilla.redhat.com/show_bug.cgi?id=863102 
> > https://bugzilla.redhat.com/show_bug.cgi?id=863091
> > 
> > may warrant a CVE
> 
> I opened up the dependent bugs which have more information:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=861358
> https://bugzilla.redhat.com/show_bug.cgi?id=862211
> 
> Note that fuseiso is fairly broken and does not even support UDF, so
> its usefulness is limited.  Newer systems have the unprivileged image
> mounting functionality provided by udisks2, so a userspace
> implementation of the ISO 9660 and UDF file systems is no longer needed.

Can two CVEs still be assigned for this issue to have an identifier
for the issues?

Regards,
Salvatore
