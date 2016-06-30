X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Thursday" "30" "June" "2016" "21:58:13" "+0800" "=?utf-8?B?TWFyY2VsIELDtmhtZQ==?=" "boehme.marcel@gmail.com" "<8F926CD5-3628-4E1D-89B7-CAA0F98D63DE@gmail.com>" "23" "[oss-security] Re: CVE Request: No demangling of untrusted binaries (2)" nil nil nil "6" "2016063013:58:13" "[oss-security] Re: CVE Request: No demangling of untrusted binaries (2)" (number mark "U       boehme.marce Jun 30   23/891   " thread-indent "\"[oss-security] Re: CVE Request: No demangling of untrusted binaries (2)\"\n") "<20160630134439.2449D6C0AE6@smtpvmsrv1.mitre.org>" ("<20160630134439.2449D6C0AE6@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11941 invoked by uid 550); 30 Jun 2016 13:58:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11923 invoked from network); 30 Jun 2016 13:58:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Tr8KnqHvs00FDHNZb56WD6DRAWXCQ4x6kal6aRqtQFM=;
        b=0/jvzPgbHT3rP4ui0jC37eumKpDBjCYCB628X5hLAXIcv6wejuTzw6tjRIATUU2hWP
         DJ95uDKYsG8z6IL1yE1dET08QOzCObZN+D1NQq3dPCRTCIKjIAptpiPLTgSKbwE0RFsg
         0vDEhQTwBiKgDM7ysbOb+4aY0P0wd4rH5zOfR9tUqXvk7I7Fe/LzY/xfvSeup+ZOYfbw
         T6WDzP8CpM9umpLhFSaeuhYY12gjPC62cBu14TNDN/XPuhPpHGg1EEjtXc47gKujO093
         mzpAWNvdjVl4yvdaVAqbygu2rDUCa2HUu7YzsZi9YAS/6tjHbD4Rd94CCgnjQsJoiz8S
         NCxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Tr8KnqHvs00FDHNZb56WD6DRAWXCQ4x6kal6aRqtQFM=;
        b=m7mVWftu5oL/jkQ91hE5G57A61VLULj2PAYfANuFkCF/GMnn2bumP5LdSFCz0kc6a2
         U+1yBo13Maj68Xi+twCIqXYnJWzsxtnqJk50SWSq6mLczd17j2f27QCFf1oOH+SXJZnX
         8EPkatpyUAcoszaPC18kJMGId0PajVJbukpPf1+giIJ79wiHUhmtfMv6/PqNJAHUzTKP
         xE11oNlBp0m9lo0vSuXWpfI1rBhOksTnBfY4m1SB6DlbrKe3+XhGR76wixK1CzzLvmWj
         BTFsvmqlgFbGIn5Ky/TNhdkr55FhHLUppwfKs7tXy7UUOvSR5DgOwhLf847+wtDYNkjw
         FdAQ==
X-Gm-Message-State: ALyK8tJTeo5ULLuijQs+6X5U/iZbq9Vmyw72G1Nb+Lk/i4IA7V+VCZLTMgOnrt8OZaAj9Q==
X-Received: by 10.66.25.133 with SMTP id c5mr21783975pag.103.1467295096603;
        Thu, 30 Jun 2016 06:58:16 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: =?utf-8?Q?Marcel_B=C3=B6hme?= <boehme.marcel@gmail.com>
In-Reply-To: <20160630134439.2449D6C0AE6@smtpvmsrv1.mitre.org>
Date: Thu, 30 Jun 2016 21:58:13 +0800
Cc: oss-security@lists.openwall.com,
 florian@eich-krohm.de,
 nickc@redhat.com,
 bschmidt@redhat.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <8F926CD5-3628-4E1D-89B7-CAA0F98D63DE@gmail.com>
References: <20160630134439.2449D6C0AE6@smtpvmsrv1.mitre.org>
To: cve-assign@mitre.org
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Re: CVE Request: No demangling of untrusted binaries (2)

Hi,

> On 30 Jun 2016, at 9:44 PM, cve-assign@mitre.org wrote:
>=20
> Use CVE-2016-6131.
>=20
> As far as we can tell, there was only one vulnerability reported here.
Yes. This was a CVE request for only one vulnerability that was reported he=
re.

> We don't understand the reference to "All vulnerabilities were found
> with" - this seems to imply more than one vulnerability. Also, we
> don't understand the parenthesized numbers such as "No demangling of
> untrusted binaries (2)" in the Subject line, and "Libiberty Demangler
> segfaults (6)" and "Fix fir PR71696 in Libiberty Demangler (6)" in the
> references.
Moreover, this was also meant as a small update on the progress of the othe=
r vulnerabilities in GNU Libiberty that have been reported and assigned CVE=
s previously (and assigning credit to the tool we used; http://seclists.org=
/oss-sec/2016/q2/238).

Thanks!
- Marcel=
