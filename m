X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["751" "Friday" "15" "December" "2017" "20:12:04" "+0000" "Hans Jerry Illikainen" "hji@dyntopia.com" "<20171215201204.GA5617@darpa.mil>" "16" "Re: [oss-security] CVE-2017-17670: vlc: type conversion vulnerability" "^Cc:" nil nil "12" "2017121520:12:04" "[oss-security] CVE-2017-17670: vlc: type conversion vulnerability" (number mark "U       hji@dyntopia Dec 15   16/751   " thread-indent "\"Re: [oss-security] CVE-2017-17670: vlc: type conversion vulnerability\"\n") "<MyP_Kvh4S6Jn3XH6oHg5e6u_sbL_LTrnGH4GDvsHBiFsgkI1QF8dxOAzxuBQGGGLeh-ip8HGxSsNyoGzwUVC41EixpqVC775yUzwT05DLLw=@itk.swiss>" ("<20171215013211.GA4296@darpa.mil>" "<MyP_Kvh4S6Jn3XH6oHg5e6u_sbL_LTrnGH4GDvsHBiFsgkI1QF8dxOAzxuBQGGGLeh-ip8HGxSsNyoGzwUVC41EixpqVC775yUzwT05DLLw=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15983 invoked by uid 550); 15 Dec 2017 20:18:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15962 invoked from network); 15 Dec 2017 20:18:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dyntopia-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6ea6/4LFYgCrKde0LfPoXAFezjIzuqM10zNrZh7hewA=;
        b=jvZEVdjEwCwVIU0vJhfjQoPcYRkRY+lCDEGzA0SBaNjNzOp0cMdyXnfefFwB1oT3xP
         VCvq5Ug5X98PPhxplRdgAdFqhoNgWqauWt4oTD46BGDb+yDEMlB7kngQOQV4Or3JT2yW
         fr1m2aSYhyhq45I3i+D3k3FgZmfW308n/u3cYgSovdC1OPtC49Tri1pXJ2uMjlgGbJtC
         AffYCQHMtCjhs0tUZ89wpH7+HvfptF5kMjvUG/0dnFLnG6UkRLBvLEL/2xTN82VYcwqM
         PhcWbVK5aYKtYcB7nC1oqf1JZgLu/tvvutXnc4ZdoFnHG4YJT8llbqt76f7YtYejj3pU
         Kysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6ea6/4LFYgCrKde0LfPoXAFezjIzuqM10zNrZh7hewA=;
        b=aEVi75KNgK56UDSGUHJ15Gl0qAYNkM/P4WjlYmekaJ3RVSkBNrWy+XGshEiy2anJcg
         T5tQYd+m9BzTajD+zBLe05AA27XGnTp9EG6B9SkmkvozjGLHFS86ywzHD6KTuaOad+cK
         2xF72wkG/hfYo0MM4uu6mhtDL28EzlvwA2rEwlpRn9WCuTpZXit0r/TBWVv+lgAwYpvi
         q/Isx2fvp8lYaEuYTqQiwUOeQIEML1ZTVMfO9pjY+2i7Oq4V+JXwLWe7QDlLOacC9mlM
         2mrijEjyvNOfsUQaCKrkbJ8CF7VhvQtdeg4zUNKeEt8cGQ6YrHZ/6JiVEuvvobw//swv
         GKMg==
X-Gm-Message-State: AKGB3mIygSYjk5RQTrB5SDuevlkeFO1EcVFxCXOL/CoI/Nz3Hrt7M9aE
	3bY3tOO3QDoI2j7etOhihuN249VIE4krew==
X-Google-Smtp-Source: ACJfBouDKospuSnWeDkEDsyhX+mhGuK5XNizS8SbRww5kjxQzhRYGRRNM3DJg/xKOl1JlWbGOGrxtg==
X-Received: by 10.80.212.158 with SMTP id s30mr18936145edi.286.1513369078677;
        Fri, 15 Dec 2017 12:17:58 -0800 (PST)
Message-ID: <20171215201204.GA5617@darpa.mil>
References: <20171215013211.GA4296@darpa.mil>
 <MyP_Kvh4S6Jn3XH6oHg5e6u_sbL_LTrnGH4GDvsHBiFsgkI1QF8dxOAzxuBQGGGLeh-ip8HGxSsNyoGzwUVC41EixpqVC775yUzwT05DLLw=@itk.swiss>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MyP_Kvh4S6Jn3XH6oHg5e6u_sbL_LTrnGH4GDvsHBiFsgkI1QF8dxOAzxuBQGGGLeh-ip8HGxSsNyoGzwUVC41EixpqVC775yUzwT05DLLw=@itk.swiss>
Cc: "bugtraq@securityfocus.com" <bugtraq@securityfocus.com>,
	"fulldisclosure@seclists.org" <fulldisclosure@seclists.org>
Date: Fri, 15 Dec 2017 20:12:04 +0000
From: Hans Jerry Illikainen <hji@dyntopia.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-17670: vlc: type conversion vulnerability
To: oss-security@lists.openwall.com

On Fri, Dec 15, 2017 at 05:28:45AM -0500, Stiepan wrote:
> Nice job! By the way, when is back-porting of the fix to the current
> stable version(s) envisioned? (I doubt most oss OS distributions use
> the "HEAD of the VLC master branch", nor that most Windows or Mac
> users use the latest bleeding-edge build, leaving a potentially large
> window for exploitation if former versions don't get fixed; knowing
> VLC's popularity, I think that the question should be seriously
> considered)
> And is there a standalone patch or workaround that could be used for
> older versions (besides not opening mp4 videos anymore)?

The MP4 module has undergone some major changes and unfortunately the
VLC project probably won't backport a fix to 2.2.x.

-- 
hji
