Received: (qmail 15504 invoked by uid 550); 14 Mar 2026 20:13:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15437 invoked from network); 14 Mar 2026 20:07:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773518844;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=30pXU4APMP1kolDwpbRzYIh4R3KqT+S4obXkqfexdlU=;
	b=I3VbKFYa2TfDrC7DIzAN3ree6h5GuJjgregGmWHNx5O8WAlKRhKetK2ryINwMUbo5YkoJT
	Y4u93jHc5JMoZhXF6+taABbS77TsQBuA/fSf4zqXi9C1ohsWUYp66GsJMnzmMNVd5BVgnN
	IN9akJ5FjmRe0bU+ShYXT5qoTqUJKVo=
X-MC-Unique: 2YgOYEC_NNe8LU1xwTXHrQ-1
X-Mimecast-MFC-AGG-ID: 2YgOYEC_NNe8LU1xwTXHrQ_1773518842
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773518842; x=1774123642;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=30pXU4APMP1kolDwpbRzYIh4R3KqT+S4obXkqfexdlU=;
        b=UKpj26OOm7Xa0KtAp1o0U05w9xc5ihIEqsGzWaaU8r2ywYPJKZcrpNWbeBq6m2jyzB
         zEJhKp7UmxvOqty/fXohjmiEPLwg17Xo2F/KiMNqQmSrdcF0ZMm/rBqVeBuEmpdlWZui
         NIt6oR9V/7F78yBvTXBNzjaRqTAzIy6802IcoU2vFoQLTjcrApduW3chUG+uCi92Vpxn
         jcu2D+vm8DYjYm2qsLUCDUZxZXM7pXf/2ZeGgG7yHPag75l+h55yPN3Od0Wm0lNNFalN
         mfRs8HTWjY2kH56tj5OJP8Nga+U23IxtBljXmFkF4d8pFbSA1dFDdmfukMOwYmI/aY/8
         Fl1Q==
X-Gm-Message-State: AOJu0YytcJkZ+GjC0/y82Ea2LlXV55scFYSal2GIy8Xya8zHfiNcRmUl
	RITOzoQZa0s23M4r3jBaVfSU+A0vK3sIHmbku1UEMmGU4tDSFhYnjhKTSR6KBgnWRIykDDsLXLS
	QPSCUgT4TwCs5Lw12P2utu43N8AiOFDluL1si2iZ7PsJvA/csOmYugsgOf2H2tO+GXbgkuwZd6J
	PKCPlFRPMM9bv6wOAFXtzwJAArE+lniMbaNt0RTPxKv1KnlgGz25DJJ/Q=
X-Gm-Gg: ATEYQzwdNmVR9LDILOsg8mJPtVpSVuPpNUvrD3NeuDCBnGO/HpYh7IkJZ0cPNOtLw8p
	vClpQlwtH47tiy8BxlGv9jlG1ojcg0u/sDrwWDb0hWwpWO+v+tl4p0zddTWw+iaiWClQEbUrdRg
	GkR3ZHMyGbQc4AJ1jZFJaFYqjiwCJqjoP4+PwNd8lmmLW5gLh98P/Zg2Jla/AdZ56LAr1WG7Dok
	EI=
X-Received: by 2002:a2e:86d9:0:b0:38a:45e7:17df with SMTP id 38308e7fff4ca-38a8966bf9cmr21682921fa.1.1773518841632;
        Sat, 14 Mar 2026 13:07:21 -0700 (PDT)
X-Received: by 2002:a2e:86d9:0:b0:38a:45e7:17df with SMTP id
 38308e7fff4ca-38a8966bf9cmr21682861fa.1.1773518841115; Sat, 14 Mar 2026
 13:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com> <20260314194919.GA4600@openwall.com>
In-Reply-To: <20260314194919.GA4600@openwall.com>
From: Dmitry Belyavskiy <dbelyavs@redhat.com>
Date: Sat, 14 Mar 2026 21:07:10 +0100
X-Gm-Features: AaiRm533Qk8qaoQUG8CZ_YmeoRDZjz1KJDfSEJhTfnQQIr_F0TdW5xSUX5fkHEY
Message-ID: <CAOcQRVXj3Oky8tSG_rRJ1LNGsz5vL+dKg-c3Qz3gwNYf+XVAXw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Gn7KH-pNJBoGtXxyXf1IlcGTaxNdC29IjjPxA57bJlQ_1773518842
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000871086064d018873"
Subject: Re: [oss-security] OpenSSH GSSAPI keyex patch issue

