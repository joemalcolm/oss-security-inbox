X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["780" "Wednesday" "2" "December" "2015" "18:58:39" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151202175839.GA24979@eldamar.local>" "25" "Re: [oss-security] Re: Heap Overflow in PCRE" "^Cc:" nil nil "12" "2015120217:58:39" "[oss-security] Re: Heap Overflow in PCRE" (number mark "        carnil@debia Dec  2   25/780   " thread-indent "\"Re: [oss-security] Re: Heap Overflow in PCRE\"\n") "<20151202050031.58EC536E03A@smtpvbsrv1.mitre.org>" ("<20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>" "<20151202050031.58EC536E03A@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3309 invoked by uid 550); 2 Dec 2015 17:58:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3291 invoked from network); 2 Dec 2015 17:58:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7XYyR/dmNhrZlfxxvlwGjZGeAxuMh/y+eC7IOhmNNLw=;
        b=UmxE0p3Dur9qo6yJFR2D+xim9R7Nq3/yp9mdlaXLqgTtko+Xa5DlRAvZlYQdOzf0G6
         rXFOUkSVFXKFpHyGm0Q13kLufoUj8S6yKetoZc2S2TYKKykpEZ4HG8F2eTS/ucCbcXlF
         IS6MAUE/cZ9wqUEHoSbmhqlXgHnfdaK+gKrXS4UqOgZ04ofeuFFKp3uPMDtkXfOMMO/r
         7kq267ESvYX8kIVI/f8xQltMQtLOYb0I5LNo2syxEtSqxhsIWTtR0k2Ts1QUjW0XMKzX
         sVIhkYNwZm2ZqwxvJP4a8zbyxMtuFkiw8EwGklVkzfH95siKq1401yNIt0cRq6KNURKB
         dGrg==
X-Received: by 10.194.62.14 with SMTP id u14mr6536478wjr.24.1449079122225;
        Wed, 02 Dec 2015 09:58:42 -0800 (PST)
Message-ID: <20151202175839.GA24979@eldamar.local>
References: <20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>
 <20151202050031.58EC536E03A@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151202050031.58EC536E03A@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: hanno@hboeck.de, cve-assign@mitre.org
Date: Wed, 2 Dec 2015 18:58:39 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Re: Heap Overflow in PCRE
To: oss-security@lists.openwall.com

Hi MITRE team,

On Wed, Dec 02, 2015 at 12:00:31AM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > https://blog.fuzzing-project.org/29-Heap-Overflow-in-PCRE.html
> 
> This is CVE-2015-8380.
> 
> The other PCRE issues have the consecutive IDs from CVE-2015-8381 to
> CVE-2015-8395 inclusive. See the URLs such as:
> 
>   https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-8381

I have a question about CVE-2015-8384, according to
https://bugzilla.redhat.com/show_bug.cgi?id=1287623 the fixing commit
in upstream VCS is r1558, but (cf.
https://bugzilla.redhat.com/show_bug.cgi?id=1287623#c6) CVE-2015-3210
was assigned for the issue fixed by the same revision r1558.

Should any of those two CVE be rejected?

Regards,
Salvatore
