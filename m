X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["560" "Friday" "28" "April" "2017" "21:37:38" "+1000" "David Black" "dblack@atlassian.com" "<CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>" "26" "Re: [oss-security] CVE-2017-8291 ghostscript remote code execution" "^Date:" nil nil "4" "2017042811:37:38" "[oss-security] CVE-2017-8291 ghostscript remote code execution" (number mark "        dblack@atlas Apr 28   26/560   " thread-indent "\"Re: [oss-security] CVE-2017-8291 ghostscript remote code execution\"\n") "<20170428030522.GA53619@wopr>" ("<20170428015004.11956.12148@falcon>" "<20170428030522.GA53619@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21967 invoked by uid 550); 28 Apr 2017 11:37:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21949 invoked from network); 28 Apr 2017 11:37:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atlassian-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=9nJnQiCpPC8M9WtXg7uzYrQ4M20oL1g3HFltnlXMu+8=;
        b=FkBqQhB0P75ea6+ztvN+PdgoyfqQPDn8V/ilcKDJz8c8IjaS49PT+z+jZHCTEBl24s
         4z0KCYGNKkV2aBT4ZCMNazuQxcGig6kTmhL+wCWFHZNdr5ALsjODSYXhx0c5mmWXYuSJ
         ZmS+031ADse3Nd5wAkmELzFQQy559ip9P++KJBIltWrubGjFpsbKtUrSFf9Uh//kf2U/
         UIOmmF7Xm/OTKC+DXmiiaRO6mPnGnJ/Obbr/nlzKcpjhaRJBjnTJnmUnhTl2vNlhx1Xa
         2NHAW3PTDRJ5YTaNdIUn2t2FWqMavWa89DIFkigpd7ROz3xfOVnr5CEBl8M2LOd1t+zq
         u6+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=9nJnQiCpPC8M9WtXg7uzYrQ4M20oL1g3HFltnlXMu+8=;
        b=AIwPZ99RjVnZ5GUp+oZPSqywKd7k1alFjUC3kJcar7Qnx4sUZWAs1VQ4cU0BAMGMBT
         5K5RlUJaIvJemrBIGKqtycTazKMdQOb4rE3SljSBJDBp3moC1N+yqjlhZbvqBk/9FjeH
         L+8Ps08XSjkVs4Jf5fHJrmMCeYjsvjvqK6RnAb47ztJPrCqKeh6oDFpHJ/ErNkn2t9lb
         VmGPyhxrJiMBNIgotLS1yXyj7gvGy++El6DcFv+Bedv6eqRf2oUKeVWllWMVOC8xJznU
         bxNqvdevzr4PbyS/0ILf/DVq3XxGe218XRvPh/t4eHbpGFv9WD0+J4SWaod+5EJBWB1L
         iF0Q==
X-Gm-Message-State: AN3rC/7vTQhaAJQKIGxYQPBli/0oJFRYhp/C0A47Zil7dUXl30Di2VC9
	q/2HlRvdSN/uiE9rBEnv7wgyzrbGetpQ8ZE=
X-Received: by 10.107.161.82 with SMTP id k79mr10577870ioe.204.1493379458764;
 Fri, 28 Apr 2017 04:37:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170428030522.GA53619@wopr>
References: <20170428015004.11956.12148@falcon> <20170428030522.GA53619@wopr>
Message-ID: <CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140f68e27b7e9054e3880fa
Date: Fri, 28 Apr 2017 21:37:38 +1000
From: David Black <dblack@atlassian.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8291 ghostscript remote code execution
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a1140f68e27b7e9054e3880fa
Content-Type: text/plain; charset=UTF-8

On Friday, 28 April 2017, Kurt H Maier <khm@sciops.net> wrote:

> On Fri, Apr 28, 2017 at 01:50:04AM -0000, security@atlassian.com
> <javascript:;> wrote:
>
>
> Why are you sending user-tracking urls to this list?
>
>
Hi Kurt,
We did not intend to send user tracking urls to this list. However, the
method we used to send the email resulted in sendgrid rewriting the the
links. We apologise regardless.


--
David.


-- 
David Black / Security Engineer.

--001a1140f68e27b7e9054e3880fa--