--000000000000871086064d018873
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Alexander,

Thanks for notifying!
Yes, GSSAPIKeyExchange should be mentioned instead of GSSAPIAuthentication.

On Sat, Mar 14, 2026 at 8:50=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> On Thu, Mar 12, 2026 at 02:03:23PM -0400, Marc Deslauriers wrote:
> > Jeremy Brown discovered a security issue in the GSSAPI Key Exchange
> patch a
> > lot of distros carry on top of the OpenSSH package.
>
> I'm Bcc'ing Jeremy on this.  Thank you for discovering and reporting
> the issue, Jeremy!
>
> > Unfortunately, there seems to be quite a few different versions of this
> > patch being used, but a lot of them share the same core issue. Different
> > compiler options also result in different outcomes, so the severity of
> this
> > issue varies.
> >
> > We have assigned CVE-2026-3497 to this issue.
> >
> > Attached is the full pdf from the reporter, along with the patch we used
> in
> > Ubuntu. I suggest reading the full pdf, but I have extracted some of the
> > most important excerpts from it:
> >
> > "The patch contains a code defect where sshpkt_disconnect() (a
> > non-terminating function that queues a disconnect message and returns)
> is
> > used where ssh_packet_disconnect()(which terminates the process) was
> > intended. This causes the default: error-handling case in the GSSAPI KEX
> > server loop to fall through into code that reads an uninitialized stack
> > variable (recv_tok), sends its contents to the privileged monitor
> process
> > via IPC, and then passes it to gss_release_buffer() which may call
> free()
> > on a garbage pointer."
> >
> > "Bug: Non-terminating error handler (sshpkt_disconnect) in GSSAPI KEX
> server
> > code allows fallthrough to uninitialized variable use
> >
> > - Impact: Pre-auth uninitialized pointer dereference (CWE-824, CWE-908);
> > confirmed heap corruption via free() on uninitialized pointer (SIGABRT
> on
> > x86_64); privsep boundary violation (up to 127KB of heap data to root
> > monitor via IPC); SIGSEGV (signal 11) and SIGABRT (signal 6) on x86_64
> with
> > 90-second SSH lockout; 100% reliable child process crash
> >
> > - Trigger: Single crafted SSH packet (~300 bytes), no authentication or
> > credentials needed
> >
> > - Potentially Affected: Ubuntu/Debian OpenSSH servers with
> GSSAPIKeyExchange
> > yes
>
> Red Hat has now acknowledged that RHEL 8, 9, 10 are also affected (but 6
> and 7 are not):
>
> https://access.redhat.com/security/cve/cve-2026-3497
>
> They suggest setting "GSSAPIAuthentication no" to mitigate this, which I
> find puzzling.  Per the brief discussion we had on the distros list
> pre-disclosure, it appeared that GSSAPIKeyExchange is the option, and
> moreover it was said that GSSAPIKeyExchange could conceivably be used
> without GSSAPIAuthentication.  So which of these two options is/are
> actually responsible for exposing the vulnerability?  Does it maybe vary
> by patch revision (Debian vs. Red Hat) or (more likely?) is this just an
> error in the current Red Hat statement?
>
> Also, the statement is worded such that it's implied the default
> configuration is affected and the mitigation needs to be applied, but
> prior understanding was that these features are disabled by default.
>
> > - Potential Fix: Replace sshpkt_disconnect() with
> ssh_packet_disconnect()
> > at the 3 server-side call sites in kexgsss.c"
> >
> > "The uninitialized recv_tok contains different stack residue depending
> on
> > compiler, optimization level, and flags."
> >
> > "Different compilers produce fundamentally different residue. Clang -O0
> > leaves 0xfffbe600 with length 4. GCC -O2 -fno-stack-protector leaves a
> > valid heap address with length 127344. The 8-build matrix shows that
> > recv_tok.value ranges from NULL to stack addresses to heap addresses to
> > unmapped addresses."
>
> Thank you for bringing this to oss-security, Marc!
>
> Alexander
>
>

--=20
Dmitry Belyavskiy

--000000000000871086064d018873--

