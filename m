X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["215" "Monday" "17" "August" "2015" "12:38:34" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUDJbSmjcgOAe27h9k4h5dq6cHUXOTgbO9YTkCanopGzUA@mail.gmail.com>" "5" "Re: [oss-security] Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081719:38:34" "[oss-security] Terminal escape sequences - the new XSS for admins?" (number mark "        lcamtuf@core Aug 17    5/215   " thread-indent "\"Re: [oss-security] Terminal escape sequences - the new XSS for admins?\"\n") "<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24479 invoked by uid 550); 17 Aug 2015 19:39:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24454 invoked from network); 17 Aug 2015 19:39:05 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=P/fo+BvrZaWUBEgiX+iFUu83+eNexWKoIJd5rirRKr4=;
        b=h69XxXn1ljDAOwQtqYHL+5BLr5flfEkKvCC9jTOOvjroKjCXCFs5vNEbhaNeocl8gc
         wLSQVgmuZClebHPorNxgR1ZwHFUKFb+rbO9VLXOBsDgEEY8MwqUStDVepghPVfCxTbmb
         m6UEXEcWAFrVNvwwcHZeY7f4uRPUtknay2fa6EifLVeni1bRexjSb/TNChhWtTm8WxGE
         NF6F4saKhtzGJpeh7R+Jt9p/CqPqoCgLpoNkk7qe6+R4fq0Ioaphnf9UGmvCP68zgGbW
         G4YCU6lvrhftEirosVf3j/EWDQADi25Zdme9djQNwfHOqB8OHPcZlbXM52Oi9IFUjTcX
         PBcg==
X-Gm-Message-State: ALoCoQnBaYOUXonVu0jJBJAwzCyC9h5ggAGWa5l3XChkTVv8Iv/jpBXgpTHNPEf8Cf7dt2dzH7Y5
X-Received: by 10.50.92.100 with SMTP id cl4mr2523445igb.97.1439840333576;
 Mon, 17 Aug 2015 12:38:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
Message-ID: <CALx_OUDJbSmjcgOAe27h9k4h5dq6cHUXOTgbO9YTkCanopGzUA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 17 Aug 2015 12:38:34 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Terminal escape sequences - the new XSS for admins?
To: oss-security <oss-security@lists.openwall.com>

> http://turbochaos.blogspot.ca/2014/08/journalctl-terminal-escape-injection.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1084577

Another nice tidbit:
https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=202326
