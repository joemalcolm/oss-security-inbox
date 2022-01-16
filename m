X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2342" "Sunday" "16" "January" "2022" "09:54:02" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "43" "Re: [oss-security] Fuzzy CVE's in GNU inetutils" nil nil nil "1" nil nil (number mark "U       carnil@debia Jan 16   43/2342  " thread-indent "\"Re: [oss-security] Fuzzy CVE's in GNU inetutils\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Fuzzy CVE's in GNU inetutils" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12023 invoked by uid 550); 16 Jan 2022 08:54:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12005 invoked from network); 16 Jan 2022 08:54:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XrXC4RW7JWN/4Tt+r42ozwIwjfcC9JNnHQHZUNPzRa8=;
        b=Q9uVM/pvLGuOIlHqb7ka/bRcuOHJlt3mrqzPiE19wEgeXRHZVjTB2F3DKfl2l+5gUR
         IazEwO16AkIWUUzuuY7QMdkST6ZxAXwwg+k6TUmr4dva2B2NagcqrptQuSs79qje8z0F
         Q1Inf17qD1QgBlAblPNWsGb/BiTP46C4jyTHZLm0UcaiSj4xjRY4HRGHKYt8GhybGOJp
         svoLGYAlCwx6SL35BBG6qjnBZQ4jsvaYcIl3eaTDdSGZfG1U1cSjzvmej2fgSu4GPvWe
         hauuqxSzjpY290Hojo3rbBDCvlZv3cCK0pndggO2fUK3pJEO7K3l7oKm5JHj2CP9JB2m
         evDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=XrXC4RW7JWN/4Tt+r42ozwIwjfcC9JNnHQHZUNPzRa8=;
        b=pb54NVNvOWC21RLylqJmLuF2EHmj2WPWQN+q/KW2bX9cr1Y/4BXCwcvFAraTIk/0Y4
         QmWCRU+da7UwFC2TGjo+jmSByn6sMEG7Iuvl+QAClO8ckfGFOI5wvo9p/ugi33w2Znrz
         37iaIcKpcC2KZQNJrWy2UEAwb0SK3TfgQFxBqrOwguoyRXSq7yg3Is1gw5yU/de+YZFK
         GoB7lk6F6cW97mWOfHbNFDSTzKl+8ThW8eYiikUIKcIqIejFwgXyWIVQNBi0cVkHDp3G
         G/+h3a//TQGHcdSjJQT6QtjgdUfp4gYeyvd0RL8lIc3rTRWXMtfOwGWadkhAqXMkuVF2
         7/Xw==
X-Gm-Message-State: AOAM533meqHps76RPR822YsM7TaFp33fX1/D+cHV9RGAd73ZJTyCrU3l
	9xrp0VI1zVU4m/1ousXGU71fl8kjOkLXCQ==
X-Google-Smtp-Source: ABdhPJx6uSqgX7+mXE+kGcnL6hJC5STMZ1BT4HK0fnu7yWWHmV/6s/AjQluGbCLkan5Qapcz6boFhg==
X-Received: by 2002:adf:fa42:: with SMTP id y2mr6636799wrr.52.1642323243267;
        Sun, 16 Jan 2022 00:54:03 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 16 Jan 2022 09:54:02 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YePdKmWRZCS9HDqD@eldamar.lan>
References: <0cb43119-de19-4f4b-99a8-b7949227a26c@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0cb43119-de19-4f4b-99a8-b7949227a26c@oracle.com>
Subject: Re: [oss-security] Fuzzy CVE's in GNU inetutils

Hi,

On Fri, Jan 14, 2022 at 06:56:13PM -0800, Alan Coopersmith wrote:
> I noticed a number of new CVE's recently published against GNU inetutils,
> which seem to correspond to the results of fuzz testing that were mailed
> out in December, as seen on
> https://lists.gnu.org/archive/html/bug-inetutils/2021-12/threads.html
> 
> Trying out the provided POC inputs with other ftp, telnet, and tftp
> commands derived from the same original BSD sources showed some seem
> to originate in the common roots and may affect other implementations
> as well.
> 
> But they all also seem to only be of the case "user can crash local
> client" - I don't see any security boundaries crossed or security
> assurances broken here, just bugs in local command input parsers,
> so I don't see why they have CVE ids in general.
> 
> They are:
> 
> CVE-2021-46060 	A NULL Pointer Dereference vulnerability exists in GNU inetutils 2.2 via the setcmd function at commands.c, which causes a denial of service.
> 
> CVE-2021-46058 	A heap-based Buffer Overflow vulnerability exists in GNU inetutils 2.2 in cmds.c, which caused a denial of service.
> 
> CVE-2021-45782 	An untrusted pointer dereference in getcmd() at inetutils/src/tftp.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.
> 
> CVE-2021-45781 	GNU Inetutils 2.2.16-cf091 was discovered to contain a heap-based buffer overflow via the component logger at inetutils/src/logger.c.
> 
> CVE-2021-45780 	GNU Inetutils commit cf091 was discovered to contain a memory leak via the ifconfig function.
> 
> CVE-2021-45779 	A NULL pointer dereference in unsetcmd() at inetutils/telnet/commands.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.
> 
> CVE-2021-45778 	A NULL pointer dereference in setnmap() at cmds.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.
> 
> CVE-2021-45775 	GNU Inetutils 2.2.16-cf091 was discovered to contain an infinite loop in domacro at domacro.c.
> 
> CVE-2021-45774 	A NULL pointer dereference in help() at inetutils/telnet/commands.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.

In fact all of those were REJECTED again (with a "Further
investigation showed that it was not a security issue" reason).

Regards,
Salvatore
