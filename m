X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1690" "Wednesday" "13" "June" "2018" "21:05:36" "+0530" "Lets Secure" "is3curi5@gmail.com" "<CAAtL=4L-Cpcsgy8AZACFwytH0BHF32Fz2vVoZgvuSPjn0ihaNg@mail.gmail.com>" "48" "[oss-security] Third Party Code Signing Vulnerability in Squirrel & Sparkle" "^Date:" nil nil "6" "2018061315:35:36" "[oss-security] Third Party Code Signing Vulnerability in Squirrel & Sparkle" (number mark "U       is3curi5@gma Jun 13   48/1690  " thread-indent "\"[oss-security] Third Party Code Signing Vulnerability in Squirrel & Sparkle\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22192 invoked by uid 550); 13 Jun 2018 15:38:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10159 invoked from network); 13 Jun 2018 15:35:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=O09NaFX89FxDIaDdmXia7LJ8piaAmPWqau2A/1SLeUM=;
        b=fUd5nv+6ETv+Y6bv7FCaaqVdRXBfsDYkVuHx7Ch4LsEXHnrdhuf4k99JYxgh5m0alc
         zHwClIjCMJM5BtLW9wA8OGTOaHwAhMMIWJlRYSESKSWCL3DTJPFNbLaHu7K9w8pxMAaY
         RNUqF8BnTZXNKQpFYM84cCpO4gF5P8BwkhPxqLvLMWoOXhruryvn6hH/PbciFGe4AqBB
         rksKoTHt9rHgz8o9BCOnR9IExGFOjJtv15AvS1LBaFePqrT77XzHLYzrRDlgIo2QSGVz
         ftkvZ5EzQZTTTSuPAGVaoe+tS4FUlM/iHCn0JVNrvT9F0T4EyOQ6zPdloAdfSOkifKus
         n6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=O09NaFX89FxDIaDdmXia7LJ8piaAmPWqau2A/1SLeUM=;
        b=do50iwPGtcfVSG5ORXVWvMfHcmdoU17TZ+KnAD2vgwSLeG04PyCAOAvhvrjIdTk3WT
         PxcBgnma/u6lbzwVrUpLRVRy+YbXTreu/6gEsuh4n0BXUFj61pobDvaaUjb6em/mCJX7
         vfFzBwUBqp0qgMAWfifs8E/HlWLfLKIKobsx619L4HhxgmIUp5PGMVKTRgt6wuQeK83Q
         gUTzt+BQe0u76NszQGsYBQFVt5pN7GZurJOvGJUrD7iDoM0ykh54BijKaV+KQAJPw48q
         rv9KleFF9qzmfA/HG3VyX0JGiwjm7AfHrZu8K62BD9mf9PLqpKyFGgJTwSK2IxpSygNw
         Ovjw==
X-Gm-Message-State: APt69E0LF9vsw52+LbUdWGrw52qnRmCGpF9vIT/8C22fFhdDnXKegxRJ
	sDR3qXtKiiNVbPMXSzhWs9F1GOrFYf/3/3Yk/X8+RA==
X-Google-Smtp-Source: ADUXVKLrf0D0wJvIe15i+LMCfyWjYp8LFFxDMsyz5JOe5KsPuS3UsySvRqhPChRPHrZOd3DGhIkEOQgJM3oS+uzhkh8=
X-Received: by 2002:ab0:1ee:: with SMTP id 101-v6mr3665971ual.200.1528904137501;
 Wed, 13 Jun 2018 08:35:37 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAAtL=4L-Cpcsgy8AZACFwytH0BHF32Fz2vVoZgvuSPjn0ihaNg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000002ef34056e87bcb6"
Date: Wed, 13 Jun 2018 21:05:36 +0530
From: Lets Secure <is3curi5@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Third Party Code Signing Vulnerability in Squirrel & Sparkle
To: oss-security@lists.openwall.com

--00000000000002ef34056e87bcb6
Content-Type: text/plain; charset="UTF-8"

Based on the recent disclosure at
https://www.okta.com/security-blog/2018/06/issues-around-third-party-apple-code-signing-checks/

The Squirrel
<https://github.com/Squirrel/Squirrel.Mac/blob/e9e2188cda3efb4bc08b1719bdef71880f9dc9b1/Squirrel/SQRLCodeSignature.m#L127>
&
Sparkle
<https://github.com/sparkle-project/Sparkle/blob/d19c98a8771e6a38766199bb96654de5d8c3efb2/Sparkle/SUCodeSigningVerifier.m#L98>
 framework also doesn't perform strict validation to check nested
architecture and revocations & validity of the signer cert and can
essentially result in bypassing the code sign validations.

*Squirrel*
SQRLCodeSignature.m#L127
result = SecStaticCodeCheckValidityWithErrors(staticCode,
kSecCSCheckAllArchitectures, (__bridge SecRequirementRef)self.requirement,
&validityError);

SecStaticCodeCheckValidityWithErros is called without flags -
kSecCSDefaultFlags
| kSecCSCheckNestedCode | kSecCSCheckAllArchitectures |
kSecCSEnforceRevocationChecks

Also, it lacks checks for chain of trust across nested binaries in Fat
file.
i.e. missing this code:
SecRequirementCreateWithString(CFSTR("anchor apple"), kSecCSDefaultFlags,
&requirementRef);

*Sparkle*
SUCodeSigningVerifier.m#L98
SecCSFlags flags = (SecCSFlags) (kSecCSDefaultFlags |
kSecCSCheckAllArchitectures);
result = SecStaticCodeCheckValidityWithErrors(staticCode, flags, NULL,
&cfError);

The flags should have been set with:
SecCSFlags flags = (SecCSFlags) (kSecCSDefaultFlags | kSecCSCheckNestedCode
| kSecCSCheckAllArchitectures | kSecCSEnforceRevocationChecks)

But, that's not the case with Sparkle.

Best Regards!

--00000000000002ef34056e87bcb6--
