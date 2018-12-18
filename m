X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1137" "Tuesday" "18" "December" "2018" "14:24:08" "-0500" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2W1ggmiuz=3x3mrDBbkp2rQKWkAQUcuObmLM=xwv1Q-fQ@mail.gmail.com>" "38" "Re: [oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing" nil nil nil "12" "2018121819:24:08" "[oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing" (number mark "U       alex.gaynor@ Dec 18   38/1137  " thread-indent "\"Re: [oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing\"\n") "<nycvar.YSQ.7.76.1812190041530.7329@xnncv>" ("<nycvar.YSQ.7.76.1812190041530.7329@xnncv>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28301 invoked by uid 550); 18 Dec 2018 19:24:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28283 invoked from network); 18 Dec 2018 19:24:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xk9nH2HsxUdYWkeUfKCZC5rb1606dP9yC1XYxuwk9lI=;
        b=kbLpplPsm2t6iP/OJl171Tis2/76FGcPl1l1bLjvlDBxHMfx2oOawlIk0SHNGZZhdN
         xbLSf5cdQ9KgghwPRWhvRM9q6SCoSiHXA8v3LiFYpDuxF6bhtiby2Yh++WxdXqYm4PfN
         xlb84h9JGcovT6dIL+5TW9hYy2VGbtEW2lE84Gae5tb570qvu4WRBBD/E+f/LtJsrtht
         EeofEj6XhC5pQC2Pezu3ksFkUQR4AxYkoehNVEsZ5r1LASp36apMqE1MGe3Tr8YbiX3L
         XcuXKCoTIfdU4rI9VbdSvtm+7JTg1Ppldet2NudsQ5FN8XHM82tEqxMYDcKw/DK+A1dd
         EcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xk9nH2HsxUdYWkeUfKCZC5rb1606dP9yC1XYxuwk9lI=;
        b=W1hR72CTftEKFCzcEJyqsT1uGQPshchmTTJOevURgxWonzyUmZbysxWu2UudbMklwB
         +6Vbm1tK4L/MPke/3I0w63JNaODAvZitsb8xErPAHhCulCACwBHb8wtyKemdbS66RfID
         EPY9XQe6BGhWrksiupOcu3zIK1Vlm6y60RGxIaX5hB8wv0f6VWsotj22ORn7JNkUe3xF
         He4lt4jgQhb/WoIA/InfwmHZdtXj7576fRBqjCSGJIwgUJWQy6Ykw9rQECRed7C/tDWj
         KQ3kdtyeUXcrxfJI3i7D1xu1NXyuMOQpzhivUpgbBP2BhXnAkuRgMIUkVswhRbYv7Ugs
         euZw==
X-Gm-Message-State: AA+aEWa0M1rs1pgeHgn1eQU4bj71Rp6AWg8bkyvCXRLwgKJTh8/a+Vnb
	ZExjP1jrIEx5credEILxRn5n0F9U+RTlBzO2qorE9Q==
X-Google-Smtp-Source: AFSGD/VWyeic9mafqMYyyu0U9EEixGWf58VmXXkcsWwV4l6Vw4mnxEef1a8K31oWCZHYH9OkX7X1fMo4VNo8jmuwqBo=
X-Received: by 2002:a19:2584:: with SMTP id l126mr10420267lfl.69.1545161060808;
 Tue, 18 Dec 2018 11:24:20 -0800 (PST)
MIME-Version: 1.0
References: <nycvar.YSQ.7.76.1812190041530.7329@xnncv>
In-Reply-To: <nycvar.YSQ.7.76.1812190041530.7329@xnncv>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Tue, 18 Dec 2018 14:24:08 -0500
Message-ID: <CAFRnB2W1ggmiuz=3x3mrDBbkp2rQKWkAQUcuObmLM=xwv1Q-fQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Cfir Cohen <cfir@google.com>
Content-Type: multipart/alternative; boundary="000000000000268032057d50d841"
Subject: Re: [oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free
 in posted interrupt processing

--000000000000268032057d50d841
Content-Type: text/plain; charset="UTF-8"

Can you say more about why this is only a DoS? The commit message sounds
(to someone with little domain expertise in KVM) like a fairly traditional
pattern for an exploitable for code exec uaf.

Cheers,
Alex

On Tue, Dec 18, 2018, 2:16 PM P J P <ppandit@redhat.com wrote:

>    Hello,
>
> A use after free issue was found in the way Linux kernel's KVM hypervisor
> processed posted interrupts, when nested(=1) virtualization is enabled. In
> nested_get_vmcs12_pages(), in case of an error while processing posted
> interrupt address, it unmaps the 'pi_desc_page' without resetting
> 'pi_desc'
> descriptor address. Which is latter used in pi_test_and_clear_on().
>
> A guest user/process could use this flaw to crash the host kernel
> resulting in
> DoS.
>
> Upstream patch:
> ---------------
>    -> https://marc.info/?l=kvm&m=154514994222809&w=2
>
> This issue was reported by Cfir Cohen of google.com.
>
> Thank you.
> --
> Prasad J Pandit / Red Hat Product Security Team
> 47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
>

--000000000000268032057d50d841--
