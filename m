X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1259" "Tuesday" "12" "September" "2017" "07:22:51" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170912052251.yunyqonyel2hibg4@lorien.valinor.li>" "33" "Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution" "^Date:" nil nil "9" "2017091205:22:51" "[oss-security] GNU Emacs 25.2 enriched text remote code execution" (number mark "        carnil@debia Sep 12   33/1259  " thread-indent "\"Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution\"\n") "<20170911185857.hfti4mrponqoddin@eldamar.local>" ("<09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>" "<20170911185857.hfti4mrponqoddin@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30057 invoked by uid 550); 12 Sep 2017 05:23:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30039 invoked from network); 12 Sep 2017 05:23:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Wc99Gm7DvCyOgYLna7wWozNXWP56icHpPErc1NJvpLw=;
        b=OJSAEen4fVF+dH2MdaB4+dja4VD2z/8Vc2BLZ/835R28eaLMvoM8HO+Y7VSEzoIcjr
         Sfn7eGIEtZL7AwjHn8+9CHrB+N96B8+D8c/Z7eeWA9bdLqjIvRI0MFKMA8vl/zBPkstk
         hcswJeOlyrXQo3prcS6qTzkgtds20YM+P6sfHS+n9DdwMtiXI6kawJVTkTFYpxzdk6eU
         MXjhMT778pOIyDEWEr18AGA5fNx9XhhYQeUArSwUqn11MhV3kEZjXCRL7oGDOPR1C2Xh
         DJBJZJ5/v0c8Uh4vWz9/yQ2kSvYN0xr/FVlW8vqqKr9HAgLnQrWJKoXB8oBa4UQ1kUFy
         JXYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Wc99Gm7DvCyOgYLna7wWozNXWP56icHpPErc1NJvpLw=;
        b=NgEqtspOvvP6mQPUw4vfbQXVWctLQRCXzpxq03YeoecN5s1l/2DPyjFNEVMZaryed3
         bqAh5pJPOpiGbAZvRZ6MPKfkon98Upbisvgk46CfJovZDv4uIXNLs/seiDO76jmSI03g
         E8Wn11qQAa5WcMvsXg+XJKzCxDT1Ugdxe1YhpqeNNNTWAMHEQWIb+0HzDUGgdO8WF+aR
         OqMowU9zXm+VyQcxx82B4FfTScMoeBSYVprEM8fPTi1zVa/hMhwv2n+e5WwOsVpUbLgy
         RpVphOt4MoO8gSJgX9hOy/uxV110YniT8hbtBPi/I5WqbyswOILltQMJjx8oPhsBibUG
         hnbQ==
X-Gm-Message-State: AHPjjUin4/0/cYCx7NBbSfb4+12BIrKokxG/tkb82oy0hdkY91XYOKfC
	5RUCwSwGQkdS8VFQ
X-Google-Smtp-Source: AOwi7QBOjMmeIsCG5m1o7/KZoIIwqGpX2mH9rHkXRLneUaWNFQX2IVjNKw8Q/f6xUlk9xiOdFYoQgA==
X-Received: by 10.107.132.204 with SMTP id o73mr18168624ioi.89.1505193774470;
        Mon, 11 Sep 2017 22:22:54 -0700 (PDT)
Message-ID: <20170912052251.yunyqonyel2hibg4@lorien.valinor.li>
References: <09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>
 <20170911185857.hfti4mrponqoddin@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170911185857.hfti4mrponqoddin@eldamar.local>
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Tue, 12 Sep 2017 07:22:51 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution
To: oss-security@lists.openwall.com

Hi

On Mon, Sep 11, 2017 at 08:58:57PM +0200, Salvatore Bonaccorso wrote:
> Hi Paul,
> 
> On Sun, Sep 10, 2017 at 11:56:20PM -0700, Paul Eggert wrote:
> > GNU Emacs is an extensible, customizable, free/libre text editor and
> > software environment.  When Emacs renders MIME text/enriched data (Internet
> > RFC 1896), it is vulnerable to arbitrary code execution. Since Emacs-based
> > mail clients decode "Content-Type: text/enriched", this code is exploitable
> > remotely. This bug affects GNU Emacs versions 19.29 through 25.2.
> > 
> > Although we know no efforts to exploit this in the wild, exploitation is easy.
> [...]
> > == Timeline ==
> > 
> > 2017-09-04. Bug reported to the Emacs bug tracker by Charles A. Roelli.
> > 
> > 2017-09-07. POC for remote code execution sent to the maintainers of Emacs
> > and Gnus (Reiner Steib <Reiner.Steib@gmx.de>, private mail).
> > 
> > 2017-09-08. Patch (by Lars Ingebrigtsen <larsi@gnus.org>) to disable the
> > problematic code and mitigation (private mail).
> > 
> > 2017-09-09. Patch committed in main development repository.
> 
> Have you requested a CVE for this issue?

FTR, it seems this was submitted to DWF already as per:
https://debbugs.gnu.org/cgi/bugreport.cgi?bug=28350#63

Regards,
Salvatore
