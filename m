X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2482" "Tuesday" "30" "May" "2017" "09:25:38" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496150738.941.5.camel@gmail.com>" "57" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053013:25:38" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   57/2482  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<1496145073.1459.1.camel@gmail.com>" "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>" "<1496149333.941.1.camel@gmail.com>" "<099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5271 invoked by uid 550); 30 May 2017 13:25:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5250 invoked from network); 30 May 2017 13:25:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QGsed0muGodzue34CPtRnXe+GFBT59lxTybXX6I/Vtg=;
        b=V26qZkrBHSTMmE/vR1d7Jyqjaf85tNMlgF97R00NJ7FxuhzhO/Moc/OA5NbF+9yyDZ
         rMUDUyxJRpAtqySlnPEqo63ZLReTBB405Ob0FnEnGeF861UWmpmbqf7PO0cItOs20FY/
         JP3WJE4pcHvxEJ1Cv/14Pi+whnYsoMdi6dNr4Yzl5d22xc9r6PN0Lg9pvaTFIC1aVThn
         F3/pxuUXKmLvBRA54gY2Lvi5uuF0tIQGjZXKk/SD6TUej9ECjFbZ1EB0UgPVPmxCYLo1
         cbzoWux/gj09wcSqVBuvYwZAEUWtng/S8GkD9piP+CwGno0yuTqsxNHqLdaT83uvekiY
         XGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QGsed0muGodzue34CPtRnXe+GFBT59lxTybXX6I/Vtg=;
        b=N8phNZmUU+vbTV0R5oIol0fIWJUhyIa3OlOjlIZBWnXPNS7tCHH2FdbWP5XGXgqn0M
         VnhJUurO/lOA0eraXLvh5rAZULxaYIPspqiAsZLjNtSQY6OQQibgJG3EueVW8G6+3qYl
         JtfNTD5JAIcDpEsYDFUPb0Tevy38c/QsnmwWMF2Dk3+LWWw9HTIMoIEDK75D9yO16CR6
         T8T/2aIbp6k0fJrZ2YvjWvWzt9UQsqOZMox9MO53NSOIPPO3KMc5a6qJYWrNA0g1jx6/
         pDShCe5ad1lniAMCvIUQlliLO0SKfW4R4VBdIgMvktIlFD60Dq+t5nX8yYDrUTaWtSpB
         6xCA==
X-Gm-Message-State: AODbwcCDwEVT6rDiLmLXYAEDzurPUwySAWCrQAMdPrBolSrlMm2GHuoq
	XTMnKnqWoTaJNg==
X-Received: by 10.36.125.197 with SMTP id b188mr1774616itc.59.1496150739856;
        Tue, 30 May 2017 06:25:39 -0700 (PDT)
Message-ID: <1496150738.941.5.camel@gmail.com>
In-Reply-To: <099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <1496145073.1459.1.camel@gmail.com>
	 <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
	 <1496149333.941.1.camel@gmail.com>
	 <099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 09:25:38 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com

On Tue, 2017-05-30 at 15:05 +0200, Florian Weimer wrote:
> On 05/30/2017 03:02 PM, Daniel Micay wrote:
> > On Tue, 2017-05-30 at 14:52 +0200, Florian Weimer wrote:
> > > On 05/30/2017 01:51 PM, Daniel Micay wrote:
> > > > It's unreasonable to consider the kernel line untrusted. A CVE
> > > > being
> > > > issued for one of these issues didn't make sense.
> > > 
> > > It's a potential Secure Boot bypass, so it matters in some
> > > theoretical
> > > sense to some downstreams which carry those Secure Boot patches.
> > > 
> > > (Although I have yet to see anyone to revoke a signature on a
> > > kernel
> > > with known root-to-ring-0 escalations, so the practical impact
> > > isn't
> > > large because an attack could still downgrade to a kernel with an
> > > exploitable vulnerability.)
> > > 
> > > Florian
> > 
> > How is it a secure boot bypass? If the secure boot implementation
> > doesn't cover the kernel line it's already broken.
> 
> That's not how the Secure Boot patches work.

Secure boot means verifying boot chain from a root of trust in hardware.

It's you who doesn't seem to understand how it works, and yet you're
telling that to me...

The late stage bootloader needs to verify the kernel / initrd and then
the kernel verifies the userspace OS if it's a full implementation. It
doesn't make sense for the kernel line to be left unverified as part of
that, and it isn't how ChromeOS / Android implement it. They verify the
kernel line as part of the initrd and don't allow setting a custom one
unless the bootloader is unlocked, which disables verified boot anyway.

> They restrict some
> features so that they cannot be selected from the kernel command line
> (or later from userland), and they do not rely on a bootloader which
> does not provide any means for editing the kernel command line.

I think you're referring to something different: restricting module
configuration parameters.

> > The provided example was treated as a verified boot vulnerability by
> > Google and fixed. It isn't supposed to be possible to set the kernel
> > line with a locked bootloader on Nexus/Pixel devices. It was a bug.
> 
> I don't know how Google's user lockout works, so I can't comment on
> that.

It's not "user lockout", it's verified boot. It isn't really part of the
security model within the OS. A user on Android / ChromeOS doesn't have
root access so while Android uses SELinux heavily (far more than RHEL /
Fedora) it isn't really related to this at all.
