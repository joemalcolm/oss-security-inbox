X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1237" "Monday" "20" "April" "2015" "13:01:58" "-0400" "Dan McDonald" "danmcd@omniti.com" "<E336B468-2501-4156-A4ED-04E68DD3CAC5@omniti.com>" "29" "[oss-security] Re: CVE request - illumos" nil nil nil "4" "2015042017:01:58" "[oss-security] Re: CVE request - illumos" (number mark "        danmcd@omnit Apr 20   29/1237  " thread-indent "\"[oss-security] Re: CVE request - illumos\"\n") "<20150420163423.0823A6C4020@smtpvmsrv1.mitre.org>" ("<20150420163423.0823A6C4020@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14253 invoked by uid 550); 20 Apr 2015 17:02:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14235 invoked from network); 20 Apr 2015 17:02:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:cc:content-transfer-encoding:message-id:references
         :to;
        bh=fuIJYo7E8DEW+X/i96UE+lCLBFzV56gVPvm/em6CnIs=;
        b=ZLk+h28Yb+kSXNCZRxhPVTg+MHe9N2QVuN+aZbEN7VljAkOPNirtO+5IPx2tRnn+Pq
         lUzlOp0PkNMQ4QlSU6ZAv0QE6Pth+z4M30KkAkq6Yzzya0ZlFu1ru3PW4jOklRPK4ze2
         eUzBF4AYNCA9k0jGZsasrYiecE2YlILJUrpee2+Q0JOoCYijvklnVNMwadu9d/h4wt5A
         WFnsf5/hiYeY4mJ+VdQ2iELW19IgnNQWa9A7npRaCVqXdEqZipcZb1ymWUGW1QAt/2lF
         iM99ULIZrRUUnEk7ormEZfuMMizQdEp5Ki1EVPjrur+ysQGiSAH5MvX9Rjy4YCc47TDO
         cd5w==
X-Gm-Message-State: ALoCoQlL8ZSR3UCSHRX2YEndQvIBciZRYvCeudC6VdmAUxkCcfUnUXUKFe22KscVw2359fC+waFX
X-Received: by 10.55.43.83 with SMTP id r80mr30334509qkh.80.1429549320605;
        Mon, 20 Apr 2015 10:02:00 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
In-Reply-To: <20150420163423.0823A6C4020@smtpvmsrv1.mitre.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E336B468-2501-4156-A4ED-04E68DD3CAC5@omniti.com>
References: <20150420163423.0823A6C4020@smtpvmsrv1.mitre.org>
X-Mailer: Apple Mail (2.2098)
Cc: oss-security@lists.openwall.com,
 Dan McDonald <danmcd@omniti.com>
Date: Mon, 20 Apr 2015 13:01:58 -0400
From: Dan McDonald <danmcd@omniti.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - illumos
To: cve-assign@mitre.org

Addressing one part publically:

> On Apr 20, 2015, at 12:34 PM, cve-assign@mitre.org wrote:

<SNIP!>

> The cve-assign@mitre.org address can be used for non-public requests
> for illumos CVEs. There may be other options for the open-source
> parts, but we think that not all of illumos is open source.
> http://wiki.illumos.org/display/illumos/illumos+FAQs says "There still
> remain some binary-only, closed source components that we inherited
> from Oracle." If the component also affects an Oracle product, then
> Oracle could assign the CVE ID.

The closed-source bits leftover from Oracle will never be updated, because =
Oracle unceremoniously closed the old OpenSolaris project without even tell=
ing the community (the  community found out via a leaked internal email).

Illumos is its own entity, and we'd only be asking for CVE entries based on=
 what is open-sourced, modulo some really REALLY bizarre corner-case I can'=
t imagine, but whose (remote) possibility I won't dismiss.

There is always a chance that illumos has some problem that ALSO exists in =
now-closed Oracle Solaris (or perhaps in still open-sourced components that=
 are common to both), but please do not equate the two as a rule of thumb.

Thanks,
Dan

