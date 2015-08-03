X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["681" "Sunday" "2" "August" "2015" "18:27:32" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVVKQtRcTsGwAWcKXez3C1XfcLrbgDqzYU0CKiwdS297g@mail.gmail.com>" "28" "[oss-security] Re: CVE request: XEE in ruby gem ruby-saml <1.0.0" nil nil nil "8" "2015080301:27:32" "[oss-security] Re: CVE request: XEE in ruby gem ruby-saml <1.0.0" (number mark "        reed@reedlod Aug  2   28/681   " thread-indent "\"[oss-security] Re: CVE request: XEE in ruby gem ruby-saml <1.0.0\"\n") "<CALPTtNVK+qFx9pu7wPYpM7vtOXbRLhn_0FpeJAaFUJ4QoxHupg@mail.gmail.com>" ("<CALPTtNVK+qFx9pu7wPYpM7vtOXbRLhn_0FpeJAaFUJ4QoxHupg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9708 invoked by uid 550); 3 Aug 2015 01:28:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9631 invoked from network); 3 Aug 2015 01:28:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=vatO1qiOAfeXuz7m1UV2XUYZ97iwxSGignNRwRy+a/Y=;
        b=bCnBDSVmGCbHxyDqRgZU+5T9sIgOMeHgy/IW1l8B735BQB3Ni8LOjpFpcUe4/C0+mN
         ZCNycqxgaE5WsjEK9La7iLF+r24UC51BVC+rEdgxiZEplaaj7urEICzf+JRlFz1GEbYn
         M0cSaqNDxXEg30BP6HYTfniDmhNo/7ORWpH18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=vatO1qiOAfeXuz7m1UV2XUYZ97iwxSGignNRwRy+a/Y=;
        b=BbVy1gX2RN5PvHxuU0XLjr6YOae+K+OANApY3pRdt4SmTXWkzXSB0nr0zUWsMayWcQ
         fJrUj+y2QrpHahJ3RV05maBL56rqkZuI0h8aZoghG9GlDagdHCyj9+RSS9umeHOscLPw
         /+ArWXWMcDO44N/A9zbwXF/YKLqWziVrhlD6At07HQzdqOTNJNMbw/hCOoobfkwq5EDQ
         LMiYWdOperFEm+m0PZukX+WLDA85XOW5H4KWdCQyDrNnLH6Q75LNKBy1wtjSZgR1u6WH
         8rncNSp9fI804biAqfA+fp5ArngfExcTbIKtRF1iYF4KDOFYc1/mA06Q0TZfb6TQoRvF
         F6HA==
X-Gm-Message-State: ALoCoQl4J3Hpg4Vy4VOTqIdVMaupc5KEwnfVXTXopV0J5X+iI8VXtHC6wrkpMzBH1BzYS0RG0qek
X-Received: by 10.107.137.87 with SMTP id l84mr20344951iod.119.1438565272094;
 Sun, 02 Aug 2015 18:27:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALPTtNVK+qFx9pu7wPYpM7vtOXbRLhn_0FpeJAaFUJ4QoxHupg@mail.gmail.com>
References: <CALPTtNVK+qFx9pu7wPYpM7vtOXbRLhn_0FpeJAaFUJ4QoxHupg@mail.gmail.com>
Message-ID: <CALPTtNVVKQtRcTsGwAWcKXez3C1XfcLrbgDqzYU0CKiwdS297g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ec47c0794e0051c5e14ca
Date: Sun, 2 Aug 2015 18:27:32 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: XEE in ruby gem ruby-saml <1.0.0
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a113ec47c0794e0051c5e14ca
Content-Type: text/plain; charset=UTF-8

Any update on a CVE assignment for this?

~reed

On Thu, Jul 9, 2015 at 2:48 AM, Reed Loden <reed@reedloden.com> wrote:

> Noticed this when reading changelog entries... I'm weird like that.
>
> https://github.com/onelogin/ruby-saml/pull/247
>
>
> https://github.com/onelogin/ruby-saml/commit/a2e5318530701bf14528c5b3b51c880b3499a75d
>
> "Avoid entity expansion (XEE attacks)"
>
> Release notes for ruby-saml v1.0.0
> https://github.com/onelogin/ruby-saml/releases/tag/v1.0.0
>
> (I wonder if the "Fix xpath injection on xml_security.rb" fix is a vuln as
> well)
>
> ~reed
>

--001a113ec47c0794e0051c5e14ca--
