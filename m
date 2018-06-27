X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["831" "Tuesday" "26" "June" "2018" "21:18:39" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2U-tEMNDwXgY-_-VxA8A8anCF22YeJT_ELsGLjRUy-1xg@mail.gmail.com>" "23" "[oss-security] CVE for PyYAML RCE-factory API" "^Date:" nil nil "6" "2018062701:18:39" "[oss-security] CVE for PyYAML RCE-factory API" (number mark "        alex.gaynor@ Jun 26   23/831   " thread-indent "\"[oss-security] CVE for PyYAML RCE-factory API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3115 invoked by uid 550); 27 Jun 2018 01:19:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3075 invoked from network); 27 Jun 2018 01:19:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pUfjWVgj9DUaHx8r0T8H14ofwBgInk5VAEPFPrvpllk=;
        b=tWaOum8OAZHQO4VVhy9RjZPFjQliu4VWrn5cI3P9+WOk8F8LtLYZ2qMfERyzxRDXgK
         TN+NrIKBaSmD+yD2q80d5EKNuknRq+OyMgaNdFryq51Jz8BqikXyYRuzLGh4e1xawaet
         lVv87VnBC8Yui1NdRehCM8Fgevd92HuyoV0q1NNhDHdvD2xXeLm95uoXjf4FlCRgTKKM
         a23IFKJ2bhiueezubD3bFjYfrUPHQMnuvpsriOS301RkyiF9wS3hTRVLI2EiNl5CdjPZ
         UZpKIoYqa3fOSynU4TLlhprdRfLiAVK396xH8ciFVxHcJzqr2FrKD75qbKDjPD8pAnvb
         DTWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pUfjWVgj9DUaHx8r0T8H14ofwBgInk5VAEPFPrvpllk=;
        b=Umu8Hkik80467ZtUjeBqs7v++QoPO57t+TRIJYS1Zsn94w1EEXLrG45L5Q8/bcKn7U
         WtoEwrfD2Oq9nIAJFDS9S9n9fE/81t7ScJs/iI9WIhY+s3tKZXPNvpSk0OWOVeV3Nxt8
         J5QTyLqxvUnB/sAmsJ7Fs/ZnSnC3rgneMjkRh2ZdRakm3edE1fLR4xL8Sf0PTh6x3EQu
         DR/nWCbDa05CRySnp2IhntcMw5GEEORiV9gVrnEuZQ0iKAgo6d8AEiw8qhHDVrNZcoIJ
         4Vmmq8w/HU4e5gXWlgt1io7DOm2QEKmxO4enuvNAkF9e/uEPNeOksuIMhcv1Q3xP8i/e
         1s5w==
X-Gm-Message-State: APt69E0EYzuFdm+xPtgPM5INWV1b98Q8a9Pr1P7LArN26mpLuOmwyfF5
	/N7qQppc1hD3iNnTwOFSNrg5n/+4fvnRpk7lTWfiRw==
X-Google-Smtp-Source: ADUXVKJE4OBi6k9bG12jArUqeLR2I6DVx0752q8KxYOFFIQOP+Ek9g/csGtam+vgJalcxO7UTSRQB7aPqcDfzZwugLs=
X-Received: by 2002:a2e:994f:: with SMTP id r15-v6mr2477571ljj.53.1530062331101;
 Tue, 26 Jun 2018 18:18:51 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAFRnB2U-tEMNDwXgY-_-VxA8A8anCF22YeJT_ELsGLjRUy-1xg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000bac6cc056f95655c"
Date: Tue, 26 Jun 2018 21:18:39 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE for PyYAML RCE-factory API
To: oss-security@lists.openwall.com

--000000000000bac6cc056f95655c
Content-Type: text/plain; charset="UTF-8"

In releases of PyYAML < 4.1 using the `yaml.load()` API on untrusted input
could lead to arbitrary code execution. Instead, users were advised to use
the `yaml.safe_load()` API.

Starting with the PyYAML 4.1 release, the `yaml.load()` API has been made
safe-by-default. Users wishing to opt into the old behavior and produce
RCEs (or who trust their input) can use the `yaml.danger_load`.

Because of the degree to which this API presented a footgun, I would like
to request a CVE for it.

Alex

-- 
"I disapprove of what you say, but I will defend to the death your right to
say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
"The people's good is the highest law." -- Cicero
GPG Key fingerprint: D1B3 ADC0 E023 8CA6

--000000000000bac6cc056f95655c--
