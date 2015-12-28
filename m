X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["860" "Monday" "28" "December" "2015" "07:44:39" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151228064439.GA32586@eldamar.local>" "28" "Re: [oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces" "^Date:" nil nil "12" "2015122806:44:39" "[oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        carnil@debia Dec 28   28/860   " thread-indent "\"Re: [oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") "<567339BE.3090404@canonical.com>" ("<567339BE.3090404@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32092 invoked by uid 550); 28 Dec 2015 06:44:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32074 invoked from network); 28 Dec 2015 06:44:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=IPdwLPRdkdStOhwkN8/8neACbLXZbg7O2ndv2Plsbcw=;
        b=CjHbpk+3AsiJi2OOMtJ8kiaRsECzZXXKBs6eJatUfUJEqILkk409Y9df1mnktNPVhB
         YRiR6s39ojCiJTIiA6drSR6yJWZHHqXY9loj99hidxRp5a1oyOyZO+W+2Z3FfV3G2r3V
         OIV6OQIzv1/Nkdyjbxp4v3GPFLViFD0zpoSyn3ibhAgW6WthJOZgahfm3N4iPmAMfjn2
         f00vW32o3VckwGjADlpYxk7FrSIpScjdCdch1ulcC5VwWJS3TTNnHdgWVemPNJ0vHaik
         g8DL/kFzkF0oHM4bDhTH4/7i5SCTMd3cZ5O0TddJ9cW3XUMociYTrnVE0vqFh88ROMYc
         4pMw==
X-Received: by 10.28.230.74 with SMTP id d71mr38498555wmh.97.1451285081172;
        Sun, 27 Dec 2015 22:44:41 -0800 (PST)
Message-ID: <20151228064439.GA32586@eldamar.local>
References: <567339BE.3090404@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <567339BE.3090404@canonical.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 28 Dec 2015 07:44:39 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE Request: Linux kernel: privilege escalation
 in user namespaces
To: oss-security@lists.openwall.com

Hi,

On Thu, Dec 17, 2015 at 02:39:58PM -0800, John Johansen wrote:
> Hi,
> 
> I haven't seen CVE request for this one yet so,
> 
> Jann Horn reported a privilege escalation in user namespaces to the
> lkml mailing list
> 
> https://lkml.org/lkml/2015/12/12/259
> 
> if a root-owned process wants to enter a user
> namespace for some reason without knowing who owns it and
> therefore can't change to the namespace owner's uid and gid
> before entering, as soon as it has entered the namespace,
> the namespace owner can attach to it via ptrace and thereby
> gain access to its uid and gid.

FTR: There is an iteration to the initial patch, submitted further
down in the thread: https://lkml.org/lkml/2015/12/25/71 but it is not
yet merged in Linus tree.

@MITRE CVE assignment team: Can a CVE be assigned or is something more
needed here?

Regards,
Salvatore
