X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["533" "Friday" "11" "August" "2017" "13:40:33" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170811114033.grl36vle44nygwta@eldamar.local>" "16" "Re: [oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" nil nil nil "8" "2017081111:40:33" "[oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" (number mark "U       carnil@debia Aug 11   16/533   " thread-indent "\"Re: [oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)\"\n") "<325653ee-81e0-c12e-bcc5-2c8bef66e6bf@suse.com>" ("<20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>" "<325653ee-81e0-c12e-bcc5-2c8bef66e6bf@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7605 invoked by uid 550); 11 Aug 2017 11:40:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7584 invoked from network); 11 Aug 2017 11:40:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x4l/weRR/Sqclsv2pHnNywGBJIiU1vezz2cVsokLIKk=;
        b=LsGGeZ/7VFGuZKZ5i3tWgVzbkYbRU0PbjmMlCpKtcgMwkswcpNlxL+eluWoVlMBCX2
         rjEMYr52GPqwcZVb/NguR99phNRIThcmaWv+sWbXqoWExP1EGtR5+SllZmBowK8mR9ji
         Wzqataj05DN/tkSG5CPTivN8t/565euSqbN3DJfR/EJx9bhMnX7kmBSRYffvHJVtJl05
         lSN/jzGaImo/Nyxhyhfzd7GOo62M5SpkRUGrc4uB24rvyCvnteaYC2t1hwl4SjjGcEuI
         SNFE1my62SUPT8MbQehZZB7Tfc85M3scjCtNS1wzIOXxUx23rd4bQ0cvtEGE9q0/sXen
         ux2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=x4l/weRR/Sqclsv2pHnNywGBJIiU1vezz2cVsokLIKk=;
        b=N43Hocf1qWN4pwF5PIhbgIrBLRbnufdUVANSJPLfO5Wz/zYGG+i7H66VGRWsIodKg/
         cATFVwqnnmVaR3OlzwXDiWgF6StGGz4wD2czjfEe902m/oXyO99YWm6PfdH8m8bk58ml
         cEoESNPMkoEqh/Nz9XSZhoAV5qgAdlDTYW5ETVmyodNRInscfH21Qj7naREndv4alWoc
         qLRSMoHmWc4se6u2FuACZ25SA2UnKm/xQ02pxWrCoFDJ1zm3HiHETxNst+TxFKj7jzGn
         Ewj8Mz7ulS8VeFrqHFICB3ioj1RXkeoHHovrfgS+MafW7HUm+PLIrNR6WTEv37qCB1LC
         s51A==
X-Gm-Message-State: AHYfb5hMnwO56xrxFY57iKiMx4Gd+8ZWUNNPDWdvgA3eZC35sIGKYmVe
	n334QrD+xN8WMJ+5
X-Received: by 10.223.150.10 with SMTP id b10mr10053964wra.85.1502451635871;
        Fri, 11 Aug 2017 04:40:35 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 11 Aug 2017 13:40:33 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170811114033.grl36vle44nygwta@eldamar.local>
References: <20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>
 <325653ee-81e0-c12e-bcc5-2c8bef66e6bf@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <325653ee-81e0-c12e-bcc5-2c8bef66e6bf@suse.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] CVS and ssh command injection (see
 CVE-2017-1000117, etc.)

hi

On Fri, Aug 11, 2017 at 10:10:18AM +0200, Andreas Stieger wrote:
> On 08/11/2017 01:32 AM, Hank Leininger wrote:
> > SSH command injection via -o... impacts CVS 1.12.x as well
> > [...]
> > I don't know if these were discussed on a private list prior to publication, and whether that discussion included CVS.
> 
> cvs did not come up in the private discussions that I am aware of,
> thanks for pointing it out.

FWIW, I have requested a CVE via the MITRE webform. Will followup here
once/if it gets assigned.

Regards,
Salvatore
