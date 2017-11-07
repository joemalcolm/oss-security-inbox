X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["587" "Tuesday" "7" "November" "2017" "22:00:19" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171107210019.tey5xzfaqaswh7v3@eldamar.local>" "21" "Re: [oss-security] Net::Ping::External command injections" nil nil nil "11" "2017110721:00:19" "[oss-security] Net::Ping::External command injections" (number mark "U       carnil@debia Nov  7   21/587   " thread-indent "\"Re: [oss-security] Net::Ping::External command injections\"\n") "<20171107165127.GA1693@weckbecker.name>" ("<20171107165127.GA1693@weckbecker.name>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12024 invoked by uid 550); 7 Nov 2017 21:00:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11994 invoked from network); 7 Nov 2017 21:00:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=frQ4U2Myd4DKFvmjkntRgEJE2K0cPbkGOrFDEobQOGM=;
        b=vOjvDcgXUGNIHjuHvPH1RKnXAt/eTN9J/iyW0muGhOzIHtZ2KXSbU/BKYVucAA8HAk
         r9ObwiUUcoN3u7WvSZOedSrFscd6zIU4eF3q6jAeyqaiqvzIcNmGUc1llOhqBLHjuqZP
         Z+H3sIJDt21jF5xNBAKS9jdu84yebsEaoicz+/DUiJY9N/Cko+aXB49/TEoPesrpMeWO
         V3v4YeLpdFqwGKWcKvbRQ3hW0ztFB0JfMMYzmQn90hlGvAjAlF8o+D1cZQnK9PlWU4Ao
         XhVEBeuer9Qtpl9QX0RjTsM6fDkpB/hvLulSQ4daEv+hqVULvPIoMuK0ePw/nrR7CU3Z
         yxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=frQ4U2Myd4DKFvmjkntRgEJE2K0cPbkGOrFDEobQOGM=;
        b=FwdEnvwfAIO71U5BPuzyRjFSrB4iOi0Wo9GJoAmLhDYLiNZqGidn+o2BYzmHUF+5pD
         7iJF5rdw+bKdXaEbE9X1CsiJo3E25k/tkSoBjzAzSb2ZDKdoxisz3lz2XaMeuc92GQiB
         I/L7XbSYztwQZ3DahRe+6G2ZZvEWdZ93UaXRm7ZaDOpSKPjKfygAW3MhanmO9aZKo3zY
         mYIxpibip99D0dNeZq1PE6e/WF33KgC4R32bJYdseD5tGWHNCf9fo6QdCt4cmWeKZPAn
         r5tHmPt6zjhXRcCyANSk6bBlzvPvhYfaIdGcgsQn0uojxIonthdTKzDjLBipylxsNGPA
         rxJg==
X-Gm-Message-State: AJaThX6wn8zlnxU30r3ND/eB+VTD/3j8MYLGOhmxEhZcuFTEhBQe+lGr
	wsStZ367K/V6R854lis1SZ2iNg==
X-Google-Smtp-Source: ABhQp+RkdU6puPZHLLrXsTrqRdHmEiFXnnPtJAe8Nv5HYtW3eecK7VEojFSOP0QFw6WSkr9vzegFmA==
X-Received: by 10.28.65.133 with SMTP id o127mr378807wma.146.1510088421562;
        Tue, 07 Nov 2017 13:00:21 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 7 Nov 2017 22:00:19 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20171107210019.tey5xzfaqaswh7v3@eldamar.local>
References: <20171107165127.GA1693@weckbecker.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171107165127.GA1693@weckbecker.name>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] Net::Ping::External command injections

Hi

On Tue, Nov 07, 2017 at 05:51:27PM +0100, Matthias Weckbecker wrote:
> Hi,
> 
> Net::Ping::External [0] is prone to command injection vulnerabilities.
> 
> The issues are roughly 10 (!) years old [1], but the code is still being
> shipped these days (e.g. in ubuntu artful and debian stretch [2]).
> 
> I had contacted the author of the code a few days ago, but obviously did
> not get any reaction.
> 
> A patch is available here:
> 
>   http://matthias.sdfeu.org/devel/net-ping-external-cmd-injection.patch

This issue has been assinged CVE-2008-7319 by MITRE.

Regards,
Salvatore
