X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["678" "Friday" "11" "August" "2017" "21:24:47" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170811192447.aqlul7ixqv5ymlxi@eldamar.local>" "21" "Re: [oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" nil nil nil "8" "2017081119:24:47" "[oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" (number mark "U       carnil@debia Aug 11   21/678   " thread-indent "\"Re: [oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)\"\n") "<20170811114033.grl36vle44nygwta@eldamar.local>" ("<20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>" "<325653ee-81e0-c12e-bcc5-2c8bef66e6bf@suse.com>" "<20170811114033.grl36vle44nygwta@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1793 invoked by uid 550); 11 Aug 2017 19:25:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1772 invoked from network); 11 Aug 2017 19:25:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9lIUFPQgR7w37O+LnbvYLF1a+K7asXutZXfgL+Jip2c=;
        b=mEhV37t/loiHv4rOLilf8wzssPGFsaSJQB01W0dJ74aC42EHGmqJ0kfztN9KH0Yw9t
         rkHDB9bh5pIt0AJdTY30AwW5k63jfWRz1vgYUOpzl/op6hsKfuOL5kEqQp5dYuZow8Px
         jKGJm9F+lDENDQ7foj4v3JYby8jXucUd5C6u1PNj8RPHEUFevgdF6veky/jkSbszxg3b
         NLnatF+upR0zrqt9w2zAoR4Jtb9bZrpR1dUg142ZBwId7TwI6TLcWt34TBG/qx3DONgx
         Zxr2LLDOmFs8ei5etqjRBwclWKGQU32HL+/mS7njDxZtgqUHElfKA9kURhmrHVUp8qSV
         vLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=9lIUFPQgR7w37O+LnbvYLF1a+K7asXutZXfgL+Jip2c=;
        b=rt+AAZoGQCCWjdnnksm9X9025H82/DuXwCnSvSh1dBmAURH+vMdDKp51+xeX4bTX6Y
         AmuYHt1iXCeqmim/alj94FZVN/oIu/rIDsqdyPqcXf5HLMRx2AIwWVcgB7AsqMUNDxqu
         bigYLXr29GpQryi2XuwtfglKoln+kXAfxqWBNpNK+jWcWVARc9eC+mGWzT/BeQdUas8C
         EFWnYjTJTrE0y2vTzaXO/l0QuptX76jA4TIqfjAISpEgyLr07Kq9K8PNtBew7K6BgOgx
         ZqQNYoORswuvxXodZwioUFyg/ip5mXjRCckCFxpDg/2Z8UK87ppnbkZxY9fI6y5w5iXJ
         pM4A==
X-Gm-Message-State: AHYfb5j8pThGK8fRl+u5GnwWsm8P8ToAJ+9sj//3feCw2CHz/ltGw5lG
	RR6GQIIONpefE2Ol
X-Received: by 10.28.159.133 with SMTP id i127mr11202wme.172.1502479488749;
        Fri, 11 Aug 2017 12:24:48 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 11 Aug 2017 21:24:47 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170811192447.aqlul7ixqv5ymlxi@eldamar.local>
References: <20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>
 <325653ee-81e0-c12e-bcc5-2c8bef66e6bf@suse.com>
 <20170811114033.grl36vle44nygwta@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170811114033.grl36vle44nygwta@eldamar.local>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] CVS and ssh command injection (see
 CVE-2017-1000117, etc.)

Hi

On Fri, Aug 11, 2017 at 01:40:33PM +0200, Salvatore Bonaccorso wrote:
> hi
> 
> On Fri, Aug 11, 2017 at 10:10:18AM +0200, Andreas Stieger wrote:
> > On 08/11/2017 01:32 AM, Hank Leininger wrote:
> > > SSH command injection via -o... impacts CVS 1.12.x as well
> > > [...]
> > > I don't know if these were discussed on a private list prior to publication, and whether that discussion included CVS.
> > 
> > cvs did not come up in the private discussions that I am aware of,
> > thanks for pointing it out.
> 
> FWIW, I have requested a CVE via the MITRE webform. Will followup here
> once/if it gets assigned.

CVE-2017-12836 was assigned for this issue.

Regards,
Salvatore
